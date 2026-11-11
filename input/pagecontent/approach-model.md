Start with three questions: What do we know about this patient? What care does the guideline recommend? How will people and systems deliver that care? The answers define the Case, Plan, and Workflow. Keeping them separate lets a clinical reviewer assess a recommendation, a terminology specialist review its inputs, and an implementer change how it is delivered without silently changing its meaning.

### The model at a glance {#model-at-a-glance}

<div style="clear: both;">
  <img src="cpg-model-boundaries.svg" alt="The orange Plan lane includes strategies, recommendations, and a reusable workflow definition. Local implementation connects the workflow definition to the blue lane's patient care processes and records. The green Case lane holds recorded and derived patient facts." class="img-responsive" width="1000"/>
</div>

| Concern | Question it answers | In the CHF example |
|---|---|---|
| [Case](#case) | What patient information matters to the guideline? | Recorded weights, derived weight change, and other relevant patient facts. |
| [Plan](#plan) | What care should be considered for patients in scope? | A pathway definition groups Daily Management and Hypervolemia strategies. |
| [Care plan](#care-plan) | What is proposed or intended for this patient? | A patient-specific CarePlan links goals and activities, including realizations of the two strategies. |
| [Workflow](#workflow) | Who reviews and carries out the work, when, and where? | To implement the example, the local site would decide how to obtain and review measurements and make them available for later evaluation. |
{:.grid}

The [congestive heart failure (CHF) example](examples-chf.html) illustrates the model with a pathway and a patient case. Dijkstra described separation of concerns as examining one aspect of a problem at a time (*On the Role of Scientific Thought*, 1982). In [problem-oriented clinical documentation](https://doi.org/10.1056/NEJM196803142781105), separating assessment from plan serves a similar purpose. The [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) connects the guide's terms to their formal profiles.

#### Scope guidance across clinical concerns {#scope-and-shared-features}

A guideline can be scoped by condition, intervention, care setting, or activity such as prevention or follow-up. A strategy can group recommendations that address one concern within that scope. Where two guidelines or strategies need the same clinical fact, identify the Case Feature definition in each consumer's data requirements and check that its meaning, time window, and source fit both uses. When guidance in one scope depends on care proposed or delivered in another, identify the request or event each rule uses and which team reconciles competing plans.

### Case {#case}

The Case comprises the recorded facts, clinical assessments, and computational inferences relevant to a guideline. The CHF case includes a condition, an encounter, and observations. The formal [CPGCase](StructureDefinition-cpg-case.html) profile has a narrower role: it represents the patient's [enrollment](#enrollment) as an EpisodeOfCare. Patient data remain in the resources that express those facts.

### Case features {#case-features}

A case feature is a meaningful piece of patient information. It can be a measurement, a condition, a request, an exposure, an assessment, or a derived value. [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html) profiles StructureDefinition to specify how to represent a feature. In the example, the [CHF body weight profile](StructureDefinition-chf-bodyweight.html) defines the representation; a patient Observation supplies a value, units, and time.

When defining a feature, agree on the terminology, units, source, time window, number of expected values, and selection rule. For weight, the admission value and the latest measurement in an encounter answer different questions. Specify what to do with missing, stale, and conflicting records. [Pretty et al.](https://doi.org/10.1136/bmjhci-2022-100691) illustrate why ambiguous or composite data elements need clinical review before terminology can be aligned.

The [CHF body weight change feature](StructureDefinition-chf-bodyweight-change.html) shows how a calculation can become a reusable description of patient state. Feature definitions can use the `inferenceExpression`, `assertionExpression`, and `featureExpression` extensions for their respective roles. Trace the selected measurements, time context, expression version, and any other inferred features the calculation depends on. If an inference is stored in an Observation, retain its computational origin.

#### Gather a clinician assessment {#clinician-assessment}

Some features depend on clinical judgment. For example, observations and calculated changes can support a clinician's assessment of volume status. Present the relevant facts and inferences, then capture the clinician's assessment with its own author, time, and supporting information in an appropriate resource such as [CPGClinicalImpression](StructureDefinition-cpg-clinicalimpression.html). Scope the prompt or form to the recommendation, strategy, or pathway that uses the assessment. Identify other guidance that depends on the feature and what happens when the assessment is unavailable. [SDC adaptive forms](https://hl7.org/fhir/uv/sdc/adaptive.html) · [Interactive CDS](interactive-cds.html)

### Case summaries {#case-summary}

Group related features for a purpose, such as showing the inputs to a calculation or explaining why a recommendation applies. A [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html) uses GraphDefinition to describe relevant relationships; a [CPGCaseSummary](StructureDefinition-cpg-casesummary.html) uses Composition to present a patient-specific selection. Distinguish relationships such as “derived from,” “supports this proposal,” and “fulfills this request.” A shared code alone cannot establish any of these relationships.

The CHF [case plan summary](Composition-chf-scenario1-caseplansummary.html) brings features, goals, planned items, and events together. Give such a view a scope and time. Show which items are suggested, authorized, or documented as having occurred, and make gaps visible when the information is unavailable.

### Plan {#plan}

The Plan is reusable guidance: which activities to consider, under which conditions, and how they relate. Its recommendation, strategy, workflow, and pathway definitions use different PlanDefinition profiles. A pathway can reference both strategies, which group clinical recommendations, and workflow definitions, which describe how activities are coordinated. The [artifact map](approach-artifacts.html#resource-map) places these definitions alongside the data, logic, and activity definitions they use.

<div style="clear: both;">
  <img src="cpg-model-definitions.svg" alt="A pathway can reference both strategy and workflow definitions. Strategies group recommendations that reference activity or order set definitions. Workflow definitions describe activities, their relationships, participants, inputs, and outputs. All are reusable guidance." class="img-responsive" width="1000"/>
</div>

### Recommendations {#recommendations}

[CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html) uses type `eca-rule` for an event, condition, and action. Identify the invocation or trigger, the data and conditions used to determine applicability, and what to propose. Its `action.definitionCanonical` can reference a [CPGComputableActivityDefinition](StructureDefinition-cpg-computableactivity.html) or [CPGOrderSetDefinition](StructureDefinition-cpg-ordersetdefinition.html) for the Definition phase of [Activity Flow](activityflow.html#purpose-and-rationale). The [CHF Body Weight Change recommendation](PlanDefinition-chf-bodyweight-change-pd.html) specifies a periodic activity to record inferred weight change, followed by a reporting activity.

Keep the calculation that describes the patient separate from the rule that decides what to propose. Preserve the direction and strength of the source recommendation, its rating system, and its [supporting evidence](methodology-select.html#guideline-supporting-information). Evidence quality qualifies the guideline's evidence; a recommendation's applicability also depends on the information available for this patient. A proposal against an activity expresses guidance against performing it. Evidence about whether it occurred comes from the patient record.

### Strategies {#strategies}

[CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html) groups recommendations for a clinical concern or context. It uses type `workflow-definition`, and its `action.definitionCanonical` targets recommendation definitions. The [CHF Daily Management definition](PlanDefinition-chf-daily-management.html) groups recommendations for body weight, weight change, urine output, and net intake and output. Its patient-specific counterpart, [CPGStrategy](StructureDefinition-cpg-strategy.html), uses RequestGroup to organize activities and their options.

#### Coordinate related recommendations {#strategy-coordination}

Specify when each recommendation can be evaluated and whether it depends on a Case Feature, a prior proposal, an authorized request, or a documented event. For example, if guidance calls for reassessment after an intervention, establish which event starts the interval and what happens if fulfillment is partial or unknown. A source recommendation, decision table, or flow diagram may describe the relationships. When the source leaves sequencing or a conflict unresolved, record the interpretation with the guideline team before encoding it. Use the [processing rules](approach-implementation.html#processing-rules) to express the agreed dependencies.

### Pathways {#pathways}

[CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html) uses type `clinical-protocol` to group guidance over time. Its actions reference strategy or [workflow definitions](StructureDefinition-cpg-workflowdefinition.html), and the profile prohibits `action.relatedAction` on the pathway. Use the appropriate definition to express more detailed relationships. The [CHF pathway definition](PlanDefinition-chf-pathway.html) references the Daily Management and Hypervolemia strategies; the full guideline package can contain artifacts beyond those referenced by the pathway.

### Eligibility and enrollment {#enrollment}

Eligibility asks whether a patient meets the pathway's population, exclusion, and timing criteria. Enrollment records participation. Individual recommendation applicability is a further decision based on the patient's context at evaluation time. Keep the decisions separate and record whether each could be determined from available data.

The [CHF example](examples-chf.html#example-case) describes a patient whose admitting diagnosis meets the group criteria. Its [active EpisodeOfCare](EpisodeOfCare-chf-scenario1-eoc.html) uses the `enrolledIn` extension to point to the CHF pathway. The episode's status and period convey participation over time.

Local policy can enroll eligible patients automatically under defined criteria, prompt the care team to review eligibility and context, or allow a team member to initiate enrollment without a prompt. A site can use more than one of these routes. Consider patient preferences and clinical factors that can affect participation, and specify who may authorize and record it. Use the relevant rule and [CPGEnrollmentActivity](StructureDefinition-cpg-enrollmentactivity.html) for a proposed enrollment activity.

### Patient care plan {#care-plan}

[CPGCarePlan](StructureDefinition-cpg-careplan.html) connects the patient's concerns, goals, and activities. The [example CarePlan](CarePlan-chf-scenario1-careplan.html) has Daily Management and Hypervolemia RequestGroups for the patient. Proposals, planned or authorized requests, and the events that fulfill those requests correspond to the patient-specific phases of [Activity Flow](activityflow.html#purpose-and-rationale).

The word *plan* can refer to several related things. Qualify it when describing a resource or a transition.

| Meaning | Representation | What it conveys |
| --- | --- | --- |
| Reusable guidance | PlanDefinition and ActivityDefinition | Care to consider for patients in scope. |
| A patient's care plan | CarePlan | The patient's concerns, goals, and intended care. |
| A planned activity | A request with the applicable `plan` intent | An intention to pursue the activity, before an authorized order. |
| Grouped choices | RequestGroup | Related requests and their optionality. |
{:.grid}

Applying a recommendation may construct a proposal using a patient-specific request profile, such as [CPGServiceRequest](StructureDefinition-cpg-servicerequest.html) or [CPGMedicationRequest](StructureDefinition-cpg-medicationrequest.html). [CPG PlanDefinition apply](OperationDefinition-cpg-plandefinition-apply.html) returns transient results in subject-specific Bundles. The caller decides what to persist and how to proceed. Where a RequestGroup preserves options, the child requests use intent `option`; selecting one for subsequent care requires the appropriate independent request and intent.

#### Show the patient information supporting a proposal {#proposal-support}

Keep the proposal's originating definition, supporting evidence, and relevant patient information traceable. A Case Feature Group or Case Plan Summary can bring together applicable indications, contraindications, and prior requests or events for review. Recommendation `action.input` describes information relevant to applicability. When `action.output` specifies information to include with the proposal, the profile recommends attaching matching information using the appropriate element, such as `ServiceRequest.supportingInfo` or `MedicationRequest.supportingInformation`. [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html)

#### Coordinate a shared care plan {#shared-care-plan}

A shared care plan can span conditions, pathways, teams, and settings. Review active orders and related events alongside new proposals. Preserve the patient's goals and preferences, the source of each activity, and who is responsible for reconciling or following up on care. The [Multiple Chronic Conditions eCare Plan IG](https://hl7.org/fhir/us/mcc/) describes a US approach to representing and exchanging shared care-plan information.

### Workflow {#workflow}

[CPGWorkflowDefinition](StructureDefinition-cpg-workflowdefinition.html) captures reusable coordination: the activities, relationships between actions, participants and their capabilities, and declared inputs and outputs. It belongs to the Plan layer in the overview diagram. The [Common Registration definition](PlanDefinition-cpg-common-registration.html), for example, describes gathering identifying information, matching a patient, and resolving match results, with roles for the patient, a clerical worker, and a system. A local implementation connects those defined roles and activities to actual people, services, and triggers; patient records capture the resulting work.

Workflow connects the guidance to real work. The proposed ambulatory [Common Care Pathway](common-care-pathway.html) describes activities such as assessment, ordering, and follow-up. Localize the activity to an actual trigger, responsible person or system, and follow-up plan. A new result arriving and a clinician opening that result are different triggers; they can make different information available at the point of evaluation. Include patient and caregiver work outside the EHR, such as between-visit review, as illustrated by [Sittig et al.'s workflow models](https://doi.org/10.1093/jamia/ocae138).

A request's intent distinguishes a proposal, a plan, and an order, where the resource supports those intents. A Task can track work on a request, and an event documents the clinical occurrence or explicitly records that it was not done. Use the resource-specific [Activity Flow](activityflow.html) and [transition rules](activityflow-transitions.html) for statuses and fulfillment links. See [Implementation and Integration](approach-implementation.html#patient-flow) for process coding, invocation, and delivery.

### Boundary cases {#boundary-cases}

One record can serve several purposes. Reuse it with its source, time, and lifecycle state intact:

| When a record crosses a boundary | What to preserve |
|---|---|
| An existing medication order is an input to another recommendation. | An EHR order can be a Case Feature even when no guideline proposal preceded it. Use administration or other appropriate evidence when the logic requires an exposure. |
| An administration fulfills an order and informs later care. | Link the event to the request using the event type's supported element. A partial fulfillment, such as an initial dispense on an order with refills, may leave work outstanding. |
| A proposal is declined. | Record the decision in the applicable proposal or Task workflow. Distinguish it from an event expressly documented as not done and from missing documentation. |
| A calculated value and a clinician assessment both inform care. | Preserve their respective provenance. Make disagreement visible and specify how it will be reconciled. |
| A metric compares proposed and delivered care. | Define which events, time windows, and exceptions count, and how missing data affect interpretation. |
{:.grid}

Trace one recommendation through these boundaries during review: from the source guideline and selected features, to what is proposed, who can authorize it, and which record establishes fulfillment. [Measurement and Evidence](approach-evaluation.html) explains how to evaluate those records for a separate purpose.

{% include chapter-navigation.html section="Approach" unit="chapter" overview="approach.html" next="approach-artifacts.html" next_title="Guideline Artifacts" %}
