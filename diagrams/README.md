# Editing narrative diagrams

Published diagrams are SVGs in `input/images`. All labels remain text, and the
artwork uses SVG paths, shapes, and named groups. Do not embed raster images or
convert labels to outlines.

The JSON manifests in `diagrams/narrative` identify the editable source:

- A manifest with `svgSource` uses the native SVG at that relative path. Edit
  that SVG, then regenerate the published copy. Its `originals` list records
  the direct visual sources retained in `input/images`. The historical
  `docs/narrative-refresh/diagram-dispositions.json` separately records the
  broader consolidation of old figure placements.
- Other manifests define positioned nodes and edges. Edit the JSON and use
  the same renderer to regenerate the SVG.

From the repository root:

```sh
python3 diagrams/render_narrative.py
# Or regenerate one diagram:
python3 diagrams/render_narrative.py diagrams/narrative/cpg-runtime-lifecycle.json
```

The renderer validates native SVG structure, accessibility descriptions, unique
IDs, and the absence of embedded images, scripts, or foreign objects. Visually
check labels and connectors at the guide's 1000-pixel display width after edits.

## Home and Approach redraws

These ten figures restore the original diagrams' composition and color
meaning while simplifying their density. The native sources are in
`diagrams/narrative/svg`.

| Diagram | Original structure retained |
| --- | --- |
| `cpg-runtime-lifecycle` | Evidence, guidelines, CDS, clinical care, measurement, and reporting around shared FHIR data; standards badges and the local care loop. |
| `cpg-model-boundaries` | Orange reusable guidance, including workflow definitions, blue patient care, and green case-feature lanes; a labeled local-implementation connection separates defined coordination from patient work. |
| `cpg-model-definitions` | Nested pathway, strategy, and recommendation shapes, with a peer workflow branch showing defined activities, participants, inputs, and outputs. |
| `cpg-model-levels` | Ordered L1–L4 descriptions, original level colors, and overlapping development with feedback. |
| `cpg-model-artifact-matrix` | Four representation columns crossed with Data, Clinical logic, and Forms rows, preserving the current planning matrix's twelve cells and the adjacent levels figure's color key. The page also provides a collapsible text version. |
| `cpg-method-handoff` | Twelve clinical activities, related informatics activities, evaluation, and users in concentric rings and four phases. |
| `cpg-method-iteration` | Eight activities around a problem of interest, grouped into practice-to-data, data-to-knowledge, and knowledge-to-practice flows. |
| `cpg-runtime-activity` | Cumulative phase rows, retained predecessor records, and distinct request and event roles. |
| `cpg-runtime-interactive` | Parallel questionnaire and evaluation branches, the application review point, and the extraction and reevaluation loop. |
| `cpg-runtime-integration` | Content ingestion, CDS Hooks service, SMART application, and data enrichment, with separate component and exchange boundaries. |

Current narrative and formal artifacts govern the meaning when an original
figure uses older terminology. In particular, CPG `$apply` produces transient
subject-specific Bundles; the receiving workflow owns persistence and
authorization. The timelines are illustrative, representation levels are not
conformance grades, and observed use does not automatically revise guidance.

## Methodology diagrams

The Methodology figures use the same native SVG workflow. Keep dependency
relationships, authoring steps, decision branches, and transformation examples
visually distinct: their arrows do not all mean the same thing.

| Diagram | Structure and source intent |
| --- | --- |
| `cpg-method-recipe` | Five authoring steps, their work products, and review feedback. This is a synthesis of the methodology, rather than a reproduction of a single old figure. |
| `cpg-method-ig-layers` | The original foundation, model/specification, and content layers from `types-of-igs.png`. Arrows describe dependencies rather than a build sequence. |
| `cpg-method-translation` | The decision branches and response structure from `Recommendation04-05-flow.png`, with clinical rule details left in the versioned example. |
| `cpg-method-formalisms` | Source-to-target transformation and the sequence, parallel, exclusive, and timed patterns, with execution semantics reviewed separately. |
| `cpg-method-case-study` | Selected work products and review relationships from the historical 2020 case study. This is not a claim that every candidate artifact or deployment was completed. |

The manifests identify the direct original images used for each redraw. Keep
historical labels and semantic qualifications with the diagram; do not restore
old clinical thresholds as current guidance or imply automatic model conversion.
