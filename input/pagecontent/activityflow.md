### Purpose and rationale {#purpose-and-rationale}

Activity Flow connects a reusable [activity](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-activity) definition to the patient-specific decisions and records that follow. A guideline can propose care and explain why it applies. The receiving workflow handles review, authorization, and fulfillment. Resource links make it possible to trace what the guideline suggested, what the team authorized, and what was documented.

Clinical teams also place orders and document care independently of guideline evaluation. Use the EHR's existing order and event lifecycle, and relate those records to the guideline when the available information supports the relationship. A request's intent describes its phase, while resource-specific statuses describe its state. Recommendation strength, direction, and rationale remain attributes of the guidance.

### General Activity Flow

Use this topic to connect a reusable activity definition to the requests and events produced for a patient. It follows the [FHIR R4 workflow patterns](https://hl7.org/fhir/R4/workflow.html), with concrete profiles supplied by this guide.

<div>
  <img src="cpg-runtime-activity.svg" alt="Definition leads to a proposal, acceptance to a plan, authorization to an order, and fulfillment to an event. These phases have separate status and authority." class="img-responsive" width="1000"/>
</div>

*Figure 1. Conceptual activity phases. Proposal, plan, and order are request intents; the event records care or explicit non-performance. Exact states and transitions depend on the resource type.*

| Phase | Meaning | Boundary to preserve |
| --- | --- | --- |
| Definition | Reusable specification of an activity | No patient-specific action has occurred |
| Proposal | Suggested activity, including a suggestion not to perform | Evaluation is separate from acceptance |
| Plan | Accepted intention for the patient | Acceptance is separate from authorization to execute |
| Order | Authorized request | Authorization is separate from fulfillment |
| Event | Activity performed, underway, or explicitly not performed | A recorded event is distinct from the request that led to it |
{:.grid}

The [CPG $apply operation](OperationDefinition-cpg-plandefinition-apply.html) returns transient proposed resources. A receiving application decides whether and how to persist and process them. It may omit intermediate phases when the acting person or system has the appropriate authority. An event can also be recorded without a prior request.

A request's `intent`, its `status`, and the status of a fulfillment Task answer different questions. A draft proposal needs more information; an active proposal is ready for consideration. Where a RequestGroup governs the choice, its child requests use intent `option`. Rejected, revoked, not performed, and entered in error are distinct meanings.

### Activity Flow State Transition Capabilities

The following capabilities describe application behavior at the **pattern level**. They are not additional FHIR operations defined by this IG. Map each behavior to the actual resource's elements and allowed codes, and apply the local authorization and persistence rules.

For transitions that create a new resource, separate preparation from commitment. Preparation constructs a candidate for review. At commitment, re-read the source, check its current state and the actor's authority, assign the new resource's identity, and preserve the relationship to its source. Persist related changes consistently. A preview created earlier may no longer describe the current patient or request.

#### Update

Update an incomplete or active request, or an event that can still be amended under its resource-specific rules. Moving a request from draft to active indicates it is ready for the next workflow step, not that the activity was performed.

#### Suspend

Pause an active request or an in-progress activity where the resource supports an on-hold state. Record the reason in the applicable element. Do not invent an on-hold code for a resource that has none.

#### Resume

Return a paused request or event to its applicable active/in-progress state after checking that resumption is appropriate. Update the current reason while retaining the history of why it was paused.

#### Plan

Prepare a new plan-intent request from an active proposal and link it to that proposal, typically using `basedOn`. Before saving the plan, verify that the proposal remains active and the prepared request has the intended draft or active state. The same distinction applies to a plan not to perform an activity.

#### Revoke

Withdraw a request that is no longer applicable, generally by the originating actor. Use the resource-specific state and reason for withdrawal. This is different from a receiving actor rejecting its fulfillment.

#### Reject

Record refusal to fulfill a request using the appropriate Task. In the pattern described here, the Task is requested, its `focus` identifies the active request, and its fulfillment code describes the task; rejection changes the Task to `rejected` and can record a reason. Rejection does not mean the requested activity happened.

#### Order

Prepare a new order-intent request from an active proposal or plan, preserving the source link. At commitment, verify the source and prepared states and the authority to order. In this pattern, mark the source proposal or plan completed as the authorized order replaces it, using the resource-specific completion state. Record the new order and source-state change together. Ordering an activity not to be performed retains that negative intent.

#### Entered In Error

Mark a record as entered in error when the record itself should not be treated as valid. This is different from a valid request being revoked or a valid event being stopped. Use the resource's actual error/correction semantics and retain traceability to related records.

#### Perform

Prepare the appropriate event from an active request and link it to the request where the resource supports that relationship. Recheck the source before saving the event. Complete the request only when its overall fulfillment is complete: an initial dispense does not complete an order with remaining refills.

A request not to perform an activity normally does not produce a performance event. Where the record explicitly documents non-performance, use the resource-specific representation and reason.

#### Start

Move a prepared event to in-progress when work begins, if those states exist for the event type.

#### Not Done

Record that the activity was not performed, using the resource-specific status and reason. Absence of an event is not the same as an explicit not-done record.

#### Stop

Record that an activity ended before completion. Choose the actual event code and preserve its reason and source relationships.

#### Complete

Record completed performance using the event's actual status vocabulary. Evaluate separately whether the originating request is fully satisfied.

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
| Generate a report | [CPGGenerateReportTask](StructureDefinition-cpg-generatereporttask.html) | [CPGMetricReport](StructureDefinition-cpg-metricreport.html) or a case/plan summary |
| Propose a diagnosis | [CPGProposeDiagnosisTask](StructureDefinition-cpg-proposediagnosistask.html) | [CPGCondition](StructureDefinition-cpg-condition.html) |
| Record a detected issue | [CPGRecordDetectedIssueTask](StructureDefinition-cpg-recorddetectedissuetask.html) | [CPGDetectedIssue](StructureDefinition-cpg-detectedissue.html) |
| Record an inference | [CPGRecordInferenceTask](StructureDefinition-cpg-recordinferencetask.html) | [CPGObservation](StructureDefinition-cpg-observation.html) |
| Report a flag | [CPGReportFlagTask](StructureDefinition-cpg-reportflagtask.html) | [CPGFlag](StructureDefinition-cpg-flag.html) |
{:.grid}

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
| Composition / case summaries and progress notes | Status is `preliminary`, `final`, `amended`, or `entered-in-error`; use `summaryFor` to associate the summary with its case. |
| Condition | Clinical and verification status describe the condition; neither is a generic event-progress status. |
| DetectedIssue | Status concerns the issue's assessment/verification. Do not equate a preliminary result with an intervention waiting to start. |
| Flag | `active` and `inactive` concern the flag's relevance, not whether an activity has started or stopped. |
{:.grid}

The corrected distinctions above follow the R4 bindings for [QuestionnaireResponse](https://hl7.org/fhir/R4/valueset-questionnaire-answers-status.html), [Composition](https://hl7.org/fhir/R4/valueset-composition-status.html), and [MeasureReport](https://hl7.org/fhir/R4/valueset-measure-report-status.html). Case/plan reports use [CPGCaseSummary](StructureDefinition-cpg-casesummary.html), [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html), or [CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html).

### Validate the lifecycle

Test acceptance and rejection, withdrawal and stopping, incomplete data, corrections, repeated evaluation, and actions partially fulfilled over time. Check that a refreshed recommendation does not duplicate an existing plan or order, and that stale source state is detected before commitment. Use the [activity scenarios](examples-activities.html) to understand the patterns and the [formal profiles](profiles.html#activity-profiles) to validate resources.
