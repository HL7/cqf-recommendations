This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

The conceptual knowledge architecture for the CPG describes how the concepts from a guideline and its recommendations described in [Guideline Development](documentation-approach-04-guideline-development.html) are realized as computable knowledge assets. The CPG knowledge architecture provides the framework through which the knowledge engineering team realizes the guideline, its recommendations, and their various features through explicit formalisms and ultimately as information. The CPG conceptual knowledge architecture together with the implementation instructions and examples in the [Methodology](methodology.html) section provide the means to develop and concretize a CPG representation that can be consumed through various mechanisms in end-user workflows.

This section covers:

*   [Separations of Concerns](documentation-approach-12-01-separations-of-concerns-in-the-cpg.html)
*   [Separating and Defining Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html)
*   [Plan](documentation-approach-12-03-cpg-plan.html)
*   [Case](documentation-approach-12-04-cpg-case.html)
*   [Care Plan](documentation-approach-12-05-cpg-careplan.html)
*   [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html)
*   [Guideline, Derivative, and Related Assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html)
*   [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html)

<div class="new-content" markdown="1">

Start with three questions: What do we know about this patient? What care does the guideline recommend? How will people and systems deliver that care? The answers define the Case, Plan, and Workflow. Keeping them separate lets a clinical reviewer assess a recommendation, a terminology specialist review its inputs, and an implementer change how it is delivered without silently changing its meaning.

</div>

### The Model at a Glance {#model-at-a-glance}

Figure 1. The CPG Pathway Definition that contains all the CPG-specific knowledge content and assets including the [Recommendations](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation) (and [Strategies](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy)); The Case that scopes all the required data elements ([Case Features](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature)) including many of the patient-specific inferences thereon (inferred Case Features); and the Care Plan that includes the patient-specific recommendations ([Proposals](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-proposal)) and any resulting or relevant orders, prescriptions, scheduling ([Requests](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-request)) and the data elements representing the events that fulfill these requests (a subset of the Case Features)

<div class="modified-content" markdown="1">

{% include cpg-diagram.html src="cpg-model-boundaries.svg" ratio="1200 / 832" alt="The orange Plan lane includes strategies, recommendations, and a reusable workflow definition. Local implementation connects the workflow definition to the blue lane's patient care processes and records. The green Case lane holds recorded and derived patient facts." %}

</div>

<div class="new-content" markdown="1">

| Concern | Question it answers | In the CHF example |
|---|---|---|
| [Case](#case) | What patient information matters to the guideline? | Recorded weights, derived weight change, and other relevant patient facts. |
| [Plan](#plan) | What care should be considered for patients in scope? | A pathway definition groups Daily Management and Hypervolemia strategies. |
| [Care plan](#care-plan) | What is proposed or intended for this patient? | A patient-specific CarePlan links goals and activities, including realizations of the two strategies. |
| [Workflow](#workflow) | Who reviews and carries out the work, when, and where? | To implement the example, the local site would decide how to obtain and review measurements and make them available for later evaluation. |
{:.grid}

The [congestive heart failure (CHF) example](examples-chf.html) illustrates the model with a pathway and a patient case. Dijkstra described separation of concerns as examining one aspect of a problem at a time ([Dijkstra, 1982](documentation-approach-cds-implementation-evidence.html#ref-dijkstra-1982)). In [problem-oriented clinical documentation](documentation-approach-cds-implementation-evidence.html#ref-weed-1968), separating assessment from plan serves a similar purpose. The [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) connects the guide's terms to their formal profiles.

</div>

### Separation of Concerns {#separation-of-concerns}

Separation of concerns is a design principle that gives distinct, focused attention to each aspect of a domain. In healthcare, a critical axis of separation is by kind of process:

1. **Case**: the patient's clinicopathological processes (pathophysiology and its clinical manifestations, including normal physiology)
2. **Plan**: clinical decision-making and the corresponding care process, abstracted from the specifics of a care setting
3. **Workflow**: the care delivery process by which care is carried out in a specific setting, including the clinical information systems used

The CPG knowledge architecture is designed to respect these separations. See [Separations of Concerns](documentation-approach-12-01-separations-of-concerns-in-the-cpg.html) for other axes of separation (for example, by condition, intervention, or care setting), and [Separating and Defining Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html) for the definitions and the boundary issues between them.

Figure 2. Illustrating the separation of the [Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case) (patient clinicopathophysiological processes and their manifestations and qualifications thereof), the [Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-plan) (the approach to the patient’s current, historical, and potential future state of disease and well-being including medical decision-making), and the Workflow (how the Plan is implemented either through interactions with clinical information systems or through real-world human tasks and activities).

<img src="CPG-12-01.png" alt="Separation of Concerns" class="img-responsive img-rounded center-block" width=300/>

<div class="new-content" markdown="1">

#### Scope Guidance across Clinical Concerns {#scope-and-shared-features}

A guideline can be scoped by condition, intervention, care setting, or activity such as prevention or follow-up. A strategy can group recommendations that address one concern within that scope. Where two guidelines or strategies need the same clinical fact, identify the Case Feature definition in each consumer's data requirements and check that its meaning, time window, and source fit both uses. When guidance in one scope depends on care proposed or delivered in another, identify the request or event each rule uses and which team reconciles competing plans. See [Separations of Concerns](documentation-approach-12-01-separations-of-concerns-in-the-cpg.html).

### Case {#case}

The Case comprises the recorded facts, clinical assessments, and computational inferences relevant to a guideline. In the CHF example, the case includes a condition, an encounter, and observations. The formal [CPGCase](StructureDefinition-cpg-case.html) profile has a narrower role than the Case concept: it represents the patient's [enrollment](#enrollment) as an EpisodeOfCare. Patient data remain in the resources that express those facts. See [Case](documentation-approach-12-04-cpg-case.html).

#### Case Features {#case-features}

A case feature is a meaningful piece of patient information. It can be a measurement, a condition, a request, an exposure, an assessment, or a derived value. [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html) profiles StructureDefinition to specify how to represent a feature. In the CHF example, the [CHF body weight profile](StructureDefinition-chf-bodyweight.html) defines the representation; a patient Observation supplies a value, units, and time.

When defining a feature, agree on the terminology, units, source, time window, number of expected values, and selection rule. For weight, the admission value and the latest measurement in an encounter answer different questions. Specify what to do with missing, stale, and conflicting records. [Pretty et al.](documentation-approach-cds-implementation-evidence.html#ref-pretty-2023) illustrate why ambiguous or composite data elements need clinical review before terminology can be aligned.

The [CHF body weight change feature](StructureDefinition-chf-bodyweight-change.html) shows how a calculation can become a reusable description of patient state. Feature definitions can use the `inferenceExpression`, `assertionExpression`, and `featureExpression` extensions for their respective roles. Trace the selected measurements, time context, expression version, and any other inferred features the calculation depends on. If an inference is stored in an Observation, retain its computational origin. See [Case Features](documentation-approach-12-04-cpg-case.html#case-features).

#### Gather a Clinician Assessment {#clinician-assessment}

Some features depend on clinical judgment. For example, observations and calculated changes can support a clinician's assessment of volume status. Present the relevant facts and inferences, then capture the clinician's assessment with its own author, time, and supporting information in an appropriate resource such as [CPGClinicalImpression](StructureDefinition-cpg-clinicalimpression.html). Scope the prompt or form to the recommendation, strategy, or pathway that uses the assessment. Identify other guidance that depends on the feature and what happens when the assessment is unavailable. See [Interactive Clinical Decision Support](interactive-cds.html) and [SDC adaptive forms](https://hl7.org/fhir/uv/sdc/adaptive.html).

#### Case Summaries {#case-summary}

Group related features for a purpose, such as showing the inputs to a calculation or explaining why a recommendation applies. A [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html) uses GraphDefinition to describe relevant relationships; a [CPGCaseSummary](StructureDefinition-cpg-casesummary.html) uses Composition to present a patient-specific selection. Distinguish relationships such as "derived from," "supports this proposal," and "fulfills this request." A shared code alone cannot establish any of these relationships. See [Case Summary](documentation-approach-12-04-cpg-case.html#case-summary).

The CHF [case plan summary](Composition-chf-scenario1-caseplansummary.html) brings features, goals, planned items, and events together. Give such a view a scope and time. Show which items are suggested, authorized, or documented as having occurred, and make gaps visible when the information is unavailable.

#### Pertinence Relationships {#pertinence-relationships}

Pertinence describes how a patient fact bears on a particular finding or recommendation. A fact can support or weigh against a finding, and an optional rating can express how much weight the fact carries in that context. The system can record the link from the record it manages. See [how to represent pertinence relationships](methodology-translate.html#pertinence-relationships).

### Plan {#plan}

The Plan is reusable guidance: which activities to consider, under which conditions, and how they relate. Its recommendation, strategy, workflow, and pathway definitions use different PlanDefinition profiles. A pathway can reference both strategies, which group clinical recommendations, and workflow definitions, which describe how activities are coordinated. The [FHIR resource map](documentation-approach-02-04-knowledge-representation.html#resource-map) places these definitions alongside the data, logic, and activity definitions they use. See [Plan](documentation-approach-12-03-cpg-plan.html).

{% include cpg-diagram.html src="cpg-model-definitions.svg" ratio="1200 / 604" alt="A pathway can reference both strategy and workflow definitions. Strategies group recommendations that reference activity or order set definitions. Workflow definitions describe activities, their relationships, participants, inputs, and outputs. All are reusable guidance." %}

#### Recommendations {#recommendations}

[CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html) uses type `eca-rule` for an event, condition, and action. Identify the invocation or trigger, the data and conditions used to determine applicability, and what to propose. Its `action.definitionCanonical` can reference a [CPGComputableActivityDefinition](StructureDefinition-cpg-computableactivity.html) or [CPGOrderSetDefinition](StructureDefinition-cpg-ordersetdefinition.html) for the Definition phase of [Activity Flow](activityflow.html#purpose-and-rationale). The [CHF Body Weight Change recommendation](PlanDefinition-chf-bodyweight-change-pd.html) specifies a periodic activity to record inferred weight change, followed by a reporting activity.

Keep the calculation that describes the patient separate from the rule that decides what to propose. Preserve the direction and strength of the source recommendation, its rating system, and its [supporting evidence](methodology-select.html#guideline-supporting-information). Evidence quality qualifies the guideline's evidence; a recommendation's applicability also depends on the information available for this patient. A proposal against an activity expresses guidance against performing it. Evidence about whether it occurred comes from the patient record. Where a guideline offers alternatives, it can also convey its [preference among the options](documentation-approach-12-03-cpg-plan.html#preference-among-options). See [Recommendations](documentation-approach-12-03-cpg-plan.html#recommendations).

#### Strategies {#strategies}

[CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html) groups recommendations for a clinical concern or context. It uses type `workflow-definition`, and its `action.definitionCanonical` targets recommendation definitions. The [CHF Daily Management definition](PlanDefinition-chf-daily-management.html) groups recommendations for body weight, weight change, urine output, and net intake and output. Its patient-specific counterpart, [CPGStrategy](StructureDefinition-cpg-strategy.html), uses RequestGroup to organize activities and their options. See [Strategies](documentation-approach-12-03-cpg-plan.html#strategies).

A strategy can express how related recommendations are intended to work together, so the team can review their sequencing and dependencies. Specify when each recommendation can be evaluated and whether it depends on a Case Feature, a prior proposal, an authorized request, or a documented event. For example, if guidance calls for reassessment after an intervention, establish which event starts the interval and what happens if fulfillment is partial or unknown. A source recommendation, decision table, or flow diagram may describe the relationships. When the source leaves sequencing or a conflict unresolved, record the interpretation with the guideline team before encoding it. Use the [processing rules](documentation-approach-09-methods-of-implementation.html#plandefinition-processing-semantics) to express the agreed dependencies.

#### Pathways {#pathways}

[CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html) uses type `clinical-protocol` to group guidance over time. Its actions reference strategy or [workflow definitions](StructureDefinition-cpg-workflowdefinition.html), and the profile prohibits `action.relatedAction` on the pathway. Use the appropriate definition to express more detailed relationships. The [CHF pathway definition](PlanDefinition-chf-pathway.html) references the Daily Management and Hypervolemia strategies; the full guideline package can contain artifacts beyond those referenced by the pathway. See [Pathways](documentation-approach-12-03-cpg-plan.html#pathways).

#### Eligibility and Enrollment {#enrollment}

Eligibility asks whether a patient meets the pathway's population, exclusion, and timing criteria. Enrollment records participation. Individual recommendation applicability is a further decision based on the patient's context at evaluation time. Keep the decisions separate and record whether each could be determined from available data.

The [CHF example](examples-chf.html#example-case) describes a patient whose admitting diagnosis meets the group criteria. Its [active EpisodeOfCare](EpisodeOfCare-chf-scenario1-eoc.html) uses the `enrolledIn` extension to point to the CHF pathway. The episode's status and period convey participation over time.

Local policy can enroll eligible patients automatically under defined criteria, prompt the care team to review eligibility and context, or allow a team member to initiate enrollment without a prompt. A site can use more than one of these routes. Consider patient preferences and clinical factors that can affect participation, and specify who may authorize and record it. Use the relevant rule and [CPGEnrollmentActivity](StructureDefinition-cpg-enrollmentactivity.html) for a proposed enrollment activity. See [Pathway Eligibility](documentation-approach-12-03-cpg-plan.html#pathway-eligibility) and [Pathway Enrollment](documentation-approach-12-03-cpg-plan.html#pathway-enrollment).

### Care Plan {#care-plan}

A patient-specific proposal is one input to care planning. The care team reviews the response to treatment and reconciles proposed activities with active orders, other conditions, and the patient's goals and preferences when agreeing on intended care.

[CPGCarePlan](StructureDefinition-cpg-careplan.html) connects the patient's concerns, goals, and activities. The [example CarePlan](CarePlan-chf-scenario1-careplan.html) has Daily Management and Hypervolemia RequestGroups for the patient. Proposals, planned or authorized requests, and the events that fulfill those requests correspond to the patient-specific phases of [Activity Flow](activityflow.html#purpose-and-rationale). See [Care Plan](documentation-approach-12-05-cpg-careplan.html).

The word *plan* can refer to several related things. Qualify it when describing a resource or a transition.

| Meaning | Representation | What it conveys |
| --- | --- | --- |
| Reusable guidance | PlanDefinition and ActivityDefinition | Care to consider for patients in scope. |
| A patient's care plan | CarePlan | The patient's concerns, goals, and intended care. |
| A planned activity | A request with the applicable `plan` intent | An intention to pursue the activity, before an authorized order. |
| Grouped choices | RequestGroup | Related requests and their optionality. |
{:.grid}

Applying a recommendation may construct a proposal using a patient-specific request profile, such as [CPGServiceRequest](StructureDefinition-cpg-servicerequest.html) or [CPGMedicationRequest](StructureDefinition-cpg-medicationrequest.html). [CPG PlanDefinition apply](OperationDefinition-cpg-plandefinition-apply.html) returns transient results in subject-specific Bundles. The caller decides what to persist and how to proceed. Where a RequestGroup preserves options, the child requests use intent `option`, and each option can carry the guideline's [preference](documentation-approach-12-03-cpg-plan.html#preference-among-options) for it; selecting one for subsequent care requires the appropriate independent request and intent.

#### Show the Patient Information Supporting a Proposal {#proposal-support}

Show which patient facts explain why the proposal was generated and which additional facts help a clinician decide whether to act. A Case Feature Group or Case Plan Summary can bring together indications, contraindications, and prior requests or events. For example, a relative contraindication outside the rule's inputs may still matter to the clinician. Keep the proposal's originating definition, supporting evidence, and relevant patient information traceable.

Recommendation `action.input` describes information relevant to applicability. When `action.output` specifies information to include with the proposal, the [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html) profile recommends attaching matching information using the appropriate element, such as `ServiceRequest.supportingInfo` or `MedicationRequest.supportingInformation`.

#### Coordinate a Shared Care Plan {#shared-care-plan}

A shared care plan can span conditions, pathways, teams, and settings. Review related events alongside active orders and new proposals. Preserve the patient's goals and preferences and the source of each activity across handoffs. Identify who is responsible for reconciling conflicts and following up. The [Multiple Chronic Conditions eCare Plan IG](https://hl7.org/fhir/us/mcc/) describes a US approach to representing and exchanging shared care-plan information.

### Workflow {#workflow}

[CPGWorkflowDefinition](StructureDefinition-cpg-workflowdefinition.html) captures reusable coordination: the activities, relationships between actions, participants and their capabilities, and declared inputs and outputs. It belongs to the Plan layer in the overview diagram. The [Common Registration definition](PlanDefinition-cpg-common-registration.html), for example, describes gathering identifying information, matching a patient, and resolving match results, with roles for the patient, a clerical worker, and a system. A local implementation connects those defined roles and activities to actual people, services, and triggers; patient records capture the resulting work.

Workflow connects the guidance to real work. This guide does not specify local workflows. The proposed ambulatory [Common Care Pathway](common-care-pathway.html) describes activities such as assessment, ordering, and follow-up. Localize the activity to an actual trigger, responsible person or system, and follow-up plan. A new result arriving and a clinician opening that result are different triggers; they can make different information available at the point of evaluation. Include patient and caregiver work outside the EHR, such as between-visit review, as illustrated by [Sittig et al.'s workflow models](documentation-approach-cds-implementation-evidence.html#ref-sittig-2024). See [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html).

A request's intent distinguishes a proposal, a plan, and an order, where the resource supports those intents. A Task can track work on a request, and an event documents the clinical occurrence or explicitly records that it was not done. Use the resource-specific [Activity Flow](activityflow.html) and [transition rules](activityflow-transitions.html) for statuses and fulfillment links. See [Implementing Computable Knowledge](documentation-approach-02-05-knowledge-implementation.html#patient-flow) for process coding, invocation, and delivery.

### Boundary Cases {#boundary-cases}

A medication order records intent, while a documented administration can establish exposure. Collapsing both to a single medication flag loses information that a later rule may need to decide whether the patient received a dose. For each boundary, agree on the information that crosses it and how to preserve its meaning and provenance.

One record can serve several purposes. Reuse it with its source, time, and lifecycle state intact:

| When a record crosses a boundary | What to preserve |
|---|---|
| An existing medication order is an input to another recommendation. | An EHR order can be a Case Feature even when no guideline proposal preceded it. Use administration or other appropriate evidence when the logic requires an exposure. |
| An administration fulfills an order and informs later care. | Link the event to the request using the event type's supported element. A partial fulfillment, such as an initial dispense on an order with refills, may leave work outstanding. |
| A proposal is declined. | Record the decision in the applicable proposal or Task workflow. Distinguish it from an event expressly documented as not done and from missing documentation. |
| A calculated value and a clinician assessment both inform care. | Preserve their respective provenance. Make disagreement visible and specify how it will be reconciled. |
| A metric compares proposed and delivered care. | Define which events, time windows, and exceptions count, and how missing data affect interpretation. |
{:.grid}

Trace one recommendation through these boundaries during review: from the source guideline and selected features, to what is proposed, who can authorize it, and which record establishes fulfillment. [Measurement and Evidence](documentation-approach-05-knowledge-engineering-overview.html#measurement-and-evidence) explains how to evaluate those records for a separate purpose. See [Separating and Defining Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html) for the boundary issues between the concerns.

### Guideline, Derivative, and Related Assets {#derivative-assets}

All of the knowledge assets produced by CPG development are packaged in a guideline container asset. Because the CPG formally expresses the intent of the guideline, other assets that have historically been developed by hand from the narrative (such as metrics, measures, case summaries, and case reports) can be derived from or related to it. See [Guideline, Derivative, and Related Assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html) and [Measurement and Evidence](documentation-approach-05-knowledge-engineering-overview.html#measurement-and-evidence).

The [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) lists each concept used in these pages, links to where it is defined, and shows how it is represented by the profiles in this implementation guide.

</div>

{% include chapter-navigation.html section="Approach" unit="section" overview="approach.html" next="documentation-approach-04-guideline-development.html" next_title="Guideline Development" %}
