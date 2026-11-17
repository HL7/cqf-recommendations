# CPG narrative refresh

This change organizes the guide into five Approach chapters explaining the rationale for the clinical model, shared knowledge representations, and collaborative development, with Methodology providing the authoring steps. It uses the existing IG Publisher template and incorporates the STU 3 ballot artifact definitions, dependencies, conformance statements, and change log. Retired narrative pages and moved sections have redirects. The original rewrite began at commit `320b164065d795dd0b7ab9ab313a67f129e06dc7`.

## Review the result

For a local preview, run IG Publisher and serve its `output` directory over HTTP. Open `en/index.html` to test the navigation and interactive SVG links.

Start with the [home page](../../input/pagecontent/index.md), then follow either [Implementation and Integration](../../input/pagecontent/approach-implementation.md) or the [authoring methodology](../../input/pagecontent/methodology.md). [Approach](../../input/pagecontent/approach.md) explains the model and links to the topic that owns each concept. Navigation and page titles use the normal Publisher/SUSHI page and menu configuration.

Methodology offers a direct link to each of the five authoring steps and to the checklists that support their handoffs. Its overview retains legacy section anchors beside the corresponding step links. The case study and mapping reference remain available from the overview and relevant steps. The numbered conformance statements, code includes, artifact inventories, and historical examples remain available.

The rewrite makes inputs, outputs, responsibilities, resource mappings, and review decisions explicit. The five Approach chapters include optional reading paths by role. The L1 checklist uses the published text incorporated in the ballot. Generated indexes, profile tables, code includes, and artifact examples remain in place.

Key distinctions are explained consistently:

- L1–L4 representation levels, Data/Logic/Forms tiers, enablement choices, and formal conformance each answer a different question.
- Reusable definitions, patient-specific proposals, authorized requests, Tasks, and performed events have different roles.
- CPG `$apply` returns transient subject-specific Bundles; base FHIR R4 `$apply` has a different return contract. Persistence and clinical actions belong to the receiving workflow.
- Questionnaire generation, population, extraction, reconciliation, and persistence are separate steps.
- Technical validity, clinical fidelity, workflow fit, use, and patient outcomes need distinct evidence.

The historical COVID-19 and HIV examples identify their source versions and explain the modeling choices they illustrate.

## Research and references

The [publication review](publications.md) records 30 selected sources: 19 on standards and computable guidelines, and 11 on CDS effectiveness, workflow, alert burden, failures, or operational safety. It covers PubMed/PMC, publicly available publisher manuscripts, and official WHO, CDC, AHRQ, and ASTP/ONC publications. It documents search methods, access limits, evidence types, and what each source can support. This is a purposive narrative review, not a systematic review.

The guide's [CDS evidence topic](../../input/pagecontent/documentation-approach-cds-implementation-evidence.md) brings the selected literature into the narrative. Sources also appear beside relevant implementation advice. The guide uses FHIR R4 (4.0.1). The [Publisher audit](validation.md) records the dependency and example changes used to verify this build.

The [final external-link check](final-link-checks.json) distinguishes reachable endpoints, redirects, access blocks, timeouts, and not-found responses. The [reference ledger](reference-rewrite.md) explains replacement decisions. HTTP reachability alone does not establish a citation's meaning or currency.

## Diagrams

The initial narrative refresh consolidated 137 figure placements (106 distinct image references) into SVGs, prose, and tables. The Home and Approach redraws restore compositions, symbols, and color meanings from the original figures. Labels remain editable text, each placement has alternative text, and the specification badges link to their references.

Each SVG has a manifest in [diagrams/narrative](../../diagrams/narrative). The ten Home and Approach figures and five Methodology figures now use native editable SVG sources. Their manifests distinguish original-image references from new explanatory synthesis. The Methodology update restores the separate implementation-guide dependency diagram; the Approach artifact matrix adds the Data/Logic/Forms by L1–L4 graphic, bringing the source inventory to 24 diagrams. The matrix retains a collapsible text equivalent. Other figures retain positioned JSON specifications. See the [diagram editing guide](../../diagrams/README.md). Both formats use [render_narrative.py](../../diagrams/render_narrative.py). Regenerate from the repository root:

```sh
python3 diagrams/render_narrative.py
```

Use the [final disposition inventory](diagram-dispositions.json) to trace each original figure placement to its replacement page, diagrams, and related topics. The [independent diagram review](diagram-prose-review.md) records the semantic and visual checks.

## Review and validation evidence

See [validation.md](validation.md) for build results, baseline comparison, rendered checks, and remaining limitations. The source checks can be rerun with:

```sh
python3 docs/narrative-refresh/verify.py
python3 docs/narrative-refresh/verify.py \
  --site /path/to/candidate/output/en \
  --baseline-site /path/to/ballot/output/en
```

The [editorial plan](editorial-plan.md) and review ledgers record the [conceptual model](model-rewrite.md), [methodology](methodology-rewrite.md), [reference pages](reference-rewrite.md), [implementation semantics](runtime-review.md), and [citation review](citation-review.md).

These checks establish source preservation and publication behavior. They do not establish clinical approval, runtime interoperability, or production readiness of a guideline implementation.
