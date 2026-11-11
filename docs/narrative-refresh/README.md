# CPG narrative refresh

This change reorganizes the guide around implementor tasks while retaining IGPublisher, its templates, artifact definitions, dependencies, existing page URLs, and the historical change log. Narrative page and menu configuration evolves with the organization of the guide. Work began from commit `320b164065d795dd0b7ab9ab313a67f129e06dc7`; research was refreshed on 28 October 2026.

## Review the result

A [local Publisher preview](http://127.0.0.1:49483/en/index.html) is available while the preview server is running.

Start with the [home page](../../input/pagecontent/index.md), then follow either [Implementation and Integration](../../input/pagecontent/approach-implementation.md) or the [authoring methodology](../../input/pagecontent/methodology.md). [Approach](../../input/pagecontent/approach.md) explains the model and links to the topic that owns each concept. Navigation and page titles use the normal Publisher/SUSHI page and menu configuration.

Methodology now follows the same flat navigation and complete-chapter approach: Overview, Select, Represent, Translate, Validate, and Package. Its overview retains legacy section anchors beside the corresponding step links. The case study and mapping reference remain directly available from the overview and relevant steps. The existing conformance statements, code includes, artifact inventories, and historical examples remain intact.

The rewrite covers 56 active narrative pages. It makes inputs, outputs, responsibilities, resource mappings, and review decisions explicit; reduces repeated explanations; and retains old heading anchors for inbound links. The four checklist pages retain their checklist obligations. Generated indexes, profile tables, code includes, and artifact examples remain in place.

Key distinctions are explained consistently:

- L1–L4 representation levels, Data/Logic/Forms tiers, enablement choices, and formal conformance each answer a different question.
- Reusable definitions, patient-specific proposals, authorized requests, Tasks, and performed events have different roles.
- CPG `$apply` returns transient subject-specific Bundles; base FHIR R4 `$apply` has a different return contract. Persistence and clinical actions belong to the receiving workflow.
- Questionnaire generation, population, extraction, reconciliation, and persistence are separate steps.
- Technical validity, clinical fidelity, workflow fit, use, and patient outcomes need distinct evidence.

Historical COVID-19 and HIV examples now emphasize modeling and source-version limits. They are not refreshed clinical protocols; the stable clinical artifacts have not been updated.

## Research and references

The [publication review](publications.md) records 30 selected sources: 19 on standards and computable guidelines, and 11 on CDS effectiveness, workflow, alert burden, failures, or operational safety. It covers PubMed/PMC, publicly available publisher manuscripts, and official WHO, CDC, AHRQ, and ASTP/ONC publications. It documents search methods, access limits, evidence types, and what each source can support. This is a purposive narrative review, not a systematic review.

The guide's [CDS evidence topic](../../input/pagecontent/documentation-approach-cds-implementation-evidence.md) brings the selected literature into the narrative. Sources also appear beside relevant implementation advice. Updated standards references do not change the guide's FHIR R4 version or package dependencies.

The [final external-link check](final-link-checks.json) distinguishes reachable endpoints, redirects, access blocks, timeouts, and not-found responses. The [reference ledger](reference-rewrite.md) explains replacement decisions. HTTP reachability alone does not establish a citation's meaning or currency.

## Diagrams

The initial narrative refresh consolidated 137 figure placements (106 distinct image references) into 22 SVG diagrams and accessible prose/tables. The Home and Approach redraws now restore more of the original compositions, symbols, and color meanings. Labels remain editable text, and each placement has alternative text. Old image files remain available; none of the stable artifact resources was changed.

Each SVG has a manifest in [diagrams/narrative](../../diagrams/narrative). The ten Home and Approach figures and five Methodology figures now use native editable SVG sources. Their manifests distinguish original-image references from new explanatory synthesis. The Methodology update restores the separate implementation-guide dependency diagram; the Approach artifact matrix adds the Data/Logic/Forms by L1–L4 graphic, bringing the source inventory to 24 diagrams. The matrix retains a collapsible text equivalent. Other figures retain positioned JSON specifications. See the [diagram editing guide](../../diagrams/README.md). Both formats use [render_narrative.py](../../diagrams/render_narrative.py). Regenerate from the repository root:

```sh
python3 diagrams/render_narrative.py
```

Use the [final disposition inventory](diagram-dispositions.json) to trace each original figure placement to its replacement page, diagrams, and related topics. The [independent diagram review](diagram-prose-review.md) records the semantic and visual checks.

## Review and validation evidence

See [validation.md](validation.md) for build results, baseline comparison, rendered checks, and remaining limitations. The source checks can be rerun with:

```sh
python3 docs/narrative-refresh/verify.py
python3 docs/narrative-refresh/verify.py --site /path/to/publisher/output/en
```

The work followed the [editorial plan](editorial-plan.md), with bounded contributions from Sol and Luna agents. Detailed ledgers cover the [conceptual model](model-rewrite.md), [methodology](methodology-rewrite.md), [reference pages](reference-rewrite.md), [implementation semantics](runtime-review.md), and [independently checked citations](citation-review.md). The coordinating agent integrated the changes and resolved the review findings.

These checks establish source preservation and publication behavior. They do not establish clinical approval, runtime interoperability, or production readiness of a guideline implementation.

## Delegation configuration

| Agent | Model | Reasoning effort | Work |
| --- | --- | --- | --- |
| `evidence_research` | `gpt-6.1-sol` | High | Publication research, methodology rewrite, diagram/prose review |
| `narrative_audit` | `gpt-6.1-sol` | High | Architecture and narrative audit, model rewrite, independent implementation review |
| `reference_inventory` | `gpt-6-luna` | Medium | Page/image/reference inventory, bounded reference-page edits, citation and link checks |

The agents received explicit task context and used the shared filesystem with inherited workspace permissions. The coordinator owned scope, integration, runtime narrative, shared diagram rendering, and final verification.
