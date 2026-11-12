<div class="new-content" markdown="1">

### Purpose and Rationale {#purpose-and-rationale}

A guideline recommendation does not become care at the moment a reasoning engine evaluates it. A clinician considers it for a particular patient, may accept or reject it, and may adapt its details, and someone with the necessary authority authorizes it before anything is done. The Activity Flow makes each of those steps explicit, so that what was recommended can be traced to what was decided and to what was done, and so that decision support can act at each step.

Activities move through five phases, each answering a different question: Definition, Proposal, Plan, Order, and Event (see [Phases, intent, and status](#phases)). The Definition phase belongs to the [Plan](documentation-approach-12-03-cpg-plan.html) concern. The patient-specific phases are the proposals, requests, and events of the [Care Plan](documentation-approach-12-05-cpg-careplan.html), and from the Plan phase onward they are also part of the [Case](documentation-approach-12-04-cpg-case.html).

Note that the Plan phase (a request with an intent of `plan`) is not the Plan concern, which is the patient-independent logic of recommendations, strategies, and pathways.

Each patient-specific phase is a separate, linked resource, not a state change on a single resource. The `intent` element conveys the level of authorization, and the `status` element conveys the state within that phase (for example, `draft` when more information is needed and `active` when it is ready to act on). This preserves what was proposed even after it is accepted, changed, or rejected, and it is what makes [Metrics](documentation-approach-12-07-cpg-derivative-and-related-assets.html#metrics) possible: a compliance metric compares a proposal with the requests and events that followed it. With the appropriate authority, the plan and/or order phases can be skipped.

#### Activity Flow and the EHR Order Lifecycle {#activity-flow-and-the-ehr-order-lifecycle}

The Activity Flow runs in parallel to the order lifecycle in an EHR or other system of record; it is not part of that lifecycle. The Activity Flow governs activities in the clinical reasoning capability and the applications that consume it, while the EHR manages its own orders and events independently. These are separate state machines that interact at defined boundaries. Each system manages its own state and communicates it to the other:

* EHR requests and events are available to clinical reasoning as [Case Features](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature)
* Actions in an application affect the EHR through [integration patterns](documentation-approach-10-mechanisms-of-integration.html) and user actions, not by directly changing EHR state. For example, a planned activity may become a draft order that the user signs, or derived results may be returned to the system of record for it to manage

Because both flows use the same FHIR request and event patterns, the status vocabulary cannot tell them apart; ownership does. On the guideline side, the Order and Event phases record awareness and tracking of orders and events owned by the EHR, received as Case Features. They do not manipulate those records. Clinical teams also place orders and document care independently of guideline evaluation. Those records follow the EHR's own lifecycle and reach clinical reasoning as Case Features.

The same clinical activity may therefore appear in both flows, in different states. A proposal may exist with no EHR order, a plan may coexist with a draft EHR order, and an active EHR order may exist with no proposal behind it. A proposal may also target an existing EHR order that the guideline did not originate.

Changing an existing order follows the same logic. Hold, stop, and resume are activities in their own right ([CPGHoldTask](StructureDefinition-cpg-holdtask.html), [CPGStopTask](StructureDefinition-cpg-stoptask.html), and [CPGResumeTask](StructureDefinition-cpg-resumetask.html)). Each moves through its own proposal, plan, and order phases, so decision support and documentation can occur before the order changes, and the EHR order remains as it is until the change is executed. For example, a hold proposal may coexist with the active order until the hold is executed.

#### What the Phases Do Not Convey

A phase says where an activity is. It does not say what position the guideline takes on the activity, how strong the recommendation is, or whether anyone has chosen it. These are separate questions, carried separately. For example, an activity can be the preferred option among alternatives while the recommendation for it is conditional. Recommendation strength, direction, and rationale remain attributes of the guidance.

The sections below give the valid state transitions, the capabilities that perform them, and the elements and values for each resource.

</div>

### General Activity Flow

Use this topic to connect a reusable activity definition to the requests and events produced for a patient. It follows the [FHIR R4 workflow patterns](https://hl7.org/fhir/R4/workflow.html), with concrete profiles supplied by this guide.

{% include cpg-diagram.html src="cpg-runtime-activity.svg" alt="Cumulative rows distinguish Definition, Proposal, Plan, Order, and Event while retaining linked earlier records. Backward arrows identify source definitions, predecessor requests, and fulfillment references. Local authority and resource-specific statuses govern the workflow." caption="Figure 1. Phase rows retain the definition and earlier requests as new records appear. Proposal, plan, and order are request intents. An event can record ongoing care, completed care, or explicit non-performance. The implementation applies the states and transitions supported by the resource type." %}

#### Phases, intent, and status {#phases}

Intent and status together give the phase and the state within it. The states listed under each phase are the guideline-side states an application typically distinguishes; on the guideline side, the Order rows record an order that is authorized, or awaiting authorization, in the system of record, tracked through Case Features.

| Phase | State | Intent | Status | Question it answers | Boundary to preserve |
| --- | --- | --- | --- | --- | --- |
| Definition | | (definitional) | (not applicable) | What could be done for patients like this under the guideline? A reusable specification of an activity, such as an ActivityDefinition or an order set | No patient-specific action has occurred |
| Proposal | Pre-proposal | `proposal` | `draft` | What is being considered for this patient? Criteria may not yet be met, or more information is needed; may support "what-if" exploration | |
| | Proposal | `proposal` | `active` | What is recommended for this patient now? Includes a suggestion not to perform an activity | Evaluation is separate from acceptance |
| Plan | Planning | `plan` | `draft` | What has the clinician accepted and is still adjusting, such as dose, frequency, or timing? | |
| | Planned | `plan` | `active` | What has the care team accepted and decided to do? All details are confirmed and the activity is ready to be ordered | Acceptance is separate from authorization to execute |
| Order | Tasked to order | `order` | `draft` | What has been submitted for authorization? A draft order in the system of record, not yet placed | |
| | Order | `order` | `active` | What has been authorized? The order is placed in the system of record and tracked as a Case Feature | Authorization is separate from fulfillment |
| Event | | (event) | `preparation`, `in-progress`, `completed`, or `not-done`, as the resource supports | What was done, or not done, and why? | A recorded event is distinct from the request that led to it |
{:.grid .modified-content}

The [CPG $apply operation](OperationDefinition-cpg-plandefinition-apply.html) returns transient proposed resources. A receiving application decides whether and how to persist and process them. It may omit intermediate phases when the acting person or system has the appropriate authority. An event can also be recorded without a prior request.

A request's `intent`, its `status`, and the status of a fulfillment Task answer different questions. A draft proposal needs more information; an active proposal is ready for consideration. Where a RequestGroup governs the choice, its child requests use intent `option`. Rejected, revoked, not performed, and entered in error are distinct meanings.

#### State transitions {#state-transitions}

The proposal, plan, and order phases are all represented using the request pattern ([Request State Machine](https://hl7.org/fhir/R4/request.html#statemachine)), while the event phase is represented using the event pattern ([Event State Machine](https://hl7.org/fhir/R4/event.html#statemachine)). Individual resources refine these patterns with their own status vocabularies, described in the sections below.

Valid state transitions for RequestStatus:

* draft -> active
* active -> on-hold
* on-hold -> active
* active -> completed
* active -> revoked

In addition, any state can be transitioned to entered-in-error

Only active proposals can be transitioned to plans. Transitioning a proposal to a plan is expected to produce a Request resource in plan intent with a status of draft or active

Only active plans can be transitioned to orders. Transitioning a plan to an order is expected to produce a Request resource in order intent with a status of draft or active

Only active orders can be transitioned to events. Transitioning an order to an event is expected to produce an Event resource with a status of preparation or in-progress

With the appropriate authority, the plan and/or order steps in this flow can be skipped (i.e. a proposal can transition directly to an order or an event)

The draft status for requests can be used to indicate that the request is not yet complete enough to be moved to the next phase and that more information is needed to do so. This information (and the status change to active) can be provided with the [Update](activityflow-transitions.html#update) capability.

Valid state transitions for EventStatus:

* preparation -> not-done
* preparation -> in-progress
* in-progress -> on-hold
* on-hold -> in-progress
* in-progress -> completed
* in-progress -> stopped

In addition, any state can be transitioned to entered-in-error

### Activity Flow State Transition Capabilities

[Activity Flow Transitions](activityflow-transitions.html) describes application behavior for requests and events. The page distinguishes preparation from commitment and explains how each transition depends on the resource and the actor's authority.

- <a id="update"></a>[Update](activityflow-transitions.html#update)
- <a id="suspend"></a>[Suspend](activityflow-transitions.html#suspend)
- <a id="resume"></a>[Resume](activityflow-transitions.html#resume)
- <a id="plan"></a>[Plan](activityflow-transitions.html#plan)
- <a id="revoke"></a>[Revoke](activityflow-transitions.html#revoke)
- <a id="reject"></a>[Reject](activityflow-transitions.html#reject)
- <a id="order"></a>[Order](activityflow-transitions.html#order)
- <a id="entered-in-error"></a>[Entered In Error](activityflow-transitions.html#entered-in-error)
- <a id="perform"></a>[Perform](activityflow-transitions.html#perform)
- <a id="start"></a>[Start](activityflow-transitions.html#start)
- <a id="not-done"></a>[Not Done](activityflow-transitions.html#not-done)
- <a id="stop"></a>[Stop](activityflow-transitions.html#stop)
- <a id="complete"></a>[Complete](activityflow-transitions.html#complete)

### Activity Lifecycle - Request Phases (Proposal, Plan, Order)

Use the activity-specific request profile. Definition links such as `instantiatesCanonical` identify the source knowledge; `basedOn` links a request to its predecessor where applicable. Some resources use extensions for these relationships. The profile definitions are the authority for the exact path.

| Activity | Request profile | Event or result profile |
| --- | --- | --- |
| Send a message | [CPGCommunicationRequest](StructureDefinition-cpg-communicationrequest.html) | [CPGCommunication](StructureDefinition-cpg-communication.html) |
| Collect information | [CPGQuestionnaireTask](StructureDefinition-cpg-questionnairetask.html) | [CPGQuestionnaireResponse](StructureDefinition-cpg-questionnaireresponse.html) |
| Order a medication | [CPGMedicationRequest](StructureDefinition-cpg-medicationrequest.html) | Dispense, administration, or medication statement as applicable |
| Dispense a medication | [CPGDispenseMedicationTask](StructureDefinition-cpg-dispensemedicationtask.html) | [CPGMedicationDispense](StructureDefinition-cpg-medicationdispense.html) |
| Administer a medication | [CPGAdministerMedicationTask](StructureDefinition-cpg-administermedicationtask.html) | [CPGMedicationAdministration](StructureDefinition-cpg-medicationadministration.html) |
| Document a medication | [CPGDocumentMedicationTask](StructureDefinition-cpg-documentmedicationtask.html) | [CPGMedicationStatement](StructureDefinition-cpg-medicationstatement.html) |
| Recommend an immunization | [CPGImmunizationRequest](StructureDefinition-cpg-immunizationrequest.html), a MedicationRequest profile | [CPGImmunization](StructureDefinition-cpg-immunization.html) |
| Order a service | [CPGServiceRequest](StructureDefinition-cpg-servicerequest.html) | [CPGProcedure](StructureDefinition-cpg-procedure.html) |
| Enroll a patient | [CPGEnrollmentTask](StructureDefinition-cpg-enrollmenttask.html) | [CPGCase](StructureDefinition-cpg-case.html), an EpisodeOfCare profile |
| Generate a report | [CPGGenerateReportTask](StructureDefinition-cpg-generatereporttask.html) | [CPGMetricReport](StructureDefinition-cpg-metricreport.html), a case or plan summary, or a resource conforming to the referenced Case Feature profile |
| Propose a diagnosis | [CPGProposeDiagnosisTask](StructureDefinition-cpg-proposediagnosistask.html) | [CPGCondition](StructureDefinition-cpg-condition.html) |
| Record a detected issue | [CPGRecordDetectedIssueTask](StructureDefinition-cpg-recorddetectedissuetask.html) | [CPGDetectedIssue](StructureDefinition-cpg-detectedissue.html) |
| Record an inference | [CPGRecordInferenceTask](StructureDefinition-cpg-recordinferencetask.html) | [CPGObservation](StructureDefinition-cpg-observation.html) |
| Report a flag | [CPGReportFlagTask](StructureDefinition-cpg-reportflagtask.html) | [CPGFlag](StructureDefinition-cpg-flag.html) |
| Hold an activity | [CPGHoldTask](StructureDefinition-cpg-holdtask.html) | The owning system places the `focus` request or event on hold, for example a MedicationRequest with status `on-hold` |
| Stop an activity | [CPGStopTask](StructureDefinition-cpg-stoptask.html) | The owning system stops the `focus` request or event, for example a MedicationRequest with status `stopped` |
| Resume an activity | [CPGResumeTask](StructureDefinition-cpg-resumetask.html) | The owning system returns the `focus` request or event to its active or in-progress state |
{:.grid .modified-content}

Hold, stop, and resume tasks reference the existing request or event through `focus`. The task is the guideline-side activity and moves through its own proposal, plan, and order phases. The system that owns the focus record executes the change (see [Activity Flow and the EHR Order Lifecycle](#activity-flow-and-the-ehr-order-lifecycle) and the [hold, stop, and resume examples](examples-activities.html#stop-a-medication-order)).
{:.new-content}

CommunicationRequest and ServiceRequest use the request-status vocabulary. MedicationRequest has medication-specific states, including `cancelled` and `stopped`. Task has its own lifecycle, including `requested`, `accepted`, `rejected`, `in-progress`, `cancelled`, and `failed`. In particular, `failed` is not a universal synonym for a revoked request. Follow the [request pattern](https://hl7.org/fhir/R4/request.html#statemachine) and the selected resource's definitions.

### Activity Lifecycle - Event Phase

Events have resource-specific semantics. Use [FHIR event guidance](https://hl7.org/fhir/R4/event.html#statemachine) as an overview, then inspect the actual profile and status binding.

| Event/resource | Relationship or status consideration |
| --- | --- |
| Communication, Procedure, Observation | `basedOn` can connect the event to the request. Observation status describes result availability and correction, not the progress of performing an intervention. |
| MedicationDispense | `authorizingPrescription` references the medication request; dispensing and administration are different events. |
| MedicationAdministration | `request` identifies the request being fulfilled. |
| MedicationStatement | `basedOn` can connect the statement to a request; the statement reports medication use rather than proving an administration event. |
| Immunization | The CPG profile provides the relevant request relationship; its status vocabulary is `completed`, `not-done`, or `entered-in-error`. |
| QuestionnaireResponse | R4 codes are `in-progress`, `completed`, `amended`, `entered-in-error`, and `stopped`. There is no `cancelled`, `on-hold`, or `failed` code. |
| EpisodeOfCare / CPGCase | Status describes the episode's lifecycle, including `planned`, `active`, `onhold`, and `finished`; it does not establish that an individual intervention occurred. |
| MeasureReport / CPGMetricReport | Status is `complete`, `pending`, or `error`. |
| Composition / case summaries and progress notes | Status is `preliminary`, `final`, `amended`, or `entered-in-error`. Use `summaryFor` to associate the summary with the applicable case, care plan, strategy, or supported request. |
| Condition | Clinical and verification status describe the condition; neither is a generic event-progress status. |
| DetectedIssue | Status concerns the issue's assessment/verification. Do not equate a preliminary result with an intervention waiting to start. |
| Flag | `active` and `inactive` concern the flag's relevance, not whether an activity has started or stopped. |
{:.grid}

The corrected distinctions above follow the R4 bindings for [QuestionnaireResponse](https://hl7.org/fhir/R4/valueset-questionnaire-answers-status.html), [Composition](https://hl7.org/fhir/R4/valueset-composition-status.html), and [MeasureReport](https://hl7.org/fhir/R4/valueset-measure-report-status.html). Case/plan reports use [CPGCaseSummary](StructureDefinition-cpg-casesummary.html), [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html), or [CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html).

### Validate the lifecycle

Test acceptance and rejection, withdrawal and stopping, incomplete data, corrections, repeated evaluation, and actions partially fulfilled over time. Check that a refreshed recommendation does not duplicate an existing plan or order, and that stale source state is detected before commitment. Use the [activity scenarios](examples-activities.html) to understand the patterns and the [formal profiles](profiles.html#activity-profiles) to validate resources.
