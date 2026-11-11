# Narrative refresh editorial plan

Research snapshot: 28 October 2026. This is a rewrite plan, not a change to the specification or its conformance artifacts.

## Scope and editorial contract

The current checkout contains **57 Markdown pages and approximately 90,178 whitespace-delimited words** under `input/pagecontent`. All pages were inventoried for headings, length, requirement language, and cross-topic overlap; implementation, conformance, profiles, terminology, levels/tiers, conceptual mappings, and workflow passages received deeper review. The initial estimate of 58 pages does not match the Markdown files currently present. Reconcile the count against the separate asset inventory before reporting final completion.

Rewrite the prose for a reader implementing a guideline and for an agent retrieving precise instructions. Keep every existing `.html` page URL and explicit anchor; where a heading changes, retain the former generated anchor explicitly if linked elsewhere. Reorganize through hub pages, reading paths, summaries, and cross-links. Keep the existing publication configuration and page tree intact.

Protected, read-only evidence includes `input/fsh`, CQL, vocabulary, resource and example instances, `input/intro-notes`, include XML/HTML, publisher and template files, and `sushi-config.yaml`. Generated indexes and template include directives embedded in narrative must survive the edit. An explanatory correction does not authorize changing a profile, operation, binding, canonical URL, or normative requirement strength.

Use one prose pattern for substantial pages: purpose and implementation decision; required inputs; steps or mapping table; resulting artifacts/behavior; validation and limits; next page and primary references. Short reference/index pages can stay short. State exact profile/resource names when they matter, label conceptual names, and label historical examples. Avoid claiming software support or clinical effectiveness from a representation or a diagram.

## Reading paths without URL changes

- **Build an interoperable content package:** `index` → `methodology` → `profiles` → `terminology` → `libraries` → `documentation-conformance` → `checklists` → `examples-chf` → `artifacts`/`downloads`.
- **Implement published content:** `index` → `documentation-approach-06-01-levels-of-knowledge-representation` → `documentation-approach-09-methods-of-implementation` → `documentation-approach-10-mechanisms-of-integration` → `activityflow` → `interactive-cds` → `documentation-conformance` → L4 checklist.
- **Understand the model before coding:** `approach` → `documentation-approach-12-conceptual-knowledge-architecture` → `documentation-approach-12-03-cpg-plan` / `documentation-approach-12-04-cpg-case` / `documentation-approach-12-05-cpg-careplan` → `profiles` → `methodology`.
- **Develop or review a clinical guideline:** `documentation-approach-04-guideline-development` → evidence/recommendation reporting → `documentation-approach-05-knowledge-engineering-overview` → `methodology` → L1–L3 checklists → `methodology-case-study`.
- **Agent retrieval:** begin at the relevant hub; retrieve the owning detail page and linked formal profile/operation; distinguish normative statements from examples; never infer a resource type or an operation signature from a conceptual diagram.

## Rewrite ownership and consolidation

These are disjoint ownership groups for a later authorized rewrite. Cross-group links can be proposed by either owner, but one owner edits each page. “Consolidate” means move repeated explanation to its owning existing page and leave a concise summary with a link; it does not mean delete or redirect a page. A full narrative refresh includes brief hub/index and checklist introductions where the tabular or generated content already serves its purpose.

### Group A — conceptual model and knowledge representation (17 pages)

| Existing page basename | Rewrite/consolidation action |
|---|---|
| `approach` | Replace five repeated mini-essays with the model/author/implement reading paths and concrete decisions; link to owning pages. |
| `documentation-approach-12-conceptual-knowledge-architecture` | Own the high-level case/definition/patient-care-plan/workflow map and conceptual-to-FHIR legend; shorten all child-page recaps. |
| `documentation-approach-12-01-separations-of-concerns-in-the-cpg` | Own the boundaries among patient description, clinical recommendation, UI, and local workflow; use one running example. |
| `documentation-approach-12-02-separating-and-defining-case-plan-and-workflow` | Explain boundary cases in a comparison table; link to lifecycle details instead of restating status mechanics. |
| `documentation-approach-12-03-cpg-plan` | Own recommendation/strategy/pathway definitions, actual profile nesting, eligibility versus enrollment; distinguish CPGPlan concept from resource names. |
| `documentation-approach-12-04-cpg-case` | Own case-feature definitions versus instances, assertions/inferences, data provenance, feature groups and summaries; remove invented profile names. |
| `documentation-approach-12-05-cpg-careplan` | Own patient-specific proposals, requests, events and CarePlan associations; show definition-to-instance links and authorization boundary. |
| `documentation-approach-12-06-cpg-common-pathway` | Own workflow abstractions and Task/request/event responsibility; keep the common pathway a localized example, link status details to activityflow. |
| `documentation-approach-12-07-cpg-derivative-and-related-assets` | Map each derivative concept to the exact supported resource/profile or label it a potential downstream use; separate metric and population measure. |
| `documentation-approach-02-04-knowledge-representation` | Become representation hub with levels/tiers/model reading order, replacing duplicated asset taxonomy. |
| `documentation-approach-06-knowledge-representation` | Explain the practical artifact inventory and reference the owning assets/levels/tiers pages; avoid another full overview. |
| `documentation-approach-06-01-levels-of-knowledge-representation` | Own L1 narrative, L2 semi-structured, L3 computable, L4 local executable definitions, examples and non-linear iteration. |
| `documentation-approach-06-02-knowledge-assets` | Own identity/version/dependencies, metadata/content/expressions, composite and derived artifacts; distinguish metadata claims from execution support. |
| `documentation-approach-06-03-knowledge-architecture` | Own the concrete FHIR resource/dependency view; refer conceptual separation to 12-series instead of repeating it. |
| `documentation-approach-07-tiers-of-functionality` | Own orthogonal Data/Logic/Forms distinctions with exact resource examples; no tier-as-maturity wording. |
| `documentation-approach-08-levels-of-representation-by-tiers-of-functionality` | Make the L1–L4 × Data/Logic/Forms matrix textual and accessible; explain each axis and link to their definitions. |
| `glossary` | Align short definitions with owning pages; distinguish conceptual CPGPlan/Proposal/CaseFeature from exact formal profile names. |

### Group B — methodology, evidence development and knowledge engineering (15 pages)

| Existing page basename | Rewrite/consolidation action |
|---|---|
| `methodology` | Own the implementor recipe Select → Represent → Translate → Validate → Package; retain every active conformance statement and named profile requirement. |
| `methodology-case-study` | Retain COVID severity as a historical worked example; add a concise stage/artifact/result map and shorten repeated process theory. Do not present it as current clinical advice. |
| `documentation-methodology` | Explain optional BPMN/DMN/CMMN mappings and exact FHIR target limitations; distinguish illustrative transforms from equivalence guarantees. |
| `documentation-approach-04-guideline-development` | Development hub: scope, actors, evidence-to-recommendation decisions, output and handoff; move detailed child explanations to children. |
| `documentation-approach-04-02-guideline-development-frameworks` | Compare purpose and output of frameworks; focus on inputs needed for computability and links to current primary sources. |
| `documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems` | Explain evidence organization and feedback loop; bound learning-system claims, retain pandemic material as historical example. |
| `documentation-approach-04-04-analysis-of-evidence-recommendations-reporting` | Own evidence/recommendation/rating/provenance distinctions; identify exact representation supported by R4 and this IG. |
| `documentation-approach-04-05-computable-guideline-artifacts` | Own co-development outputs, translation review and stakeholder handoffs; link artifact taxonomy instead of duplicating it. |
| `documentation-approach-05-knowledge-engineering-overview` | Engineering hub with responsibility/input/output/validation table for six phases; reduce repeated child-page prose. |
| `documentation-approach-05-01-knowledge-acquisition` | Focus elicitation, source selection, authoring and ambiguity capture on concrete work products. |
| `documentation-approach-05-02-knowledge-translation` | Own resolution of narrative ambiguities into explicit concepts, decisions and test cases; preserve clinical review responsibility. |
| `documentation-approach-05-03-knowledge-representation` | Focus the engineering step: artifact authoring, dependency curation and version governance; link representation reference pages. |
| `documentation-approach-05-04-knowledge-execution-and-validation` | Separate structural validation, logic testing, clinical validation and local integration evidence; identify outputs for each. |
| `documentation-approach-05-05-knowledge-implementation` | Focus local governance, mappings, change review and feedback; send execution/integration mechanics to implementation pages. |
| `documentation-approach-05-06-agile-cpg-development-approach` | Replace many overlapping slogans with one iterative work-product cycle and a bounded test/review example; keep knowledge acquisition and clinical validation explicit. |

### Group C — implementation, conformance and reference pages (25 pages)

| Existing page basename | Rewrite/consolidation action |
|---|---|
| `index` | Lead with what this IG enables, its R4/STU2 scope, audiences and two concrete starting paths; retain acknowledgements and generated publication sections. |
| `documentation-approach-02-05-knowledge-implementation` | Implementation hub: separate execution method, integration mechanism and capability selection; add prerequisite/output links. |
| `documentation-approach-09-methods-of-implementation` | Own manual/translation/native comparison and CPG processing semantics; fix profile/narrative contradictions using protected FSH, distinguish base and CPG apply. |
| `documentation-approach-10-mechanisms-of-integration` | Own deployment/interface choices, data flow, authorization and client responsibilities; CDS Hooks is an interface, not an execution engine. |
| `documentation-approach-03-conformance-levels` | Describe enablement choices as capability planning guidance; retain the unfinished-conformance caveat and avoid invented certification tiers. |
| `documentation-conformance` | Own normative index, must-support interpretation and validation limits; preserve active verbs and reconcile naming by explicit source-backed editorial corrections only. |
| `activityflow` | Own definition/request/event transitions and resource-specific mapping tables; label pseudocode conceptual, fix unsupported status codes and incomplete transitions. |
| `interactive-cds` | Own missing-data collection cycle and questionnaire mappings; distinguish generated forms/adaptive orchestration/SDC next-question; correct reversed arrows and unknown placeholders. |
| `documentation-careplanning` | Connect health concern/goal/intervention/outcome to actual CarePlan/Goal examples; qualify outcome claims and distinguish care planning from definition execution. |
| `profiles` | Keep generated tables; provide exact artifact/domain/activity/content taxonomy and links; preserve profile obligations and data-exchange versus computability distinction. |
| `terminology` | Preserve requirements and lifecycle guidance; reconcile CRMI/CPG naming as an identified issue, retain define-versus-reference scope and expansion freshness. |
| `libraries` | Expand the currently terse entry point with CQL/ELM/Library roles, dependencies/data requirements and exact existing obligations; no engine or version upgrade. |
| `artifacts` | Keep all generated index includes and anchors; add a short “definition or patient instance?” navigation explanation. |
| `examples` | Keep all generated includes and anchors; organize introduction by task and warn that examples illustrate representation rather than current clinical guidance. |
| `examples-activities` | Add one consistent definition → request → event legend, traceability and packaging notes; preserve all example links. |
| `examples-chf` | Explain artifact graph and patient-instance walkthrough; retain generated lists and separate clinical example from conformance instructions. |
| `examples-hiv-guideline` | Make historical source/date and illustrative purpose prominent; preserve original clinical statements as attributed historical content, not fresh recommendations. |
| `checklists` | Add role/stage selection and links; explain checklist status versus formal profile/operation conformance. |
| `clinical-guidelines-development-L1-checklist` | Retain credited GIN/McMaster extension and all checklist items; improve introduction and table readability without reclassifying its requirements. |
| `clinical-guidelines-development-L2-checklist` | Retain item identifiers, Required markers and notes; explain expected L2 handoff evidence and historical standards references. |
| `clinical-guidelines-development-L3-checklist` | Retain identifiers and Required markers; align explanation to package validation, logic tests and clinical review. |
| `clinical-guidelines-development-L4-checklist` | Retain all items; clarify local deployment/mapping/workflow/evaluation evidence and link execution/integration choices. |
| `common-care-pathway` | Keep URL as the concise ambulatory worked pathway; fix CCG expansion and dispense/administration conflation, link detailed workflow discussion. |
| `downloads` | Keep package/download includes and publication links intact; explain definitions/examples/full IG contents briefly. |
| `changes` | Preserve historical chronology, issue references and release identity; edit only surrounding readability, never imply artifact changes this refresh does not make. |

## Critical semantic invariants

1. **Representation levels, functional tiers and enablement choices are separate axes.** L1–L4 are an explanatory representation continuum, not certification grades. Data/Logic/Forms are orthogonal responsibilities at each level. Shareable/Computable/Publishable/Executable artifact capabilities are another vocabulary and do not equate directly to L1–L4. The “levels of enablement” section lists implementation options while the conformance page explicitly says feature conformance remains under development.
2. **A definition is not a patient action.** R4 PlanDefinition is definitional; applying it constructs patient/context-specific requests. CPGRecommendationDefinition, CPGStrategyDefinition and CPGPathwayDefinition are PlanDefinition profiles. CPGStrategy is a RequestGroup profile. CPGCarePlan is CarePlan; CPGCase is EpisodeOfCare. CPGPlan and CPGProposal are conceptual labels, not standalone FHIR resource types/profiles defined here.
3. **Case-feature definition is not its instance.** CPGCaseFeatureDefinition profiles StructureDefinition (`kind=resource`, non-abstract, constraint). Patient observations, conditions, requests or other profiled resources realize relevant features. Assertions, inferred values, source provenance, time and clinically meaningful negatives must remain distinguishable. CPGCase does not become a container for every clinical feature merely because its name is “case.”
4. **Recommendation, acceptance, authorization and fulfillment remain separate.** Proposal/plan/order intents do not prove care occurred. Request status, Task execution status and event status answer different questions. Per-resource status/intent vocabularies override generic pseudocode. Rejected proposals are tracked with an appropriate Task; an initial dispense does not complete a prescription with remaining refills.
5. **CPG apply is not base R4 apply.** The local OperationDefinition returns zero or more subject-specific Bundles of transient request resources. Base R4 apply returns a CarePlan with a RequestGroup activity. The CPG operation may return RequestGroups with child request intent `option`; grouping is not mandatory. The caller decides persistence and execution. Never write that apply automatically enrolls a patient, writes an order or persists extracted facts.
6. **Clinical logic and delivery interfaces are different layers.** Library/CQL describe logic and dependencies; ELM is its executable representation. PlanDefinition relates triggers/conditions/actions; ActivityDefinition describes a resulting activity. CDS Hooks defines invocation and response contracts, not CQL execution semantics. SMART launch is a delivery/authentication context, not evidence that a clinical action was accepted or completed.
7. **Missing data is not an observed negative.** Preserve explicit unknown/missing/invalid/not-performed distinctions. CQL supports null/three-valued logic; a query filter retains true results. Explain re-evaluation after data capture and do not imply missing information automatically becomes false. Extraction, data validation, reconciliation/persistence and clinical acceptance are separate responsibilities; surface warnings as warnings without claiming invalid resources are generally safe to use.
8. **Formal conformance and clinical validity are separate checks.** Retain structural validation, unit/component/integration tests, expert clinical review and local usability/effectiveness evaluation as distinct tracks. A profile-valid artifact or passing test is not proof of improved outcomes or clinical safety.
9. **Scope stays FHIR R4 4.0.1.** Refresh citations to version-appropriate publications without copying R5 RequestOrchestration, newer operation contracts or new dependencies into the guide. A modern literature citation does not upgrade the normative stack.

## Source-backed factual issues and allowed corrections

| Issue and repository evidence | Correction permitted in explanatory prose | Primary evidence |
|---|---|---|
| `activityflow` event table maps QuestionnaireResponse to `cancelled`, `on-hold`, `failed` | Use its actual R4 codes or say “no direct equivalent”; R4 supports `in-progress`, `completed`, `amended`, `entered-in-error`, `stopped`. Do not invent an exact generic-state correspondence. | [R4 QuestionnaireResponse status](https://hl7.org/fhir/R4/valueset-questionnaire-answers-status.html) |
| Same table maps CPGCaseSummary, CPGCasePlanSummary and CPGCasePlanProgressingNote (Composition profiles) to `pending`, `complete`, `error` | Those are MeasureReport codes. Composition uses `preliminary`, `final`, `amended`, `entered-in-error`. Keep CPGMetricReport's valid MeasureReport mapping. | [R4 Composition status](https://hl7.org/fhir/R4/valueset-composition-status.html), [R4 MeasureReport status](https://hl7.org/fhir/R4/valueset-measure-report-status.html) |
| `documentation-approach-12-06-cpg-common-pathway` lists Task intent `optional` | Correct the literal code to `option`, and check the complete list against R4. | [R4 Task intent](https://hl7.org/fhir/R4/valueset-task-intent.html) |
| `common-care-pathway` expands CCG as Clinical Commissioning Groups and describes dispensing as administering | Use Computable Care Guidelines in this context; distinguish supplying/dispensing medication from administration to the patient. | IG conformance page's CCG context; [R4 MedicationDispense](https://hl7.org/fhir/R4/medicationdispense.html), [R4 MedicationAdministration](https://hl7.org/fhir/R4/medicationadministration.html) |
| `methods-of-implementation` general rule says only one triggering action; later pathway section allows several | Scope the one-start-trigger rule to relevant CPG recommendation/strategy semantics; describe pathway exception explicitly. Do not claim a base FHIR restriction: R4 `action.trigger` is repeatable. | [R4 PlanDefinition](https://hl7.org/fhir/R4/plandefinition.html), existing page's pathway paragraph; protected `cpg-computable-plandefinition.fsh` |
| Conceptual/pathway/methodology prose suggests unrestricted nesting/direct recommendation or activity references; strategy prose also says recommendations are only event-attached | Show the actual protected profile contracts: RecommendationDefinition → ComputableActivityDefinition or OrderSetDefinition; StrategyDefinition → RecommendationDefinition; PathwayDefinition → StrategyDefinition or WorkflowDefinition. Pathway `relatedAction` is 0..0. WorkflowDefinition supports broader workflow details. Label any wider architecture discussion conceptual. | Protected domain-profile FSH files; [R4 PlanDefinition boundaries](https://hl7.org/fhir/R4/plandefinition.html#bnr) |
| Conceptual “CPGStrategy as ECA rule,” CPGCaseFeatureGroup, CPGPathwayEligibilityCriteria and CPGPathwayEnrollmentCriteria sound like existing named profiles | Introduce exact defined names and distinguish proposed/conceptual constructs from current generated artifacts. Use `CPGStrategyDefinition` for the workflow-definition profile; do not create links to nonexistent profiles. | Protected profile inventory; [R4 definition pattern](https://hl7.org/fhir/R4/definition.html) |
| Apply discussion implies a returned RequestGroup always exists | Explain the CPG Bundle contract, optional grouping and transient output. Preserve child `option` intent when grouped. | Protected `operationdefinition-cpg-plandefinition-apply.fsh` comment and return parameter; [base R4 apply](https://hl7.org/fhir/R4/plandefinition-operation-apply.html) |
| `interactive-cds` mapping table says StructureDefinition → Questionnaire while following list reverses source and target | Normalize all mappings to input → output; correct `Questionnaire.type` to `Questionnaire.item.type` when describing item generation; replace `?? readOnly` with a stated unresolved/unsupported mapping, not a guessed algorithm. | Current table and generation OperationDefinitions; [R4 Questionnaire](https://hl7.org/fhir/R4/questionnaire.html) |
| “QuestionnaireResponse containing the Questionnaire” blurs canonical reference and containment | Say response is associated with the generated Questionnaire; describe containment only when actually used. Remove literal `\\n\\n`; keep non-adaptive PlanDefinition generation versus adaptive repeated StructureDefinition generation distinct. | [R4 QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html), protected questionnaire-generation operations |
| `terminology` alternates CPG and CRMI profile labels and says both that every value set SHALL be computable and that computable or expanded suffices | Preserve the conflicting active obligations for review; do not silently resolve this by changing SHALL to SHOULD or deleting a clause. Correct an identifier only with published profile identity evidence. The formal dependency set is protected. | Existing `terminology` and `documentation-conformance`; confirm selected CRMI publication against actual package availability before replacement |
| `profiles`, `libraries` and conformance prose link rolling CRMI/CQL builds while configuration declares only extensions dependency | Clearly distinguish cited external guidance from loaded dependencies and local profile constraints; no dependency upgrade or new conformance promise by citation alone. | `sushi-config.yaml`, protected local profiles; [R4 conformance rules](https://hl7.org/fhir/R4/conformance-rules.html) |
| Strong statements that order sets reduce error/improve outcomes and that the architecture enables learning-system feedback | Qualify as intended capabilities or evidence-supported effects in specified settings; attribute clinical examples to their original dates. Integrate the separate literature review rather than turning generic benefits into guarantees. | Separate evidence audit; [R4 conformance limits](https://hl7.org/fhir/R4/conformance-rules.html) |

Primary sources were opened during this audit for R4 PlanDefinition, base apply, conformance/must-support, QuestionnaireResponse/Composition/MeasureReport code sets, CDS Hooks 2.0, and the CQL Author's Guide. Published SDC 3.0.0 URLs were inaccessible through the browsing tool; a searchable 3.0.0-preview and the current 4.0.0 publication were visible. Do not silently select either as the normative edition. Verify an appropriate published SDC edition during citation integration. The live CQL Author's Guide now identifies itself as 2.0.0; cite its missing-information explanation only as background unless the selected edition is confirmed, and do not upgrade this guide's CQL artifacts.

## Requirements preservation ledger

The following are active obligations, separate from quoted clinical “should” statements and optional conceptual “may” descriptions. Preserve their actor, scope, verb and exceptions. Keep the requirements close to the implementing step and link them from the conformance index. Commented-out requirements in methodology are not active and must not be restored by deleting comment delimiters.

| Owning page | Obligations to preserve |
|---|---|
| `methodology` | MAY identify common personas, processes and settings using the named terminology; SHALL cite guideline supporting documentation in `relatedArtifact`; SHALL identify/document a rating system, provide recommendation strength and evidence quality using the named extensions; MAY provide directionality. SHOULD base case features on CPG event profiles and choose realm-appropriate interoperability profiles. SHALL use stated recommendation instance/event profiles and the RecommendationDefinition/StrategyDefinition/PathwayDefinition profiles; MAY derive additional recommendation-instance profiles. |
| `documentation-conformance` | Content IGs SHALL define a consistent must-support interpretation. Knowledge artifacts SHALL meet appropriate Shareable profiles; SHOULD meet Computable/Publishable/Executable profiles as applicable; SHALL document packaging/distribution targets. Content IGs SHOULD provide minimum case features and candidate interoperability profiles. Terminology and logic SHALL meet stated shareable baseline; SHOULD meet further profiles; SHALL document packaging/distribution and executable value-set maintenance. Preserve unfinished conformance-testing caveat. |
| `profiles` | Content SHALL use Shareable and SHOULD use Publishable profiles for the listed artifact types. SHOULD select target-appropriate interoperability profiles; international content SHOULD use IPS. Preserve the need for computability data/mappings beyond a summary model and availability-sensitive data support. |
| `terminology` | Defined code systems SHALL be shareable and active ones SHALL be publishable; reference-only systems are excluded. Preserve value-set compositional exclusivity, computable/expanded/shareable/publishable obligations, open/accessibile alternative expression guidance, narrative rules fallback, expansion currency/timestamp/parameter SHOULDs, maintenance and defined-versus-referenced scope. Flag the computable-versus-expanded contradiction rather than rewrite its strength. |
| `libraries` | Computable CQL content SHALL meet the Using CQL With FHIR profiles; CQL libraries SHALL use CQLLibrary, ELMLibrary and CQLModule in their stated computable/executable/dependency roles; ModelInfo SHALL use CQLModelInfo. Citation updates do not broaden which profiles actually exist locally. |
| `documentation-approach-12-06-cpg-common-pathway` | SHALL identify processes using the Common Processes code system; the case-reporting approach SHOULD align with the eCaseReporting implementation guide. Preserve both active obligations. |
| L1 checklist | Preserve all credited checklist statements, including lower-case shall concerning persistent version identification, plus attribution and applicability markers. |
| L2/L3 checklists | Each currently contains 14 “Required” markers; preserve the marked item and its context, not only the word count. Preserve all item identifiers, notes and historical references subject to documented link correction. |
| L4 checklist | Preserve all local feasibility, implementation, validation, monitoring and optimization items; no uppercase verbs does not mean the work can be discarded. |

### Active uppercase-language source lines

This extraction supplies exact pre-rewrite evidence for the small active uppercase set. It excludes lines wholly inside HTML comments. It is a preservation aid, not a declaration that every occurrence is normative; for example, quoted SHALL definitions and workflow-pattern descriptions are explanatory. The original page and surrounding section establish scope. Lower-case modal claims are separately retained by the page-level plan and reviewed for meaning.

#### `documentation-approach-12-06-cpg-common-pathway.md`

- Source line 28: Note that the Case and its associated data as defined by case feature groups and/or case features can be used to generate a case report at the end of the pathway. This approach SHOULD be aligned with the eCaseReporting implementation guide.
- Source line 40: Content conforming to this implementation guide SHALL identify processes using the [Common Processes code system](CodeSystem-cpg-common-process-cs.html).

#### `documentation-conformance.md`

- Source line 13: This specification uses the conformance verbs SHALL, SHOULD, and MAY as defined in [RFC 2119](https://tools.ietf.org/html/rfc2119). Unlike RFC 2119, however, this specification allows that different applications might not be able to interoperate because of how they use optional features. In particular:
- Source line 15: 1. SHALL: an absolute requirement for all implementations
- Source line 16: 2. SHALL NOT: an absolute prohibition against inclusion for all implementations
- Source line 17: 3. SHOULD/SHOULD NOT: A best practice or recommendation to be considered by implementers within the context of their particular implementation; there may be valid reasons to ignore an item, but the full implications must be understood and carefully weighed before choosing a different course
- Source line 18: 4. MAY: This is truly optional language for an implementation; can be included or omitted as the implementer decides with no implications
- Source line 24: In addition, because FHIR-based CPGs are themselves FHIR implementation guides, they SHALL include a statement describing how the _must support_ flag is to be interpreted for effective use of their content, and that statement SHALL be consistent with the general characterization of must support behavior described here. Examples of _must support_ declarations can be found in:
- Source line 34: * Knowledge Artifacts SHALL conform to at least the appropriate Shareable profile defined in the [Canonical Resource Management Infrastructure](http://hl7.org/fhir/uv/crmi) for the type of knowledge artifact
- Source line 35: * Knowledge Artifacts SHOULD conform to the appropriate Computable, Publishable, and Executable profiles in CRMI and this implementation guide for the type of knowledge artifact, and SHALL provide documentation describing the expected packaging and distribution targets for content.
- Source line 36: * Content implementation guides SHOULD provide _case features_ describing the minimum data set appropriate for their content
- Source line 37: * Content implementation guides SHOULD nominate a candidate set of _interoperability profiles_
- Source line 43: * Terminology distributed as part of content implementation guides SHALL conform to at least the appropriate Shareable profile.
- Source line 44: * Terminology distributed as part of content implementation guides SHOULD conform to the appropriate Computable, Publishable, and Executable profiles, and SHALL provide documentation describing the expected packaging and distribution targets for content, as well as an expected maintenance path for any executable value sets.
- Source line 50: * Logic distributed as part of content implementation guides SHALL conform to at least the ShareableLibrary profile defined in [CRMI](https://build.fhir.org/ig/HL7/crmi-ig)
- Source line 51: * Logic distributed as part of content implementation guides SHOULD conform to the Computable, Publishable, and Executable profiles, in [Using CQL With FHIR](https://build.fhir.org/ig/HL7/cql-ig), CRMI, and this impplelemtnation guide and SHALL provide documentation describing the expected packaging and distribution targets for content.

#### `libraries.md`

- Source line 1: This implementation guide uses the Library resource to represent libraries of computable content (such as Clinical Quality Language libraries). See the [Using CQL With FHIR](http://build.fhir.org/ig/HL7/cql-ig) for conformance expectations and guidance on the use of CQL with FHIR. Computable content using CQL SHALL conform to the profiles defined in the Using CQL With FHIR IG:
- Source line 3: * CQL Library - SHALL use CQLLibrary (for Computable content), ELMLibrary (for Executable content), and CQLModule (to provide structured representation of dependencies and data requirements)
- Source line 4: * CQL ModelInfo - SHALL use CQLModelInfo

#### `methodology.md`

- Source line 165: Content conforming to this implementation guide MAY identify personas using the [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system.
- Source line 193: Content conforming to this implementation guide MAY identify processes using the [Common Processes](CodeSystem-cpg-common-process-cs.html) code system.
- Source line 201: Content conforming to this implementation guide MAY identify settings using the [HL7 V3 ServiceDeliveryLocationRoleType](http://hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html) value set.
- Source line 217: Content conforming to this implementation guide SHALL provide references to supporting documentation for a recommendation in the form of a `relatedArtifact` element specifying a citation to the guideline.
- Source line 219: Due to the variability in rating systems among guideline content, this implementation is not prescriptive about what grading system should be used, and the example bindings from the base specification apply. However, content conforming to this implementation guide SHALL identify a rating system and use that to provide rating information for recommendations and guidance, and provide documentation on what rating system was selected and how it is communicated through the content.
- Source line 221: Content conforming to this implementation guide SHALL provide the strength of a recommendation using the [strengthOfRecommendation](http://hl7.org/fhir/R4/extension-cqf-strengthofrecommendation.html) extension.
- Source line 223: Content conforming to this implementation guide SHALL provide the quality of evidence for a recommendation using the [qualityOfEvidence](http://hl7.org/fhir/R4/extension-cqf-qualityofevidence.html) extension.
- Source line 225: Content conforming to this implementation guide MAY provide the directionality of a recommendation using the [directionOfRecommendation](StructureDefinition-cpg-directionOfRecommendation.html) extension.
- Source line 331: Content conforming to this implementation guide SHOULD use the [CPG Event Activity Profiles](profiles.html#activity-profiles) as the basis for case feature definitions.
- Source line 333: In addition, content implementation guides will typically select a target realm for deployment, and SHOULD select a set of [Interoperability Profiles](profiles.html#content-profiles) appropriate for that realm.
- Source line 423: Content conforming to this implementation guide SHALL use one of the recommendation instance profiles described above to ensure supporting information related to the recommendation is preserved through the recommendation instance.
- Source line 425: Specific guideline content MAY define derived profiles for recommendation instances establishing additional constraints.
- Source line 461: Content conforming to this implementation guide SHALL use the event profiles defined above to ensure guideline supporting and tracking information is available for activities delivered in the context of a computable guideline.
- Source line 473: Content conforming to this implementation guide SHALL use the [cpg-recommendationdefinition](StructureDefinition-cpg-recommendationdefinition.html) profile to represent recommendation definitions.
- Source line 486: Content conforming to this implementation guide SHALL use the [cpg-strategydefinition](StructureDefinition-cpg-strategydefinition.html) profile to represent strategy definitions.
- Source line 505: Content conforming to this implementation guide SHALL use the [cpg-pathwaydefinition](StructureDefinition-cpg-pathwaydefinition.html) profile to represent pathway definitions.

#### `profiles.md`

- Source line 22: In addition, content claiming conformance to this implementation guide SHALL use the Shareable profile and SHOULD use the Publishable profile for the following artifact types:
- Source line 107: Content conforming to this IG **SHOULD** select a set of base interoperability profiles appropriate for the intended target. For international usage, implementation guides conforming to this IG **SHOULD** use [International Patient Summary](http://hl7.org/fhir/uv/ips).

#### `terminology.md`

- Source line 24: Code systems defined by content conforming to this IG SHALL conform to the CRMIShareableCodeSystem profile, and SHALL conform to the CRMIPublishableCodeSystem profile if the artifact status is active.
- Source line 43: The ExpandedValueSet profile provides support for including a persisted point-in-time expansion that SHALL conform to the chosen compositional style for the value set. The included point-in-time expansion can then be used by FHIR implementations that do not have a FHIR terminology service capable of evaluating the value set in real-time with an `$expand` operation. It also provides all the concepts needed in the expansion so that a complete code system resource is not required.
- Source line 47: Whenever possible, value sets SHOULD be defined by crafting one or more inclusion and exclusion criteria that use code system properties, attributes, and relationships. In this way, the resulting definition can be used to find potential new value set members with each new code system version update. When this is not possible, value sets may be wholly or partially defined by enumerating single concept codes.
- Source line 49: Some value sets cannot be defined using the standard FHIR compose structure with include and exclude elements. For these cases, the description of the construction of the value set SHOULD be represented with non-FHIR expressions using a computable expression in some terminology grammar. For value sets expressed in this way, the language must be sufficiently open and accessible that a user could construct the value set following the semantics without needing to use a proprietary implementation.
- Source line 53: Value sets defined by content conforming to this IG SHALL use the CRMIComputableValueSet profile to define value set member content in one of three ways. This profile requires that one and only one of the following three approaches can be used for an instance of the value set, in order of preference:
- Source line 59: The CRMIExpandedValueSet profile supports providing a point-in-time expansion of the value set members using the `ValueSet.expansion` element containing specific individual concept codes obtained as a result of the computed expansion of the value set at the time of publication. The expansion element can be used to support environments where the actual definition cannot be evaluated. As new versions of the value set, and/or as new versions of the code systems used by the value set are released, the expansion content will need to be updated to incorporate newly defined codes that meet the value set intent. Before and periodically during production use, value set expansions SHOULD be updated.
- Source line 61: Value sets defined by content conforming to this IG SHOULD include an expansion element with a timestamp and enough information to determine whether the computed expansion is current, or needs to be updated. The parameters element SHOULD be used to convey information about the parameters used to expand the value set.
- Source line 63: Value sets defined by content conforming to this IG SHALL conform to:

## Diagram handoff and verification gates

The diagram inventory owns file-by-file asset treatment. Use the shared standard-library renderer at `diagrams/render_narrative.py`. Group A should aim for 5–8 reusable focused SVGs, generally fewer than six boxes per figure, reusing a clear conceptual view rather than redrawing duplicated overviews. The original anchor inventory is `docs/narrative-refresh/original-anchors.json`. Recreated diagrams must use the same vocabulary as the rewritten text, have a single reading direction and a legend, name exact FHIR resources/profile roles, and distinguish definitions from instances and optional from required relationships. Prefer a small number of focused diagrams plus accompanying textual mappings to dense all-in-one architectures. A resource-state diagram must use resource-specific R4 codes; a conceptual lifecycle diagram must say it is conceptual. Preserve source attribution when redrawing a published figure.

Before accepting the rewrite: verify all 57 pages have an owner and a review outcome; retain old page URLs and linked anchors; compare active normative sentences and checklist markers with this baseline; check named profiles and operation signatures against protected source; inspect generated tables/includes; validate relative links and image references; and build/render the IG using its existing workflow. Build success is separate from conformance-semantic review and from visual diagram review. Keep a list of unresolved specification inconsistencies rather than changing protected artifacts to make prose appear consistent.
