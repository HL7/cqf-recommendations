### Purpose and rationale {#purpose-and-rationale}

Activity Flow connects a reusable [activity](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-activity) definition to the patient-specific decisions and records that follow. A guideline can propose care and explain why it applies. The receiving workflow handles review, authorization, and fulfillment. Resource links make it possible to trace what the guideline suggested, what the team authorized, and what was documented.

Clinical teams also place orders and document care independently of guideline evaluation. Use the EHR's existing order and event lifecycle, and relate those records to the guideline when the available information supports the relationship. A request's intent describes its phase, while resource-specific statuses describe its state. Recommendation strength, direction, and rationale remain attributes of the guidance.

### General Activity Flow

Use this topic to connect a reusable activity definition to the requests and events produced for a patient. It follows the [FHIR R4 workflow patterns](https://hl7.org/fhir/R4/workflow.html), with concrete profiles supplied by this guide.

{% include cpg-diagram.html src="cpg-runtime-activity.svg" alt="Cumulative rows distinguish Definition, Proposal, Plan, Order, and Event while retaining linked earlier records. Backward arrows identify source definitions, predecessor requests, and fulfillment references. Local authority and resource-specific statuses govern the workflow." %}

*Figure 1. Phase rows retain the definition and earlier requests as new records appear. Proposal, plan, and order are request intents. An event can record ongoing care, completed care, or explicit non-performance. The implementation applies the states and transitions supported by the resource type.*

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
