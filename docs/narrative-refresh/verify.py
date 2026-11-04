#!/usr/bin/env python3
"""Check the narrative refresh against its recorded baseline.

Requires the existing Ruby Kramdown/GFM gems used by Jekyll. Optionally pass
--site PATH to the IGPublisher HTML directory for rendered link verification.
This is an editorial check, not FHIR or clinical validation.
"""
from __future__ import annotations

import argparse
from collections import Counter
import hashlib
from html.parser import HTMLParser
import importlib.util
import json
from pathlib import Path
import re
import subprocess
import sys
from urllib.parse import unquote, urlsplit
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[2]
PAGES = ROOT / "input/pagecontent"


class Document(HTMLParser):
    def __init__(self, content: str):
        super().__init__(convert_charrefs=True)
        self.ids: list[str] = []
        self.links: list[str] = []
        self.images: list[dict] = []
        self.feed(content)

    def handle_starttag(self, tag, attributes):
        attrs = dict(attributes)
        if attrs.get("id"):
            self.ids.append(attrs["id"])
        if tag == "a" and attrs.get("name"):
            self.ids.append(attrs["name"])
        if tag == "a" and attrs.get("href"):
            self.links.append(attrs["href"])
        if tag == "img":
            self.images.append(attrs)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--site", type=Path)
    args = parser.parse_args()
    manifest = json.loads((Path(__file__).parent / "protected-files.json").read_text())
    errors = []
    for filename, expected in manifest["files"].items():
        path = ROOT / filename
        if not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != expected:
            errors.append(f"Protected file changed: {filename}")
    old = {}
    new = {}
    expected_pages = set(json.loads((Path(__file__).parent / "original-anchors.json").read_text()))
    if {path.name for path in PAGES.glob("*.md")} != expected_pages:
        errors.append("Narrative page inventory changed")
    for path in sorted(PAGES.glob("*.md")):
        relative = str(path.relative_to(ROOT))
        old[path.name] = subprocess.check_output(
            ["git", "show", f'{manifest["base_commit"]}:{relative}'], cwd=ROOT, text=True)
        new[path.name] = path.read_text()
        include_pattern = r"\{%\s*(?:include|highlight|endhighlight)\b.*?%\}"
        before = Counter(re.findall(include_pattern, old[path.name]))
        after = Counter(re.findall(include_pattern, new[path.name]))
        if before != after:
            errors.append(f"Include/highlight directives changed: {path.name}")
        def normative_counts(source):
            active = re.sub(r"<!--.*?-->", "", source, flags=re.S)
            return Counter(re.findall(r"\b(?:SHALL|SHOULD|MAY|MUST|REQUIRED)\b", active))
        if normative_counts(old[path.name]) != normative_counts(new[path.name]):
            errors.append(f"Active normative verb counts changed: {path.name}")
    if new["changes.md"] != old["changes.md"]:
        errors.append("Historical version log changed")
    for level in ("L2", "L3", "L4"):
        filename = f"clinical-guidelines-development-{level}-checklist.md"
        rows = lambda source: [line for line in source.splitlines() if line.startswith("|")]
        if rows(old[filename]) != rows(new[filename]):
            errors.append(f"Checklist rows changed: {filename}")

    ruby = r'''
require 'json'; require 'kramdown'; require 'kramdown-parser-gfm'
data=JSON.parse(STDIN.read); result={}
data.each do |side,pages|
  result[side]={}
  pages.each do |name,source|
    source=source.gsub(/<!--.*?-->/m,'').gsub(/\{%.*?%\}/m,'')
    result[side][name]=Kramdown::Document.new(source,input:'GFM',auto_ids:true).to_html
  end
end
STDOUT.write(JSON.generate(result))
'''
    rendered = json.loads(subprocess.check_output(
        ["ruby", "-e", ruby], input=json.dumps({"old": old, "new": new}), text=True))
    old_docs = {n: Document(t) for n, t in rendered["old"].items()}
    docs = {n: Document(t) for n, t in rendered["new"].items()}
    images = set()
    for name, doc in docs.items():
        if re.search(r'<p\b[^>]*>\s*<img\b[^>]*\bsrc="cpg-', rendered["new"][name]):
            errors.append(f"Diagram subject to the template's paragraph-image float: {name}")
        missing = set(old_docs[name].ids) - set(doc.ids)
        if missing:
            errors.append(f"Old anchors missing in {name}: {sorted(missing)}")
        duplicates = [i for i, count in Counter(doc.ids).items() if count > 1]
        if duplicates:
            errors.append(f"Duplicate anchors in {name}: {duplicates}")
        for link in doc.links:
            parts = urlsplit(link)
            if parts.scheme or parts.netloc:
                continue
            target = Path(unquote(parts.path)).name
            target = target.removesuffix(".html") + ".md" if target else name
            if target in docs and parts.fragment and unquote(parts.fragment) not in docs[target].ids:
                errors.append(f"Narrative fragment missing: {name} -> {link}")
        for img in doc.images:
            src = img.get("src", "")
            images.add(src)
            if not img.get("alt", "").strip():
                errors.append(f"Missing figure alt text in {name}: {src}")
            if not src.endswith(".svg") or not (ROOT / "input/images" / src).is_file():
                errors.append(f"Missing or legacy narrative figure in {name}: {src}")

    # Verify that checked-in SVGs are reproducible from their editable source.
    sys.dont_write_bytecode = True
    spec = importlib.util.spec_from_file_location("diagram_renderer", ROOT / "diagrams/render_narrative.py")
    renderer = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(renderer)
    for source in sorted((ROOT / "diagrams/narrative").glob("*.json")):
        diagram = json.loads(source.read_text())
        target = ROOT / "input/images" / (source.stem + ".svg")
        if not target.is_file() or target.read_text() != renderer.render(diagram):
            errors.append(f"SVG differs from source: {source.name}")
        else:
            svg = ET.fromstring(target.read_text())
            ns = {"s": "http://www.w3.org/2000/svg"}
            if svg.find("s:title", ns) is None or svg.find("s:desc", ns) is None:
                errors.append(f"SVG accessibility text missing: {target.name}")

    if args.site:
        site = args.site.resolve()
        cache = {}
        for name in docs:
            file = site / name.replace(".md", ".html")
            if not file.is_file():
                errors.append(f"Rendered narrative page missing: {file.name}")
                continue
            doc = Document(file.read_text())
            for link in doc.links + [i.get("src", "") for i in doc.images]:
                parts = urlsplit(link)
                if not link or parts.scheme or parts.netloc or parts.path.startswith("/"):
                    continue
                target = (file.parent / unquote(parts.path)).resolve() if parts.path else file
                if not target.exists():
                    errors.append(f"Rendered target missing: {name} -> {link}")
                elif parts.fragment and target.suffix == ".html":
                    if target not in cache:
                        cache[target] = set(Document(target.read_text()).ids)
                    if unquote(parts.fragment) not in cache[target]:
                        errors.append(f"Rendered anchor missing: {name} -> {link}")

    result = {"base_commit": manifest["base_commit"], "protected_files": len(manifest["files"]),
              "pages": len(docs), "unique_narrative_diagrams": len(images),
              "words_before": sum(len(t.split()) for t in old.values()),
              "words_after": sum(len(t.split()) for t in new.values()), "errors": errors}
    print(json.dumps(result, indent=2))
    raise SystemExit(bool(errors))


if __name__ == "__main__":
    main()
