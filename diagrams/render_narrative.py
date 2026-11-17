#!/usr/bin/env python3
"""Render the guide's editable narrative diagrams using only the Python standard library.

Usage: python3 diagrams/render_narrative.py [diagram.json ...]
With no arguments, render all diagrams/narrative/*.json to input/images/*.svg.
Coordinates are explicit so reviewing a source diff does not depend on a layout engine.
Specifications with svgSource use a hand-authored, editable SVG from the same source tree.
"""

from __future__ import annotations

import argparse
import html
import json
from pathlib import Path
import textwrap
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
REFERENCE_WIDTH = 1200
TITLE_SIZE = 29
LABEL_SIZE = 23
BODY_SIZE = 19
DETAIL_SIZE = 18
TEXT_COLOR = "#183e59"
PALETTE = {
    "knowledge": ("#eaf2fb", "#35618e"),
    "logic": ("#e6f4f1", "#247268"),
    "workflow": ("#fff4df", "#9b6b16"),
    "result": ("#f0ebfa", "#735397"),
    "neutral": ("#f2f5f8", "#65798b"),
}


def esc(value: object) -> str:
    return html.escape(str(value), quote=True)


def lines(value: str | list[str], width: float, size: float) -> list[str]:
    paragraphs = value if isinstance(value, list) else value.split("\n")
    count = max(9, int(width / (size * 0.54)))
    return [line for paragraph in paragraphs for line in (textwrap.wrap(paragraph, count) or [""])]


def text(x: float, y: float, value: str | list[str], width: float, size: float,
         weight: int = 400, anchor: str = "middle", color: str = TEXT_COLOR) -> str:
    content = lines(value, width, size)
    line_height = round(size * 1.35, 2)
    spans = "".join(f'<tspan x="{x}" dy="{0 if i == 0 else line_height}">{esc(line)}</tspan>'
                    for i, line in enumerate(content))
    return (f'<text x="{x}" y="{y}" font-size="{size}" font-weight="{weight}" '
            f'text-anchor="{anchor}" fill="{color}">{spans}</text>')


def port(node: dict, name: str) -> tuple[float, float]:
    x, y, w, h = (node[k] for k in ("x", "y", "w", "h"))
    return {"left": (x, y + h / 2), "right": (x + w, y + h / 2),
            "top": (x + w / 2, y), "bottom": (x + w / 2, y + h)}[name]


def render(spec: dict) -> str:
    width, height = spec.get("width", 1000), spec["height"]
    title, desc = spec["title"], spec["description"]
    scale = width / REFERENCE_WIDTH
    title_size, label_size, body_size, detail_size = (
        round(size * scale, 1) for size in (TITLE_SIZE, LABEL_SIZE, BODY_SIZE, DETAIL_SIZE)
    )
    heading_x = 30 * scale
    parts = [f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" '
             f'viewBox="0 0 {width} {height}" role="img" aria-labelledby="title description">',
             f'<title id="title">{esc(title)}</title><desc id="description">{esc(desc)}</desc>',
             '<defs><marker id="arrow" viewBox="0 0 10 10" refX="9" refY="5" '
             'markerWidth="7" markerHeight="7" orient="auto-start-reverse">'
             '<path d="M 0 0 L 10 5 L 0 10 z" fill="#52687a"/></marker></defs>',
             '<rect width="100%" height="100%" fill="#fff"/>',
             '<g font-family="Arial, Helvetica, sans-serif">',
             text(heading_x, 42 * scale, title, width - 2 * heading_x, title_size, 700, "start")]
    if spec.get("subtitle"):
        parts.append(text(heading_x, 65, spec["subtitle"], width - 2 * heading_x, body_size, anchor="start"))
    for lane in spec.get("lanes", []):
        parts.append(f'<rect x="{lane["x"]}" y="{lane["y"]}" width="{lane["w"]}" '
                     f'height="{lane["h"]}" rx="10" fill="#fafbfd" stroke="#d6dfe6"/>')
        parts.append(text(lane["x"] + 16, lane["y"] + 26, lane["label"], lane["w"] - 32,
                          body_size, 700, "start"))
    nodes = {}
    for original in spec["nodes"]:
        node = dict(original)
        node.setdefault("w", 250)
        label_lines = lines(node["label"], node["w"] - 32, node.get("size", label_size))
        body_lines = lines(node.get("body", ""), node["w"] - 32, body_size) if node.get("body") else []
        node.setdefault("h", 36 + len(label_lines) * 26 + len(body_lines) * 22 + (8 if body_lines else 0))
        nodes[node["id"]] = node
    for edge in spec.get("edges", []):
        start, end = nodes[edge["from"]], nodes[edge["to"]]
        a = port(start, edge.get("fromPort", "right"))
        b = port(end, edge.get("toPort", "left"))
        points = [a] + edge.get("via", []) + [b]
        if "via" not in edge and a[0] != b[0] and a[1] != b[1]:
            if edge.get("fromPort", "right") in ("top", "bottom"):
                middle = (a[1] + b[1]) / 2
                points = [a, (a[0], middle), (b[0], middle), b]
            else:
                middle = (a[0] + b[0]) / 2
                points = [a, (middle, a[1]), (middle, b[1]), b]
        point_string = " ".join(f"{x},{y}" for x, y in points)
        dashed = ' stroke-dasharray="7 5"' if edge.get("dashed") else ""
        arrow = ' marker-end="url(#arrow)"' if edge.get("arrow", True) else ""
        parts.append(f'<polyline points="{point_string}" fill="none" stroke="#52687a" '
                     f'stroke-width="2" stroke-linejoin="round"{dashed}{arrow}/>')
        if edge.get("label"):
            lx, ly = edge.get("labelAt", [(a[0] + b[0]) / 2, (a[1] + b[1]) / 2 - 10])
            label_width = edge.get("labelWidth", max(90, len(edge["label"]) * 8))
            parts.append(f'<rect x="{lx - label_width / 2}" y="{ly - 17}" '
                         f'width="{label_width}" height="23" fill="#fff"/>')
            parts.append(text(lx, ly, edge["label"], label_width, detail_size, color="#435e72"))
    for node in nodes.values():
        x, y, w, h = (node[k] for k in ("x", "y", "w", "h"))
        fill, stroke = PALETTE[node.get("kind", "neutral")]
        if node.get("shape") == "decision":
            points = f"{x+w/2},{y} {x+w},{y+h/2} {x+w/2},{y+h} {x},{y+h/2}"
            parts.append(f'<polygon points="{points}" fill="{fill}" stroke="{stroke}" stroke-width="2"/>')
        else:
            parts.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" '
                         f'rx="9" fill="{fill}" stroke="{stroke}" stroke-width="2"/>')
        size = node.get("size", label_size)
        nlines = len(lines(node["label"], w - 32, size))
        parts.append(text(x + w / 2, y + 28, node["label"], w - 32, size, 700))
        if node.get("body"):
            body_y = round(y + 36 + nlines * size * 1.35, 2)
            parts.append(text(x + w / 2, body_y, node["body"], w - 32, body_size))
    for note in spec.get("notes", []):
        parts.append(text(note["x"], note["y"], note["text"], note.get("w", width - 56),
                          note.get("size", body_size), anchor=note.get("anchor", "start")))
    parts.append("</g></svg>\n")
    result = "\n".join(parts)
    ET.fromstring(result)
    return result


def native_svg(source: Path, spec: dict) -> str:
    """Keep the richer original layouts editable as native SVG, without raster content."""
    path = (source.parent / spec["svgSource"]).resolve()
    if not path.is_relative_to(source.parent.resolve()):
        raise ValueError(f"SVG source must be within {source.parent}: {path}")
    result = path.read_text()
    root = ET.fromstring(result)
    ns = "{http://www.w3.org/2000/svg}"
    if root.tag != ns + "svg" or not root.get("viewBox"):
        raise ValueError(f"SVG source needs an SVG root and viewBox: {path}")
    if root.find(ns + "title") is None or root.find(ns + "desc") is None:
        raise ValueError(f"SVG source needs an accessible title and description: {path}")
    ids = set()
    for element in root.iter():
        if element.tag in {ns + tag for tag in ("image", "foreignObject", "script")}:
            raise ValueError(f"Native diagrams must use editable SVG primitives: {path}")
        if element.get("id"):
            if element.get("id") in ids:
                raise ValueError(f"Duplicate SVG ID {element.get('id')}: {path}")
            ids.add(element.get("id"))
    return result


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("specs", nargs="*", type=Path)
    args = parser.parse_args()
    sources = args.specs or sorted((ROOT / "diagrams/narrative").glob("*.json"))
    for source in sources:
        spec = json.loads(source.read_text())
        output = ROOT / "input/images" / (source.stem + ".svg")
        output.write_text(native_svg(source, spec) if "svgSource" in spec else render(spec))
        print(output.relative_to(ROOT))


if __name__ == "__main__":
    main()
