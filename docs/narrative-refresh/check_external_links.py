#!/usr/bin/env python3
"""Check external links in an IG candidate with unauthenticated GET requests.

Example:
  python3 check_external_links.py --candidate-dir /path/to/ig --output link-checks.json

This reports endpoint reachability, not semantic correctness or freshness.
"""
import argparse
import concurrent.futures
import datetime as dt
import html
import json
import os
import re
from collections import defaultdict

import requests


def unescape_markdown_url(value: str) -> str:
    value = html.unescape(value.strip())
    value = re.sub(r"\\([!\"#$%&'()*+,\-./:;<=>?@\[\\\]^_`{|}~])", r"\1", value)
    return value


def markdown_targets(line: str):
    i = 0
    while True:
        start = line.find("](", i)
        if start < 0:
            break
        pos = start + 2
        depth = 0
        quote = None
        while pos < len(line):
            char = line[pos]
            if quote:
                if char == quote and (pos == 0 or line[pos - 1] != "\\"):
                    quote = None
            elif char in "\"'":
                quote = char
            elif char == "(":
                depth += 1
            elif char == ")":
                if depth == 0:
                    break
                depth -= 1
            pos += 1
        if pos < len(line):
            raw = line[start + 2:pos].strip()
            if raw.startswith("<") and raw.endswith(">"):
                raw = raw[1:-1]
            raw = unescape_markdown_url(raw)
            if raw.startswith(("http://", "https://")):
                yield raw
        i = start + 2


def gather(candidate_dir):
    page_dir = os.path.join(candidate_dir, "input", "pagecontent")
    pages = sorted(p for p in os.listdir(page_dir) if p.endswith(".md") and p != "changes.md")
    refs = defaultdict(list)
    excluded = []
    label_fragments = []
    for page in pages:
        file_path = os.path.join(page_dir, page)
        with open(file_path, encoding="utf-8") as stream:
            for line_no, line in enumerate(stream, 1):
                parsed = list(markdown_targets(line))
                parsed += [unescape_markdown_url(x) for x in re.findall(r"(?i)href\s*=\s*[\"'](https?://[^\"']+)", line)]
                masked = line
                for url in parsed:
                    masked = masked.replace(url, " ")
                bare = [unescape_markdown_url(x) for x in re.findall(r"https?://[^\s<>\"']+", masked)]
                for url in parsed + bare:
                    url = url.rstrip(r".,;:!?)\]}")
                    if any(token in url for token in ("{", "}", "<", ">")) or url.endswith("/..."):
                        excluded.append({"url": url, "page": page, "line": line_no, "reason": "template or placeholder token"})
                    elif url.endswith("](") or url.endswith("]."):
                        label_fragments.append({"url": url, "page": page, "line": line_no, "reason": "URL-like text in malformed Markdown label, not a destination"})
                    elif "example.org/StructureDefinition/ExampleObservation" in url:
                        excluded.append({"url": url, "page": page, "line": line_no, "reason": "example.org placeholder in sample JSON"})
                    else:
                        refs[url].append({"page": page, "line": line_no, "type": "markdown/href/bare"})
    return pages, refs, excluded, label_fragments


def check_one(item):
    url, references = item
    pages = sorted({ref["page"] for ref in references})
    session = requests.Session()
    session.headers.update({"User-Agent": "Mozilla/5.0 (compatible; NarrativeReferenceAudit/1.0)"})
    try:
        response = session.get(url, timeout=(5, 15), allow_redirects=True, stream=True)
        status = response.status_code
        final_url = response.url
        chain = [{"url": r.url, "status_code": r.status_code} for r in response.history]
        content_type = response.headers.get("content-type", "")
        try:
            sample = next(response.iter_content(4096), b"")[:4096].decode("utf-8", "replace").lower()
        except Exception:
            sample = ""
        response.close()
        if status in (404, 410):
            classification = "not-found"
        elif status in (401, 403, 407, 429) or (status == 200 and any(token in sample for token in ("captcha", "cloudflare", "access denied", "sign in to"))):
            classification = "blocked"
        elif status >= 500:
            classification = "error"
        elif status in (200, 202, 204):
            classification = "redirected" if chain else "reachable"
        else:
            classification = "error"
        result = {"url": url, "pages": pages, "references": references, "occurrences": len(references), "final_url": final_url, "status_code": status, "redirect_count": len(chain), "redirect_chain": chain, "classification": classification, "content_type": content_type}
    except requests.exceptions.Timeout as exc:
        result = {"url": url, "pages": pages, "references": references, "occurrences": len(references), "classification": "timeout", "error": str(exc)}
    except requests.exceptions.RequestException as exc:
        result = {"url": url, "pages": pages, "references": references, "occurrences": len(references), "classification": "error", "error": str(exc)}
    result["checked_at"] = dt.datetime.now(dt.timezone.utc).isoformat(timespec="seconds")
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--candidate-dir", required=True, help="Candidate IG root containing input/pagecontent")
    parser.add_argument("--output", required=True, help="Path to write JSON evidence")
    parser.add_argument("--concurrency", type=int, default=6, choices=range(1, 7), help="Concurrent requests (max 6)")
    args = parser.parse_args()
    candidate_dir = os.path.abspath(args.candidate_dir)
    pages, refs, excluded, label_fragments = gather(candidate_dir)
    items = sorted((url, sorted(values, key=lambda x: (x["page"], x["line"]))) for url, values in refs.items())
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.concurrency) as executor:
        results = list(executor.map(check_one, items))
    classes = ("reachable", "redirected", "not-found", "blocked", "timeout", "error")
    summary = {key: sum(r["classification"] == key for r in results) for key in classes}
    out = {
        "scope": {
            "candidate_dir": candidate_dir,
            "active_markdown_pages": len(pages),
            "changes_md_excluded": True,
            "unique_urls_checked": len(results),
            "line_occurrences": sum(r["occurrences"] for r in results),
            "excluded_targets": len(excluded),
            "method": "Balanced Markdown destination parsing, HTML href extraction, and bare HTTP(S) mentions outside parsed destinations. changes.md excluded. One unauthenticated streamed GET per exact URL, redirects followed, max concurrency 6, 5s connect/15s read timeout, 4096-byte sample for common challenge text. Reachability only, not content verification.",
            "checked_at": dt.datetime.now(dt.timezone.utc).isoformat(timespec="seconds"),
        },
        "summary_by_classification": summary,
        "results": results,
        "excluded_or_placeholder_targets": excluded,
        "url_like_non_destination_tokens": label_fragments,
    }
    os.makedirs(os.path.dirname(os.path.abspath(args.output)), exist_ok=True)
    with open(args.output, "w", encoding="utf-8") as stream:
        json.dump(out, stream, indent=2, ensure_ascii=False)
    print(json.dumps({"scope": out["scope"], "summary": summary, "not_found": [{"url": r["url"], "pages": r["pages"]} for r in results if r["classification"] == "not-found"], "errors": [{"url": r["url"], "pages": r["pages"], "error": r.get("error")} for r in results if r["classification"] in ("timeout", "error")]}, indent=2))


if __name__ == "__main__":
    main()
