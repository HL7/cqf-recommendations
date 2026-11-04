The [Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-plan) describes reusable guidance, including which [Activities](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-activity) to consider, when they apply and how they relate. The profiles below express these definitions. Patient-specific results can inform a [Care Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-care-plan).

<div style="clear: both;">
  <img src="cpg-model-definitions.svg" alt="A pathway definition references strategy or workflow definitions; a strategy definition references recommendation definitions, which reference activity or order-set definitions" class="img-responsive" width="1000"/>
</div>

*Definition relationships supported by the named CPG profiles. Original illustration; the diagram shows the strategy branch, with the workflow alternative called out separately. It does not imply that references alone execute actions.*

### Recommendations

A [Recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation) uses [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html), a PlanDefinition profile with type `eca-rule`. An invocation or trigger establishes context for the event-condition-action rule. The applicability logic evaluates that context to identify the activity to propose.

#### Separating Clinical Decision Logic from Patient Descriptive Logic

Give patient descriptions reusable names, such as a measurement, calculated change or assessed state. Recommendation logic then asks what care to propose for that state. Keep the underlying calculation out of form behavior and avoid copying it into several recommendations. [Case Features](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature) provide this descriptive layer.

<a id="cpgrecommendation-as-a-profiled-fhir-eca-rule"></a>

#### Recommendation as a profiled FHIR ECA Rule

The recommendation definition can reference a [CPGComputableActivityDefinition](StructureDefinition-cpg-computableactivity.html) or [CPGOrderSetDefinition](StructureDefinition-cpg-ordersetdefinition.html) through `action.definitionCanonical`. Evaluation can return a patient-specific [Proposal](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-proposal). The receiving workflow determines which proposed activities to accept and how to record them. See [Activity Flow](activityflow.html#purpose-and-rationale).

For each recommendation, identify the trigger or invocation, data requirements, applicability expression, proposed activity and supporting patient information. A negative recommendation describes a proposal not to perform an activity; it is not evidence that the activity was absent. See [processing semantics](documentation-approach-09-methods-of-implementation.html).

#### Directionality and Strength of a Recommendation

Preserve the source guideline's direction and strength. Direction describes whether care is recommended for or against; strength qualifies the recommendation. These are not the request's authorization or completion state. The [methodology's supporting-information requirements](methodology-select.html#guideline-supporting-information) specify the extensions and documentation used to communicate the chosen rating system.

#### Quality of Evidence and Evidence for Recommendations

Keep the quality of [Evidence](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-evidence) separate from recommendation strength and from confidence in an individual patient's data. Link the recommendation to its supporting citation and retain the rating system and evidence context. Evidence references do not themselves notify downstream systems when a publication changes; update detection and review need an implementation process.

#### Evidence Resource Variables Informing CPG Formalization (Logic and Semantics)

Evidence descriptions can help identify the relevant population, intervention, comparator, outcomes, timing and setting. They inform the clinical interpretation; they do not automatically generate executable criteria. Use R4 [Evidence](https://hl7.org/fhir/R4/evidence.html) and [EvidenceVariable](https://hl7.org/fhir/R4/evidencevariable.html) only within their supported scope, and review the translation into terminology and logic.

### Strategies

A [Strategy](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy) groups related recommendations for a clinical concern or context. Its reusable definition uses [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html), a PlanDefinition profile with type `workflow-definition`. Its actions can describe relationships among those recommendations. A patient-specific [CPGStrategy](StructureDefinition-cpg-strategy.html) uses RequestGroup to represent related requests and their options.

<a id="cpgstrategies-as-a-profiled-fhir-eca-rule"></a>
<a id="strategies-as-a-profiled-fhir-eca-rule"></a>

#### Strategy definitions and event-driven evaluation

A strategy can coordinate event-driven recommendation evaluation, but the exact strategy-definition profile is not the recommendation's `eca-rule` profile. Its `action.definitionCanonical` targets CPGRecommendationDefinition. Broader local workflow and subprocess arrangements belong in the appropriate workflow definition and implementation design, not in unsupported strategy references.

### Pathways

<a id="cpgpathway-as-a-profiled-fhir-plandefinition"></a>

#### Pathway as a profiled FHIR PlanDefinition

A [Pathway](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-pathway) groups guidance over time, potentially with several time- or event-based entry points. It uses [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html), a PlanDefinition profile with type `clinical-protocol`. Its action definitions reference CPGStrategyDefinition or [CPGWorkflowDefinition](StructureDefinition-cpg-workflowdefinition.html). The pathway profile prohibits `action.relatedAction`; it is not a generic unrestricted workflow graph.

| Definition | Primary role | Allowed action definition targets |
|---|---|---|
| RecommendationDefinition | Applicability and proposed activity | ComputableActivityDefinition or OrderSetDefinition |
| StrategyDefinition | Related recommendations | RecommendationDefinition |
| PathwayDefinition | Longitudinal grouping | StrategyDefinition or WorkflowDefinition |
| WorkflowDefinition | Workflow-specific structure | See its broader action contract and local implementation |

#### Pathway Eligibility

[Pathway Eligibility Criteria](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-pathway-eligibility-criteria) specify whether a patient meets the clinical scope of a pathway. Define the population, exclusions, temporal conditions and handling of missing data explicitly. Eligibility can change as patient information changes; it is not the same as enrollment.

#### Pathway Enrollment

Enrollment records that a patient is participating in the pathway. [CPGCase](StructureDefinition-cpg-case.html) uses EpisodeOfCare with the `enrolledIn` extension to relate enrollment to the relevant definition. An eligible patient need not be enrolled. Use the episode’s [Pathway Enrollment Status](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-pathway-enrollment-status) to distinguish active participation from past enrollment.

#### Auto-Enrollment, Prompted-Enrollment, and Opt-in Enrollment

The processing approach supports automatic, prompted and manual enrollment. Choose the appropriate policy locally, including responsibility, consent or review where applicable. Evaluation can propose an enrollment activity; persistence and authorization are separate decisions of the caller and workflow.

#### Multi-stage “Filtering” for Appropriateness of Guideline-Directed Care

Keep population eligibility, exclusions, enrollment and individual recommendation applicability visible as separate decisions. Record which decision prevented guidance and whether it was false, unknown or unavailable. Do not interpret missing information as a clinical exclusion without an explicit rule.

<a id="cpgpathwayenrollmentcriteria-as-a-profiled-eca-rule"></a>

<a id="pathway-enrollment-criteria-as-a-profiled-eca-rule"></a>

#### Pathway Enrollment Criteria

[Pathway Enrollment Criteria](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-pathway-enrollment-criteria) describe when to propose or initiate enrollment. Represent the rule using the applicable definition and [CPGEnrollmentActivity](StructureDefinition-cpg-enrollmentactivity.html). Validate its references and resulting CPGCase against the formal artifacts.

<a id="cpgpathway-as-a-composite-asset"></a>

#### Pathway as a composite asset

A pathway references a useful subset of a guideline's knowledge. The complete guideline package can also contain terminology, profiles, summaries, measures, tests and documentation that are not direct pathway action targets. See [packaging and derivatives](documentation-approach-12-07-cpg-derivative-and-related-assets.html).

Before implementation, review the [methodology](methodology.html), exact profile constraints and [CPG apply operation](OperationDefinition-cpg-plandefinition-apply.html). A successfully evaluated definition does not prove that its proposed care is appropriate for every local patient or that it has been delivered.
