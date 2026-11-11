#!/usr/bin/env python3
"""Verify narrative migration and editable figures against the STU3 ballot.

Source checks use Ruby Kramdown/GFM. Pass --site for Publisher output checks
and --baseline-site for exact published anchors and baseline link comparison.
Both site paths should point to the Publisher's en/ directory.
"""
from __future__ import annotations

import argparse
from collections import Counter
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
REDIRECTS = ROOT / "input/redirects"
BASELINE = "e2fb41324f63f4af4b687121f7ead14cf5a1c1a0"
FORMAL_BASELINE = "8aa133d52040056859c6f29786ff8d300956f679"
FORMAL_PATHS = (
    "input/fsh", "input/cql", "input/data", "input/examples", "_unused-fsh",
    "input/includes/process-patterns", "FHIR-cpg.xml", "oids.ini", "publication-request.json",
    "fsh.ini", "ig.ini",
    "input/pagecontent/clinical-guidelines-development-L1-checklist.md",
)
REQUIREMENT = re.compile(r"§{1,2}([\w-]+)\??\^\^")


class Document(HTMLParser):
    def __init__(self, content: str):
        super().__init__(convert_charrefs=True)
        self.ids = Counter()
        self.generated_ids = set()
        self.links = []
        self.named_links = {}
        self.fragment_redirects = {}
        self.images = []
        self.scripts = []
        self.feed(content)

    def handle_starttag(self, tag, attributes):
        attrs = dict(attributes)
        anchor = attrs.get("id")
        if anchor:
            self.ids[anchor] += 1
            if attrs.get("data-fhir") or (tag == "span" and re.fullmatch(r"ips2?_\d+", anchor)):
                self.generated_ids.add(anchor)
        if tag == "a":
            name = attrs.get("name")
            if name and name != anchor:
                self.ids[name] += 1
                if re.fullmatch(r"l\d+", name):
                    self.generated_ids.add(name)
            if attrs.get("href"):
                self.links.append(attrs["href"])
                if anchor:
                    self.named_links[anchor] = attrs["href"]
            if anchor and attrs.get("data-redirect"):
                self.fragment_redirects[anchor] = attrs["data-redirect"]
                self.links.append(attrs["data-redirect"])
        if tag == "img":
            self.images.append(attrs)
        if tag == "script" and attrs.get("src"):
            self.scripts.append(attrs["src"])


def git(*args: str) -> str:
    return subprocess.check_output(["git", *args], cwd=ROOT, text=True)


def render_markdown(pages: dict[str, str]) -> dict[str, str]:
    ruby = r'''
require 'json'; require 'kramdown'; require 'kramdown-parser-gfm'
data=JSON.parse(STDIN.read).transform_values do |source|
  source=source.gsub(/<!--.*?-->/m,'').gsub(/\{%.*?%\}/m,'')
  Kramdown::Document.new(source,input:'GFM',auto_ids:true).to_html
end
STDOUT.write(JSON.generate(data))
'''
    return json.loads(subprocess.check_output(
        ["ruby", "-e", ruby], input=json.dumps(pages), text=True))


def section_ids(doc: Document) -> set[str]:
    return {anchor for anchor in doc.ids.keys() - doc.generated_ids
            if anchor not in {"segment-content", "publish-box", "markdown-toc", "bottom"}
            and not anchor.startswith("markdown-toc-")}


def check_legacy(old: dict, new: dict) -> set[str]:
    errors = set()
    for name, doc in old.items():
        if name not in new:
            errors.add(f"Legacy narrative page missing: {name}")
        else:
            for anchor in section_ids(doc) - section_ids(new[name]):
                errors.add(f"Legacy narrative anchor missing: {name}#{anchor}")
    return errors


def relative_reference(link: str):
    parts = urlsplit(link)
    if parts.scheme or parts.netloc or parts.path.startswith("/"):
        return None
    return unquote(parts.path), unquote(parts.fragment).split(":~:", 1)[0]


def source_issues(docs: dict, redirects: set[str], requirements: dict[str, list[str]]) -> set[str]:
    issues = set()
    for name, doc in docs.items():
        for anchor, count in doc.ids.items():
            if count > 1:
                issues.add(f"Duplicate source anchor: {name}#{anchor}")
        for link in doc.links:
            ref = relative_reference(link)
            if ref is None:
                continue
            path, anchor = ref
            target = path or name
            if (target in docs and anchor
                    and anchor not in docs[target].ids and anchor not in requirements.get(target, [])):
                issues.add(f"Narrative fragment missing: {name} -> {link}")
        for img in doc.images:
            src = img.get("src", "")
            if not img.get("alt", "").strip():
                issues.add(f"Missing figure alt text: {name} -> {src}")
        if name in redirects:
            if "approach-redirect" not in doc.named_links:
                issues.add(f"Redirect fallback missing: {name}")
            if "approach-redirect.js" not in doc.scripts or not (REDIRECTS / "approach-redirect.js").is_file():
                issues.add(f"Redirect script missing: {name}")
            for link in doc.named_links.values():
                ref = relative_reference(link)
                if ref is None or ref[0] not in docs or ref[0] in redirects:
                    issues.add(f"Redirect must target a current narrative page: {name} -> {link}")
    return issues


def narrative_content(html: str) -> str:
    # Publisher adds template navigation and TOC IDs around the narrative.
    content = re.search(r'<div\b[^>]*\bid="segment-content"', html)
    footer = re.search(r'<div\b[^>]*\bid="segment-footer"', html)
    return html[content.start() if content else 0:footer.start() if footer else len(html)]


def check_site(site: Path, names: set[str]) -> tuple[dict, set[str], set[str]]:
    docs, missing, issues = {}, set(), set()
    anchor_cache = {}
    for name in sorted(names):
        file = site / name
        if not file.is_file():
            missing.add(f"Rendered narrative page missing: {name}")
            continue
        doc = Document(narrative_content(file.read_text()))
        docs[name] = doc
        for anchor in section_ids(doc):
            if doc.ids[anchor] > 1:
                issues.add(f"Duplicate rendered anchor: {name}#{anchor}")
        links = doc.links + doc.scripts + [img.get("src", "") for img in doc.images]
        for link in links:
            ref = relative_reference(link)
            if not link or ref is None:
                continue
            path, anchor = ref
            target = (file.parent / path).resolve() if path else file
            if not target.exists():
                issues.add(f"Rendered target missing: {name} -> {link}")
                continue
            if target.is_dir() and (target / "index.html").is_file():
                target = target / "index.html"
            if anchor and target.suffix == ".html":
                if target not in anchor_cache:
                    anchor_cache[target] = Document(target.read_text()).ids
                if anchor not in anchor_cache[target]:
                    issues.add(f"Rendered anchor missing: {name} -> {link}")
    return docs, missing, issues


def check_diagrams() -> set[str]:
    errors = set()
    sys.dont_write_bytecode = True
    spec = importlib.util.spec_from_file_location("diagram_renderer", ROOT / "diagrams/render_narrative.py")
    renderer = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(renderer)
    for source in sorted((ROOT / "diagrams/narrative").glob("*.json")):
        diagram = json.loads(source.read_text())
        target = ROOT / "input/images" / (source.stem + ".svg")
        expected = renderer.native_svg(source, diagram) if "svgSource" in diagram else renderer.render(diagram)
        if not target.is_file() or target.read_text() != expected:
            errors.add(f"SVG differs from source: {source.name}")
        else:
            svg = ET.fromstring(target.read_text())
            ns = {"s": "http://www.w3.org/2000/svg"}
            if svg.find("s:title", ns) is None or svg.find("s:desc", ns) is None:
                errors.add(f"SVG accessibility text missing: {target.name}")
    return errors


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--baseline-commit", help="Compare with a different narrative and formal baseline")
    parser.add_argument("--formal-baseline-commit", help="Compare protected formal resources with a separate commit")
    parser.add_argument("--site", type=Path)
    parser.add_argument("--baseline-site", type=Path)
    args = parser.parse_args()
    if args.baseline_site and not args.site:
        parser.error("--baseline-site requires --site")
    for site in (args.site, args.baseline_site):
        if site and not site.is_dir():
            parser.error(f"Publisher site directory does not exist: {site}")

    def resolve_commit(ref):
        try:
            return git("rev-parse", "--verify", f"{ref}^{{commit}}").strip()
        except subprocess.CalledProcessError:
            parser.error(f"Baseline commit is unavailable locally: {ref}")

    baseline = resolve_commit(args.baseline_commit or BASELINE)
    formal_baseline = resolve_commit(args.formal_baseline_commit or args.baseline_commit or FORMAL_BASELINE)
    old = {Path(path).with_suffix(".html").name: git("show", f"{baseline}:{path}")
           for path in git("ls-tree", "-r", "--name-only", baseline, "--", "input/pagecontent").splitlines()
           if Path(path).suffix == ".md"}
    new = {path.with_suffix(".html").name: path.read_text() for path in sorted(PAGES.glob("*.md"))}
    redirects = {path.name: path.read_text() for path in sorted(REDIRECTS.glob("*.html"))}
    errors = {f"Redirect overlaps current narrative: {name}" for name in new.keys() & redirects.keys()}

    changed = git("diff", "--no-ext-diff", "--name-only", formal_baseline, "--", *FORMAL_PATHS).splitlines()
    untracked = git("ls-files", "--others", "--exclude-standard", "--", *FORMAL_PATHS).splitlines()
    errors.update(f"Protected formal file differs: {name}" for name in changed + untracked)

    old_by_page = {name: REQUIREMENT.findall(re.sub(r"<!--.*?-->", "", source, flags=re.S))
                   for name, source in old.items()}
    new_by_page = {name: REQUIREMENT.findall(re.sub(r"<!--.*?-->", "", source, flags=re.S))
                   for name, source in new.items()}
    old_requirements = Counter(anchor for anchors in old_by_page.values() for anchor in anchors)
    requirements = Counter(anchor for anchors in new_by_page.values() for anchor in anchors)
    errors.update(f"Ballot requirement missing: {anchor}" for anchor in old_requirements.keys() - requirements.keys())
    errors.update(f"Duplicate requirement ID: {anchor}" for anchor, count in requirements.items() if count > 1)

    old_docs = {name: Document(html) for name, html in render_markdown(old).items()}
    rendered = render_markdown(new)
    new_docs = {name: Document(html) for name, html in (rendered | redirects).items()}
    baseline_issues = source_issues(old_docs, set(), old_by_page)
    issues = source_issues(new_docs, set(redirects), new_by_page)
    errors.update(issues - baseline_issues)
    for name, html in rendered.items():
        if re.search(r'<p\b[^>]*>\s*<img\b[^>]*\bsrc="cpg-', html):
            errors.add(f"Diagram subject to the template's paragraph-image float: {name}")
        for img in new_docs[name].images:
            src = img.get("src", "")
            ref = relative_reference(src)
            if ref is not None and not (ROOT / "input/images" / ref[0]).is_file():
                errors.add(f"Narrative figure missing: {name} -> {src}")
    errors.update(check_diagrams())

    if args.site:
        rendered_docs, missing, rendered_issues = check_site(args.site.resolve(), set(new_docs) | set(old_docs))
        errors.update(missing)
        for name in redirects.keys() & rendered_docs.keys():
            for anchor, target in new_docs[name].named_links.items():
                if rendered_docs[name].named_links.get(anchor) != target:
                    errors.add(f"Rendered redirect differs from source: {name}#{anchor} -> {target}")
        for name, doc in rendered_docs.items():
            if name in new_docs and doc.fragment_redirects != new_docs[name].fragment_redirects:
                errors.add(f"Rendered fragment redirects differ from source: {name}")
            for anchor in new_by_page.get(name, []):
                if anchor not in doc.ids and f"{anchor}?" not in doc.ids:
                    errors.add(f"Publisher did not render ballot requirement: {name}#{anchor}")
        if args.baseline_site:
            rendered_old, baseline_missing, rendered_baseline_issues = check_site(args.baseline_site.resolve(), set(old_docs))
            errors.update(f"Baseline check incomplete: {issue}" for issue in baseline_missing)
            errors.update(check_legacy(rendered_old, rendered_docs))
            baseline_issues.update(rendered_baseline_issues)
        issues.update(rendered_issues)
        errors.update(rendered_issues - baseline_issues)
    if not args.baseline_site:
        errors.update(check_legacy(old_docs, new_docs))

    result = {
        "base_commit": baseline,
        "formal_base_commit": formal_baseline,
        "ballot_requirements": len(old_requirements),
        "narrative_pages": len(new),
        "legacy_redirects": len(redirects),
        "baseline_only_issues": sorted(baseline_issues - issues),
        "retained_baseline_issues": sorted(baseline_issues & issues),
        "errors": sorted(errors),
    }
    print(json.dumps(result, indent=2))
    raise SystemExit(bool(errors))


if __name__ == "__main__":
    main()
