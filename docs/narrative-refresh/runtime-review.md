# Independent semantic review: implementation and conformance pages

Reviewed the current rewritten versions of `index.md`, implementation overview (`02-05`), enablement (`03`), execution methods (`09`), integration (`10`), `documentation-careplanning.md`, `documentation-conformance.md`, `profiles.md`, `libraries.md`, and `terminology.md` against the HEAD narrative baseline and the protected FSH. Review date: 2026-10-28. This bounded pass excludes Activity Flow, Interactive CDS, Common Care Pathway and the HIV example while those files are being edited.

## Result

No material semantic defect or requirement-strength change found in this set. No source pages were edited by this review.

- The execution page correctly separates the transient subject-specific Bundle contract of CPG `$apply` from base R4's CarePlan return. Optional RequestGroup grouping and child `option` intent are described accurately. Persistence, clinical authorization and fulfillment remain separate responsibilities.
- The recommendation/strategy/pathway table matches the protected profile target restrictions. Pathway `relatedAction`, `input` and `output` prohibitions are represented correctly.
- Eligibility, enrollment and a returned proposal remain distinct. Enrollment does not become persistent merely by invoking `$apply`.
- The conformance/profile/library pages retain the active uppercase obligations and appropriate applicability. Must-support remains distinct from cardinality and availability-sensitive data support is retained.
- Terminology preserves the earlier CRMIComputableValueSet SHALL together with the final computable/expanded profile list. The added joint-reading explanation does not relax the earlier membership-definition requirement. Defined-versus-referenced scope and active-artifact publishable requirements remain intact.
- Execution method, delivery interface, representation levels, functional tiers and enablement choices are kept distinct. Interface success and conformance are not presented as evidence of care completion or clinical benefit.
- Narrative fragment links from these ten pages resolve against the current target pages under installed Kramdown. This check does not validate all external destinations or generated publisher pages.

## Optional precision improvement

The enrollment paragraph in `documentation-approach-09-methods-of-implementation.md` says an active CPGCase is “associated with the pathway/strategy or its containing definition through `partOf`.” A literal implementor could mistake `partOf` for the EpisodeOfCare's association field. The protected extension contexts are more precise:

- `extension-cpg-enrolled-in.fsh`: `cpg-enrolledIn` is on EpisodeOfCare and contains a canonical.
- `extension-cpg-part-of.fsh`: `cpg-partOf` is on PlanDefinition and points to PlanDefinition. Its comment describes recursive lookup for enrollment checking when the current definition is not itself a pathway or strategy.

Suggested clarification: “Enrollment is represented by an active CPGCase whose `enrolledIn` canonical identifies the relevant pathway or strategy. When checking a definition that is not itself a pathway or strategy, follow the PlanDefinition's `cpg-partOf` chain to identify that enrollment context.” Retain the existing eligibility/enrollment distinction. This is a clarification of where the links reside, not a requested artifact change or a new enrollment policy.

## Evidence and limits

Read-only formal evidence: CPG PlanDefinition apply OperationDefinition; CPGCase; CPG recommendation, strategy, pathway and computable-plan profiles; CPGTask; `cpg-enrolledIn`, `cpg-partOf` and `cpg-enabled` extensions. Base apply and conformance semantics were checked against [FHIR R4 apply](https://hl7.org/fhir/R4/plandefinition-operation-apply.html) and [FHIR R4 conformance rules](https://hl7.org/fhir/R4/conformance-rules.html) during the research phase. This is source-semantic review, not engine execution, publisher validation, browser workflow validation or clinical validation.

## Follow-up: activity, interaction, pathway and historical HIV example

Reviewed `activityflow.md`, `interactive-cds.md`, `common-care-pathway.md` and `examples-hiv-guideline.md` after the coordinating agent marked them ready. The R4 status corrections, immunization MedicationRequest profile identity, actual fulfillment links, optional RequestGroup handling, and separation of requests/Tasks/events are sound. Common pathway correctly distinguishes dispensing from administration and expands CCG as Computable Care Guidelines. HIV is explicitly a historical modeling overview, with its clinical sources and version limits retained.

The questionnaire rewrite matches the frozen generation operations' minimalOnly rule: differential or required snapshot elements, required-child handling, exclusion of fixed/pattern-constrained elements, and the recommendation against combining supportedOnly with minimalOnly. Population/extraction mapping direction is corrected without changing the formal operation parameters. Non-adaptive PlanDefinition generation and application-orchestrated adaptive StructureDefinition generation remain distinct. The source profile, generated questionnaire and extracted resource are not conflated.

### Findings

1. **Preserve the source-request completion on order conversion.** `activityflow.md` line 56 says to record the authorized order and “any resulting source-state change” together. HEAD's `requestApi.initiateOrder` explicitly sets the prior active proposal/plan to `completed` and saves both records in the commit. The rewritten wording leaves that particular state change unspecified. Add a sentence stating that this pattern completes the originating proposal/plan when committing the new order, using the concrete resource's supported status mapping, and persists those related changes consistently. Do not apply this automatically to plan conversion: HEAD's `initiatePlan` does not complete the proposal. This is preservation of the guide's illustrated pattern, not a universal FHIR rule.
2. **Restore one historical HIV fragment.** The previous heading generated `exceptions-to-screening-2006-guideline-only`; the new “Exceptions to screening” heading generates only `exceptions-to-screening`. Add the former as an explicit nearby alias. All other original heading IDs in these four pages are currently present under Kramdown, and their current narrative fragment destinations resolve.
3. **Optional provenance precision.** `interactive-cds.md` line 43 says extraction “does not ... establish a new clinical observation's provenance.” Extracted output may carry source links or populated provenance information; extraction simply does not guarantee that these are clinically correct and sufficient or that persistence is authorized. Prefer “Extraction does not by itself guarantee correct provenance, reconciliation of duplicates, or authorized persistence. The application must verify those aspects before using or saving the result.” This retains the intended authority boundary without implying that extraction cannot populate provenance.

No term mismatch with the Group A conceptual/representation pages was found. No source page was edited by this follow-up review. As before, this is a source-semantic pass; publisher, browser and execution checks remain separate.

## Integration resolution

The coordinating agent applied all four review findings: explicit enrolledIn versus PlanDefinition partOf ownership; source proposal/plan completion when committing an order (not when committing a plan); the historical HIV anchor alias; and more precise extraction/provenance wording. The final source and rendered checks are recorded in validation.md.
