# Diagram and prose consistency review

Independent integration review, 2026-10-28. Reviewed all 22 declarative narrative diagram specifications, their generated SVGs, and the surrounding page text/captions. This is a narrative/visual consistency review, not formal FHIR conformance or clinical validation.

## Outcome

No material disagreement found between the diagrams and their surrounding explanations of representation levels, definitions versus patient instances, proposed/authorized/performed care, optional forms, execution versus integration, transient CPG apply results, or reviewed feedback. The prose consistently qualifies conceptual diagrams and avoids treating arrows as clinical authorization or automatic persistence.

One presentation issue was reported to the coordinating agent: the shared renderer hardcodes edge-label text at 15px, below the agreed 16px minimum. It affects `cpg-runtime-integration` (invoke/return) and `cpg-runtime-interactive` (answers changed). Node and note text meet the minimum. The shared renderer belongs to the coordinator; this reviewer did not modify it. After raising that size, rerender the affected SVGs and check label fit.

## Specific cross-checks

- The definition relationship figure shows the strategy branch and notes the alternative CPGWorkflowDefinition target; prose names the exact profiles and distinguishes these references from execution.
- L1–L4 remain representation levels, and Data/Logic/Forms remain functional responsibilities. The figures do not map them to conformance certification grades.
- Case-feature inference preserves computational origin and source/time context; persistence does not reclassify a calculation as a direct observation.
- Patient-care and activity-flow figures distinguish proposal, planning/authorization, and occurrence. Prose explicitly permits authorized omission of intermediate phases and events without prior requests.
- Execution-method choice remains separate from the delivery interface; the service figure depicts a responsibility boundary rather than a new API or CQL execution standard.
- Interactive CDS routes changed answers through extraction and context reconciliation before reevaluation. Its prose distinguishes CPG questionnaire generation from SDC adaptive interfaces, and transient proposals from persistence/actions.
- Lifecycle and local-release figures show reviewed feedback, not automatic changes to approved guidance or causal evidence from observed usage.
- Methodology figures match the Select/Represent/Translate/Validate/Package recipe and keep clinical meaning, technical findings, and local implementation responsibility visible.
- Optional BPM+ comparison points both representations to the same reviewed cases; it does not promise lossless or bidirectional semantic equivalence.
- COVID-19 and HIV figures are framed as historical modeling examples, not current clinical algorithms.

## Coverage

| Diagram stem | Referencing narrative pages |
| --- | --- |
| `cpg-method-case-study` | `methodology-case-study.md` |
| `cpg-method-formalisms` | `documentation-methodology.md` |
| `cpg-method-governance` | `documentation-approach-05-05-knowledge-implementation.md` |
| `cpg-method-handoff` | `documentation-approach-04-guideline-development.md`, `documentation-approach-04-05-computable-guideline-artifacts.md` |
| `cpg-method-iteration` | `documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.md`, `documentation-approach-05-knowledge-engineering-overview.md`, `documentation-approach-05-06-agile-cpg-development-approach.md` |
| `cpg-method-recipe` | `methodology.md` |
| `cpg-method-translation` | `methodology.md`, `documentation-approach-05-01-knowledge-acquisition.md`, `documentation-approach-05-02-knowledge-translation.md` |
| `cpg-method-validation` | `documentation-approach-05-04-knowledge-execution-and-validation.md` |
| `cpg-model-boundaries` | `documentation-approach-12-conceptual-knowledge-architecture.md` |
| `cpg-model-care-flow` | `documentation-approach-12-05-cpg-careplan.md` |
| `cpg-model-case-features` | `documentation-approach-12-04-cpg-case.md` |
| `cpg-model-definitions` | `documentation-approach-06-03-knowledge-architecture.md`, `documentation-approach-12-03-cpg-plan.md` |
| `cpg-model-levels` | `documentation-approach-06-01-levels-of-knowledge-representation.md` |
| `cpg-model-release` | `documentation-approach-06-02-knowledge-assets.md` |
| `cpg-model-tiers` | `documentation-approach-07-tiers-of-functionality.md` |
| `cpg-runtime-activity` | `activityflow.md` |
| `cpg-runtime-common-pathway` | `common-care-pathway.md` |
| `cpg-runtime-execution` | `documentation-approach-09-methods-of-implementation.md` |
| `cpg-runtime-integration` | `documentation-approach-10-mechanisms-of-integration.md` |
| `cpg-runtime-interactive` | `interactive-cds.md` |
| `cpg-runtime-lifecycle` | `index.md` |
| `cpg-runtime-screening-example` | `examples-hiv-guideline.md` |

## Visual inspection

Inspected the eight methodology figures in `/tmp/cpg-method-preview/contact.png` and the remaining fourteen in `/tmp/cpg-other-diagram-preview/contact.png`, rasterized with CairoSVG. No clipped node text, missing connections, or contradictory arrow directions were observed. Labels and notes use a common visual vocabulary; contextual/feedback arrows are qualified in notes or adjacent captions. Contact sheets are temporary local QA artifacts. Final rendered IG-page review and the complete publisher build remain separate checks.

## Integration resolution

The coordinating agent raised edge-label text from 15px to 16px, regenerated all 22 SVGs, and verified byte-for-byte regeneration. The affected labels were inspected after regeneration; final publication checks are recorded in validation.md.

## Diagram placement in the existing template

Desktop browser inspection found that the template floats images directly inside paragraphs (`p > img`). The coordinating agent wrapped 21 standalone diagram placements across 20 pages in clearing HTML blocks, preserving image sources and alternative text. This keeps the diagram, caption, and following heading in reading order. No template or stylesheet was changed. A targeted Jekyll preview confirmed the correction before the final full Publisher build.
