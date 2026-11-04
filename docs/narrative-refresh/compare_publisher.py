#!/usr/bin/env python3
"""Compare two Publisher output directories without treating build paths as changes."""
import argparse
from collections import Counter
import json
from pathlib import Path
import re
import xml.etree.ElementTree as ET

NS = {"f": "http://hl7.org/fhir"}


def issues(output):
    root = str(output.resolve().parent)
    aliases = {root, root.removeprefix("/private")}

    def normalize(text):
        for alias in sorted(aliases, key=len, reverse=True):
            text = text.replace(alias + "/", "<build>/")
        return re.sub(r" at Line \d+, column \d+", "", text)

    result = Counter()
    for issue in ET.parse(output / "qa.xml").findall(".//f:issue", NS):
        def value(path):
            element = issue.find(path, NS)
            return element.get("value", "") if element is not None else ""
        key = (value("f:severity"), value("f:code"),
               normalize(value("f:details/f:text")),
               tuple(normalize(e.get("value", "")) for e in issue.findall("f:expression", NS)))
        result[key] += 1
    return result


def describe(counter):
    return [{"severity": key[0], "code": key[1], "message": key[2],
             "locations": key[3], "count": count} for key, count in sorted(counter.items())]


def html_errors(output):
    return Counter(re.sub(r" at Line \d+, column \d+", "", line)
                   for line in (output / "qa.compare.txt").read_text().splitlines()
                   if line.startswith("ERROR: en/"))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--baseline", type=Path, required=True, help="Baseline output directory")
    parser.add_argument("--candidate", type=Path, required=True, help="Candidate output directory")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    old, new = issues(args.baseline), issues(args.candidate)
    old_html, new_html = html_errors(args.baseline), html_errors(args.candidate)
    summary = lambda p: {k: v for k, v in json.loads((p / "qa.json").read_text()).items()
                         if k in ("errs", "warnings", "hints", "suppressed-hints", "suppressed-warnings")}
    report = {"baseline_summary": summary(args.baseline), "candidate_summary": summary(args.candidate),
              "method": "Compare qa.xml issue multisets by severity, code, text, and expression. Normalize only absolute build roots and HTML line/column locations. Compare ERROR lines for en/ HTML pages separately using qa.compare.txt. Summary counts come from qa.json; Publisher does not serialize every summary warning or HTML link error in qa.xml.",
              "added": describe(new - old), "removed": describe(old - new),
              "html_errors_before": sum(old_html.values()), "html_errors_after": sum(new_html.values()),
              "html_errors_added": list((new_html - old_html).elements()),
              "html_errors_removed": list((old_html - new_html).elements())}
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({k: v for k, v in report.items() if k != "method"}, indent=2))


if __name__ == "__main__":
    main()
