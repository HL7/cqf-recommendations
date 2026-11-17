#!/usr/bin/env python3
"""Check artifact-guidance narrative coverage against its frozen inventory."""

from __future__ import annotations

import argparse
import hashlib
import html.parser
import json
import re
import subprocess
import sys
from pathlib import Path
from urllib.parse import unquote, urlsplit


FRAGMENT_SUFFIXES = ("-intro.md", "-notes.md")
NORMATIVE = re.compile(r"\b(?:SHALL(?:\s+NOT)?|MUST(?:\s+NOT)?|SHOULD(?:\s+NOT)?|REQUIRED|MAY)\b")


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


class LinksAndAnchors(html.parser.HTMLParser):
    def __init__(self) -> None:
        super().__init__(convert_charrefs=True)
        self.links: list[str] = []
        self.anchors: set[str] = set()
        self.anchor_tags: dict[str, set[str]] = {}
        self.heading_depth = 0
        self.heading_count = 0
        self.all_text: list[str] = []
        self.text_without_headings: list[str] = []
        self.heading_texts: list[str] = []
        self._current_heading: list[str] | None = None

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        if re.fullmatch(r"h[1-6]", tag):
            self.heading_depth += 1
            self.heading_count += 1
            self._current_heading = []
        values = dict(attrs)
        if values.get("href"):
            self.links.append(values["href"] or "")
        if values.get("id"):
            anchor = values["id"] or ""
            self.anchors.add(anchor)
            self.anchor_tags.setdefault(anchor, set()).add(tag)
        if tag == "a" and values.get("name"):
            anchor = values["name"] or ""
            self.anchors.add(anchor)
            self.anchor_tags.setdefault(anchor, set()).add(tag)

    def handle_endtag(self, tag: str) -> None:
        if re.fullmatch(r"h[1-6]", tag):
            if self._current_heading is not None:
                self.heading_texts.append("".join(self._current_heading))
                self._current_heading = None
            self.heading_depth = max(0, self.heading_depth - 1)

    def handle_data(self, data: str) -> None:
        self.all_text.append(data)
        if self._current_heading is not None:
            self._current_heading.append(data)
        if self.heading_depth == 0:
            self.text_without_headings.append(data)


def render_markdowns(texts: list[str]) -> list[str]:
    script = (
        'require "json"; require "kramdown"; require "kramdown-parser-gfm"; '
        'texts = JSON.parse(STDIN.read); '
        'options = {input: "GFM", smart_quotes: ["apos", "apos", "quot", "quot"], '
        'typographic_symbols: {"laquo" => "<<", "raquo" => ">>"}}; '
        'puts JSON.generate(texts.map { |text| Kramdown::Document.new(text, options).to_html })'
    )
    result = subprocess.run(["ruby", "-e", script], input=json.dumps(texts), text=True, capture_output=True)
    if result.returncode:
        raise RuntimeError(f"Ruby Kramdown render failed: {result.stderr.strip()}")
    return json.loads(result.stdout)


def normalized(text: str) -> str:
    return re.sub(r"\s+", " ", text).strip()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", type=Path, default=Path(__file__).resolve().parents[2], help="repository root (defaults from this script location)")
    parser.add_argument("--candidate-root", type=Path, required=True, help="frozen build candidate root containing template/")
    parser.add_argument("--site", type=Path, help="optional generated site directory containing built HTML pages")
    parser.add_argument("--require-injected", action="store_true", help="with --site, prove each intro and notes fragment appears in its built target page")
    args = parser.parse_args()
    repo = args.repo.resolve()
    candidate = args.candidate_root.resolve()
    site = args.site.resolve() if args.site else None
    if args.require_injected and not site:
        parser.error("--require-injected requires --site")
    inventory_path = repo / "docs/artifact-guidance/inventory.json"
    inventory = json.loads(inventory_path.read_text())
    failures: list[str] = []
    warnings: list[str] = []

    entries = inventory["resources"]
    expected_counts = inventory["inventory_scope"]
    profile_entries = [item for item in entries if item["kind"] == "profile"]
    operation_entries = [item for item in entries if item["kind"] == "operation"]
    got_categories = {name: sum(item["category"] == name for item in profile_entries) for name in ("artifact", "domain", "activity")}
    category_counts = {**got_categories, "total": len(profile_entries)}
    if category_counts != expected_counts["profiles"]:
        failures.append(f"profile inventory counts mismatch: {got_categories}, expected {expected_counts['profiles']}")
    if len(operation_entries) != expected_counts["operation_definitions"]:
        failures.append(f"operation count mismatch: {len(operation_entries)}")
    if len(entries) != expected_counts["included_artifacts"]:
        failures.append(f"included artifact count mismatch: {len(entries)}")
    usage_ids = [item["usage_id"] for item in entries]
    if len(set(usage_ids)) != len(usage_ids):
        failures.append("artifact usage_id values are not unique")

    # Confirm the inventory did not detach a page mapping from its FSH source.
    for item in entries:
        source = repo / item["source"]
        if not source.is_file():
            failures.append(f"missing artifact FSH source: {source}")
            continue
        source_text = source.read_text(encoding="utf-8")
        if digest(source) != item["source_sha256"]:
            failures.append(f"artifact source hash mismatch: {source}")
        if item["kind"] == "profile":
            name_match = re.search(r"^Profile:\s*(\S+)", source_text, re.M)
            id_match = re.search(r"^Id:\s*(\S+)", source_text, re.M)
            if not name_match or name_match.group(1) != item["fsh_declaration"]:
                failures.append(f"Profile declaration mismatch: {source}")
            if not id_match or id_match.group(1) != item["fsh_id"]:
                failures.append(f"case-sensitive FSH Id mismatch: {source}")
        else:
            instance_match = re.search(r"^Instance:\s*(\S+)", source_text, re.M)
            type_match = re.search(r"^InstanceOf:\s*(\S+)", source_text, re.M)
            if not instance_match or instance_match.group(1) != item["instance_id"]:
                failures.append(f"case-sensitive Instance id mismatch: {source}")
            if not type_match or type_match.group(1) != item["instance_of"]:
                failures.append(f"InstanceOf mismatch: {source}")

    # Enforce the earlier narrative guard without editing it. Only the 174
    # specifically inventoried fragment paths are exempt from that baseline.
    historical_path = repo / "docs/narrative-refresh/protected-files.json"
    if not historical_path.is_file():
        failures.append(f"missing historical guard manifest: {historical_path}")
        historical_files: dict[str, str] = {}
        historical_skipped: set[str] = set()
    else:
        historical = json.loads(historical_path.read_text(encoding="utf-8"))
        historical_files = historical.get("files", {})
        authorized_paths = {
            f"input/intro-notes/{item[key]}"
            for item in entries
            for key in ("intro_file", "notes_file")
        }
        historical_skipped = set(historical_files) & authorized_paths
        if len(historical_files) != 780:
            failures.append(f"historical guard entry count is {len(historical_files)}, expected 780")
        if len(historical_skipped) != 75:
            failures.append(f"historical guard authorized-path skip count is {len(historical_skipped)}, expected 75")
        for relative, expected_hash in historical_files.items():
            if relative in authorized_paths:
                continue
            path = repo / relative
            if not path.is_file():
                failures.append(f"missing historically protected file: {path}")
            elif digest(path) != expected_hash:
                failures.append(f"historically protected file changed: {path}")
        if len(historical_files) - len(historical_skipped) != 705:
            failures.append(f"historical protected-file check count is {len(historical_files) - len(historical_skipped)}, expected 705")

    # Verify the frozen formal-source and protected narrative baselines.
    for item in inventory["formal_source_hashes"]:
        path = (candidate / item["path"]) if item["scope"] == "frozen_candidate_template" else (repo / item["path"])
        if not path.is_file():
            failures.append(f"missing baseline source: {path}")
        elif digest(path) != item["sha256"]:
            failures.append(f"source hash changed: {path}")
    for group in inventory["protected_artifact_hashes"].values():
        for item in group:
            path = repo / item["path"]
            if not path.is_file():
                failures.append(f"missing protected artifact: {path}")
            elif digest(path) != item["sha256"]:
                failures.append(f"protected artifact changed: {path}")
    preserved_orphans = inventory.get("preserved_out_of_scope_intro_note_hashes", [])
    for item in preserved_orphans:
        path = repo / item["path"]
        if not path.is_file():
            failures.append(f"missing preserved out-of-scope intro-note: {path}")
        elif digest(path) != item["sha256"]:
            failures.append(f"out-of-scope intro-note changed: {path}")

    # Every mapped target must have existed in the frozen build, retaining case.
    for item in entries:
        if not item["target_exists_in_frozen_build"]:
            failures.append(f"target absent from frozen build inventory: {item['target_page']}")

    intro_dir = repo / "input/intro-notes"
    expected_files = {item[key] for item in entries for key in ("intro_file", "notes_file")}
    nonempty = 0
    fragment_texts: dict[str, str] = {}
    for item in entries:
        for key in ("intro_file", "notes_file"):
            name = item[key]
            path = intro_dir / name
            if not path.is_file():
                failures.append(f"missing fragment: input/intro-notes/{name}")
                continue
            text = path.read_text(encoding="utf-8")
            if not text.strip():
                failures.append(f"empty fragment: input/intro-notes/{name}")
                continue
            nonempty += 1
            normative = sorted(set(match.group(0).upper() for match in NORMATIVE.finditer(text)))
            if normative:
                warnings.append(f"normative language in {name}: {', '.join(normative)}")
            fragment_texts[name] = text
    expected_nonempty = expected_counts["expected_nonempty_fragments"]
    if nonempty != expected_nonempty:
        failures.append(f"nonempty fragment count is {nonempty}, expected {expected_nonempty}")

    fragment_names = list(fragment_texts)
    rendered_fragments = render_markdowns([fragment_texts[name] for name in fragment_names])
    fragment_html = dict(zip(fragment_names, rendered_fragments))
    for item in entries:
        note_html = fragment_html.get(item["notes_file"])
        if note_html is None:
            continue
        note_source = fragment_texts[item["notes_file"]]
        expected_anchor = f'<div id="{item["usage_anchor"]}"></div>'
        if note_source.splitlines()[0] != expected_anchor:
            failures.append(f"notes fragment does not start with its usage anchor div: {item['notes_file']}")
        note_parser = LinksAndAnchors()
        note_parser.feed(note_html)
        if item["usage_anchor"] not in note_parser.anchors:
            failures.append(f"notes fragment usage anchor did not render: {item['notes_file']} #{item['usage_anchor']}")
        if "div" not in note_parser.anchor_tags.get(item["usage_anchor"], set()):
            failures.append(f"notes fragment usage anchor is not rendered on a div: {item['notes_file']} #{item['usage_anchor']}")
        if note_parser.heading_count:
            failures.append(f"notes fragment adds a custom heading: {item['notes_file']}")
        if re.search(r"<p>\s*</p>", note_html, re.I):
            failures.append(f"notes fragment renders an empty paragraph: {item['notes_file']}")

    baseline_names = set(inventory["baseline_fragment_coverage"]["obsolete_or_out_of_scope_intro_files"])
    actual_fragment_names = {p.name for p in intro_dir.iterdir() if p.is_file() and p.name.endswith(FRAGMENT_SUFFIXES)}
    unexpected = sorted(actual_fragment_names - expected_files - baseline_names)
    for name in unexpected:
        failures.append(f"unexpected newly-created fragment: input/intro-notes/{name}")

    if site:
        for item in entries:
            page = site / item["target_page"]
            if not page.is_file():
                failures.append(f"built target page missing: {page}")
        anchors_by_page: dict[Path, set[str]] = {}

        def anchors(page: Path) -> set[str]:
            if page not in anchors_by_page:
                parsed = LinksAndAnchors()
                if page.is_file():
                    parsed.feed(page.read_text(encoding="utf-8", errors="replace"))
                    anchors_by_page[page] = parsed.anchors
                else:
                    anchors_by_page[page] = set()
            return anchors_by_page[page]

        for name, html_text in fragment_html.items():
            item = next((x for x in entries if name in (x["intro_file"], x["notes_file"])), None)
            if not item:
                continue
            base_page = site / item["target_page"]
            parsed = LinksAndAnchors()
            parsed.feed(html_text)
            for link in parsed.links:
                parts = urlsplit(link)
                if parts.scheme or parts.netloc:
                    continue
                destination = (site / unquote(parts.path).lstrip("/")) if parts.path else base_page
                if parts.path and not destination.is_file():
                    failures.append(f"internal link target missing in {name}: {link}")
                    continue
                if parts.fragment and unquote(parts.fragment) not in anchors(destination):
                    failures.append(f"internal link fragment missing in {name}: {link}")
            if args.require_injected:
                target_page = site / item["target_page"]
                target_parser = LinksAndAnchors()
                if target_page.is_file():
                    target_parser.feed(target_page.read_text(encoding="utf-8", errors="replace"))
                if name == item["notes_file"] and item["usage_anchor"] not in target_parser.anchors:
                    failures.append(f"notes usage anchor not injected in {item['target_page']}: #{item['usage_anchor']}")
                if name == item["notes_file"] and "div" not in target_parser.anchor_tags.get(item["usage_anchor"], set()):
                    failures.append(f"notes usage anchor is not a div in {item['target_page']}: #{item['usage_anchor']}")
                if name == item["notes_file"] and any(
                    normalized(heading).startswith(("Using this profile", "Using this operation"))
                    for heading in target_parser.heading_texts
                ):
                    failures.append(f"notes page retains a custom 'Using this' heading: {item['target_page']}")
                fragment_parser = LinksAndAnchors()
                fragment_parser.feed(html_text)
                fragment_body = normalized(" ".join(fragment_parser.text_without_headings))
                target_body = normalized(" ".join(target_parser.all_text))
                if not fragment_body or fragment_body not in target_body:
                    failures.append(f"fragment content not found in built page: {name} -> {item['target_page']}")
        print(f"Rendered site checks used {site}; target pages checked: {len(entries)}")
        if args.require_injected:
            print(f"Fragment injection checks requested for {len(fragment_html)} fragments")

    print(f"Inventory: {len(profile_entries)} profiles {got_categories}, {len(operation_entries)} operations, {len(entries)} artifacts")
    print(f"Narrative fragments: {nonempty}/{expected_nonempty} nonempty")
    print(f"Formal source hashes checked: {len(inventory['formal_source_hashes'])}; protected pagecontent/SVG hashes checked: {sum(len(v) for v in inventory['protected_artifact_hashes'].values())}")
    print(f"Preserved out-of-scope intro-note hashes checked: {len(preserved_orphans)}")
    print(f"Historical guard: {len(historical_skipped)} authorized paths skipped; {len(historical_files) - len(historical_skipped)} files verified")
    for warning in warnings:
        print(f"WARNING: {warning}")
    for failure in failures:
        print(f"FAIL: {failure}")
    if failures:
        print(f"Verification failed with {len(failures)} issue(s).", file=sys.stderr)
        return 1
    print("Verification passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
