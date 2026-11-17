# Implementation narrative integration ledger

The coordinating agent rewrote these 14 pages after the evidence and architecture investigations. Formal FSH, CQL, JSON/XML resources, terminology, generated includes, publisher configuration, and templates were treated as read-only.

| Page | Result |
| --- | --- |
| `index.md` | Task-based entry points; responsibilities of related standards; bounded goals and evidence; explicit path for human and agent implementors. Acknowledgements and all four generated includes preserved. |
| `documentation-approach-02-05-knowledge-implementation.md` | Implementation sequence with inputs, execution/integration choices, patient-specific flow, and validation evidence. |
| `documentation-approach-03-conformance-levels.md` | Enablement choices distinguished from representation levels and formal conformance; a comparison table replaces the former graphic. |
| `documentation-approach-09-methods-of-implementation.md` | Execution methods, exact CPG versus base R4 apply results, profile target relationships, eligibility/enrollment context, and local responsibilities. |
| `documentation-approach-10-mechanisms-of-integration.md` | Integration responsibilities and interface choices; service/app composition and selected-action ownership; original long-form fragment aliases retained. |
| `documentation-careplanning.md` | Entry point connecting definition evaluation, patient plans, proposed/authorized/performed activities, and interactive CDS. |
| `documentation-conformance.md` | Existing conformance verbs, obligations, applicability, and must-support semantics retained with clearer orientation. |
| `profiles.md` | Clearer profile selection and resource roles, preserving all three generated includes and artifact-type obligations. |
| `libraries.md` | Library identity, dependencies, data/terminology expectations, and testing guidance; all four existing uppercase obligations retained. |
| `terminology.md` | Clearer defined-versus-referenced scope and mapping guidance; retained all uppercase obligations, including the joint interpretation of the computable ValueSet requirement and expanded/computable profile list. |
| `activityflow.md` | Replaced dense state graphics/pseudocode with one conceptual lifecycle diagram and explicit resource/status/link tables. Corrected narrative R4 status mappings; preserved proposal/plan completion on order commitment, without applying it to plan conversion. |
| `interactive-cds.md` | Separated questionnaire generation, population, response extraction, context reconciliation, reevaluation, and persistence. Preserved operation includes and mapping tables; clarified optional RequestGroup use and exact operation behavior. |
| `common-care-pathway.md` | Simplified common-process flow and distinguished recommendation, order, Task, dispensing, and administration. Retained profile and process references and the process XML include. |
| `examples-hiv-guideline.md` | Historical modeling walkthrough with identifiable 2006/2019 clinical sources and explicit version limits. The narrative no longer presents historical thresholds as current clinical guidance; clinical artifact files are unchanged. |

Seven shared-renderer diagrams support these topics: lifecycle, execution, integration, activity, interactive CDS, common pathway, and historical screening example. Repeated or tabular concepts use text/tables instead of another figure. See `diagram-dispositions.json` for complete original-to-replacement coverage.

The independent review in `runtime-review.md` checked these pages against the protected profile and operation definitions. All reported findings were resolved. `verify.py` checks old anchor preservation, include/highlight directive preservation, narrative fragment destinations, SVG regeneration, accessibility text, and the protected-file hashes. Final Publisher and browser results are in `validation.md`.

## Diagram placement in the existing template

Desktop browser inspection found that the template floats images directly inside paragraphs (`p > img`). The coordinating agent wrapped 21 standalone diagram placements across 20 pages in clearing HTML blocks, preserving image sources and alternative text. This keeps the diagram, caption, and following heading in reading order. No template or stylesheet was changed. A targeted Jekyll preview confirmed the correction before the final full Publisher build.
