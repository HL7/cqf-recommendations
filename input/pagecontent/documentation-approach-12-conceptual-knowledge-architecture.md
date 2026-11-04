Use this model to decide where a piece of guideline content belongs before selecting a FHIR resource. It separates reusable clinical knowledge from patient-specific information and local workflow. The [FHIR architecture](documentation-approach-06-03-knowledge-architecture.html) gives the corresponding resource contracts.

### Separation of Concerns

<div style="clear: both;">
  <img src="cpg-model-boundaries.svg" alt="Case describes the patient. The reusable Plan uses Case information to propose care. Local Workflow reviews, authorizes, and documents care for later evaluation." class="img-responsive" width="1000"/>
</div>

*Conceptual boundaries. Original illustration for this guide; arrows show information use and feedback, not automatic authorization or execution.*

<a id="separating-and-defining-case-plan-and-workflowdocumentation-approach-12-02-separating-and-defining-case-plan-and-workflowhtml"></a>

### Separating and Defining Case, Plan, and Workflow

| Concept | Question | Representation in this guide |
|---|---|---|
| [Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case) | What is known or inferred about this patient? | Case-feature definitions describe data expectations; patient resources carry the values. CPGCase is an EpisodeOfCare recording enrollment. |
| [Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-plan) | What care is recommended for a class of patients? | Recommendation, strategy and pathway **definitions** use PlanDefinition profiles. |
| [Care Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-care-plan) | What care is proposed or planned for this patient? | CPGCarePlan uses CarePlan; CPGStrategy uses RequestGroup; individual activities use request profiles. |
| [Workflow](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-workflow) | Who does the work, when and through which system? | Abstract processes guide placement; requests, Tasks and events convey local execution state. |

<a id="casedocumentation-approach-12-04-cpg-casehtml"></a>

#### Case

Begin with [Case Features](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature): their clinical meaning, source, time, terminology and whether they are asserted or inferred. A clinical record can contain unknown, contradictory or outdated information; the model does not make those distinctions disappear.

<a id="plandocumentation-approach-12-03-cpg-planhtml"></a>

#### Plan

Use [definitions](documentation-approach-12-03-cpg-plan.html) to express recommendation applicability, activity templates and relationships. A definition is reusable knowledge. It does not assert that any patient has accepted or received the recommended care.

#### Workflow

Use the [common-pathway discussion](documentation-approach-12-06-cpg-common-pathway.html) to relate a recommendation to a recognizable care process. Specify the actual local trigger, responsible actor and follow-up separately.

<a id="boundary-issues-at-the-separation-of-domain-concernsdocumentation-approach-12-02-separating-and-defining-case-plan-and-workflowhtml"></a>

### Boundary Issues at the Separation of Domain Concerns

#### Examples of Boundary Issues in the CPG covered in detail

An order can be relevant both to the care plan and to a later assessment of patient state. A completed event can fulfill an order and become an input to another recommendation. A metric can describe the relationship between a proposed action and documented care. Reuse the same linked facts; do not duplicate them merely because they serve two roles.

The [boundary examples](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html) explain these cases. Keep the difference between intent, authorization, execution and observation visible in every derived view.

<a id="cpg-formalizations-of-domain-concerns--concepts"></a>

### Formal profiles

<a id="cpgcase-cpgplan-and-cpgcareplan"></a>

#### Case, Plan, and Care Plan profiles

The names in the conceptual model are not all profile names. Use these exact implementation entry points:

- <a id="plan-1"></a>**Plan:** [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html), [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html), [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html).
- <a id="case-1"></a>**Case:** [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html) for a definition; [CPGCase](StructureDefinition-cpg-case.html) for enrollment; the relevant clinical resource for a feature value.
- <a id="care-plan"></a>**Care Plan:** [CPGCarePlan](StructureDefinition-cpg-careplan.html) and [CPGStrategy](StructureDefinition-cpg-strategy.html) for patient-specific planning and optionality.

<a id="workflow-and-common-pathwaydocumentation-approach-12-06-cpg-common-pathwayhtml"></a>

### Workflow and Common Pathway

The [workflow page](documentation-approach-12-06-cpg-common-pathway.html) connects abstract care processes to requests, Tasks, events and delivery interfaces. The [activity lifecycle](activityflow.html#purpose-and-rationale) supplies resource-specific status mappings. A conceptual diagram does not override those mappings.

<a id="care-plandocumentation-approach-12-05-cpg-careplanhtml"></a>

<a id="cpgguideline"></a>

### Guideline

A content implementation guide packages the relevant definitions, profiles, terminology, libraries, examples and documentation. The package is broader than a single pathway. See [guideline packaging](documentation-approach-12-07-cpg-derivative-and-related-assets.html#guideline).

<a id="derivative--related-assets"></a>

### Guideline, Derivative, and Related Assets

[Metrics, summaries, measures and reports](documentation-approach-12-07-cpg-derivative-and-related-assets.html) can reuse guideline concepts and logic. Each derivative still needs its own purpose, scope and validation. A computable representation supports reuse; it does not establish clinical benefit or complete local interoperability.

### Conceptual Knowledge Architecture Index

The [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) maps each concept to its explanation, legacy names and formal profiles.
