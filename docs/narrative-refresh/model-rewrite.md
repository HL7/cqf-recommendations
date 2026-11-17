# Model and representation rewrite

Rewritten 17 pages (26,167 → 10,377 whitespace-delimited words), preserving page filenames and original heading/explicit anchors. Consolidated 47 former image placements (31 distinct source strings). Seven editable JSON diagram sources generate seven original SVGs through the shared renderer. Old images remain untouched, including assets referenced outside these pages.

## Image disposition

| Page | Former image references | Replacement |
|---|---|---|
| `approach.md` | None | Reading-path table and links; no previous image. |
| `glossary.md` | None | Definitions and links; no previous image. |
| `documentation-approach-12-07-cpg-derivative-and-related-assets.md` | `CPG-12.07-GdlnDef.png`, `CPG-12.07-00.png`, `CPG-12.07-01.png`, `CPG-12-03.png`, `CPG-12-05.png`, `CPG-CasePlanSummary.png`, `CPG-12.07-05.png` | Resource/profile links and derivative-validation table; no duplicate architecture graphics. |
| `documentation-approach-12-05-cpg-careplan.md` | `CPG-12-04.png`, `CPG-Main-InstantiatedPlan.png`, `CPG-12-05.png` | `cpg-model-care-flow.svg` plus proposal/request/event and traceability explanation. |
| `documentation-approach-12-01-separations-of-concerns-in-the-cpg.md` | `CPG-12-01.png` | Responsibility/example table and review steps; shared boundary diagram linked from conceptual hub. |
| `documentation-approach-12-06-cpg-common-pathway.md` | `CPG-WorkflowSeparations.png`, `CPG-ResourcePatternsRelationship.png`, `CPG-RequestStatusFSM.png`, `CPG-EventStatusFSM.png`, `CPG-TaskStatusFSM.png` | Definition/request/Task/event responsibility table; exact statuses delegated to Activity Flow. Both SHALL/SHOULD statements retained. |
| `documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.md` | `CPG-12-01.png` | Plan meanings and boundary-case tables; lifecycle detail linked. |
| `documentation-approach-12-conceptual-knowledge-architecture.md` | `CPG-12-00.png`, `CPG-12-01.png`, `CPG-12-02.png`, `CPG-Main-Plan.png`, `CPG-12-03.png`, `CPG-Main-Case.png`, `CPG-12-04.png`, `CPG-12-05.png` | `cpg-model-boundaries.svg` plus exact resource mapping table. |
| `documentation-approach-12-03-cpg-plan.md` | `CPG-12-02.png`, `CPG-Main-Plan.png` | `cpg-model-definitions.svg` plus allowed-reference table and eligibility/enrollment distinctions. |
| `documentation-approach-12-04-cpg-case.md` | `CPG-12-03.png`, `CPG-Main-Case.png`, `CPG-HemodynamicStatus.png` | `cpg-model-case-features.svg`, feature/source table and clinical-assessment explanation. Hemodynamic content remains an attributed CHF modeling example, not a new clinical rule. |
| `documentation-approach-06-03-knowledge-architecture.md` | `CPG-06.03-Architecture.png`, `CPG-06.03-CasePlan.png`, `CPG-06.03-Concepts-Formalisms.png`, `CPG-06.03-Relationships.png`, `CPG-06.03-DiseaseProcess.png`, `CPG-12.07-GdlnDef.png` | Shared `cpg-model-definitions.svg` and exact resource/profile map. |
| `documentation-approach-06-knowledge-representation.md` | `knowledge-levels.png`, `CPG-05.06-01.png` | Artifact-selection table and linked detail sections. |
| `documentation-approach-06-01-levels-of-knowledge-representation.md` | `knowledge-levels.png`, `CPG-05.06-01.png` | `cpg-model-levels.svg`, with Boxwala attribution and explicit iterative/continuum limits. |
| `documentation-approach-06-02-knowledge-assets.md` | `CPG-06.02-00.png`, `CPG-06.02-01.png` | `cpg-model-release.svg` and metadata table; equivalent behavior is a validation claim, not a presumed property of translation. |
| `documentation-approach-02-04-knowledge-representation.md` | `knowledge-levels.png`, `CPG-05.06-01.png` | Task/reference/output table; shared levels and matrix linked. |
| `documentation-approach-07-tiers-of-functionality.md` | `functionality-tiers.png` | `cpg-model-tiers.svg` plus responsibility table. |
| `documentation-approach-08-levels-of-representation-by-tiers-of-functionality.md` | `CPG-Main-LevelsAndTiers.png` | Accessible L1–L4 by Data/Logic/Forms table; Rhodes attribution retained. |

## Checks and limits

- All 17 owned pages rewritten; no raster-image references remain in them. The seven SVGs render with CairoSVG and were visually inspected as a contact sheet and at full scale.
- Narrative link fragments from these pages resolve against the current target pages under Kramdown; profile link IDs match protected FSH identifiers and all referenced SVG files exist.
- Original headings rendered through the installed Kramdown were compared with the new pages; removed/changed generated IDs are retained as explicit aliases near the corresponding section. Existing explicit numeric anchors are retained.
- Protected FSH informed exact profile/resource mappings, action-target restrictions and transient CPG apply behavior; no protected source or publication configuration was changed.
- The Common Processes SHALL and case-reporting SHOULD remain on the workflow page. The erroneous summary in the editorial-plan ledger is corrected.
- Primary FHIR R4 references and selected publications from the evidence review support the new explanations. Historical clinical examples are illustrative; no portability, execution-support or outcome guarantee is claimed.
- Full publisher build, cross-group links and site rendering remain integration checks for the coordinating agent. Diagram rendering does not validate clinical semantics or software conformance.
