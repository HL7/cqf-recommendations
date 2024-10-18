### General Activity Flow

Building on the [Workflow](https://hl7.org/fhir/R4/workflow.html) module in FHIR, this topic describes in detail how each type of activity in a computable Clinical Guideline transitions through the overall phases of the activity lifecycle, as depicted in the following diagram:

<div>
  <img src="unified-activity-flow.png" alt="Unified State Diagram for Activity Workflow" height="400" width="700"/>
</div>

Down the left side of the diagram are the activity _phases_:

* Definition: Activities are specified as definitions using one of the ActivityDefinition profiles
* Proposal: Definitions are _applied_ to produce a proposal, or a suggestion or recommendation to perform (or not perform) a particular activity
* Plan: The proposal is accepted or rejected by the user, resulting in a plan to perform (or not perform) the activity
* Order: The plan is authorized by an appropriately qualified user, resulting in an order to perform (or not perform) the activity
* Event: The order is fulfilled through actually performing the activity (or indicating why the activity was not performed).

The proposal, plan, and order phases are all represented using the request pattern ([Request State Machine](https://hl7.org/fhir/R4/request.html#statemachine)), while the event phase is represented using the event pattern ([Event Statement Machine](https://hl7.org/fhir/R4/event.html#statemachine)).

<!--
Phase -> Definition -> Proposal -> Plan -> Order -> Event

RequestStatus -> draft | active | on-hold | revoked | completed | entered-in-error | unknown

EventStatus -> preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
-->

In general, decision support services will typically produce Request resources in proposal intent with a status of draft, indicating the proposal is in need of additional information, or active, indicating the proposal is a complete recommendation, ready to be accepted or rejected.

Valid state transitions for RequestStatus:

* draft -> active
* active -> on-hold
* on-hold -> active
* active -> completed
* active -> revoked

In addition, any state can be transitioned to entered-in-error

Only active proposals can be transitioned to plans. Transitioning a proposal to a plan is expected to produce a Request resource in plan intent with a status of draft or active

Only active plans can be transitioned to orders. Transitioning a plan to an order is expected to produce a Request resource in order intent with a status of draft or active

Only active orders can be transitioned to events. Transitioning an order to an event is expected to produce an Event resource with a status of prepration or in-progress

Note that with the appropriate authority, the plan and/or order steps in this flow can be skipped (i.e. a proposal can transition directly to an order or an event)

Note that the draft status for requests can be used to indicate that the request is not yet complete enough to be moved to the next phase and that more information is needed to do so. This information (and the status change to active) can be provided with the Update operation.

Valid state transitions for EventStatus:

* preparation -> not-done
* preparation -> in-progress
* in-progress -> on-hold
* on-hold -> in-progress
* in-progress -> completed
* in-progress -> stopped

In addition, any state can be transitioned to entered-in-error

Accounting for these general state transitions, the following sections detail a proposed set of capabilities for transitioning activities
through the various phases of proposal, plan, order, and event. Each capability provides a snippet of pseudo-code that describes what
changes are made to resource elements by that transition. These capabilities are described in terms of the Request and Event patterns,
so this is only a pattern-level description of the capability. Following the description of each capability is a set of tables that describe exactly what elements and values need to be used in these capabilities to apply each transition to the concrete resources used to represent each type of activity.

### Activity Flow State Transition Capabilities

#### Update

Given a draft or active request, update the request. This includes transitioning a request from draft to active status.

```
requestApi.update(Request inputRequest)
    check inputRequest.status in { draft | active }
    engine.save(inputRequest)
```

Given a preparation or in-progress event, update the event

```
requestApi.update(Event inputEvent)
    check inputEvent.status in { preparation | in-progress }
    engine.save(inputEvent)
```

#### Suspend

Given an active request, suspend the request, with or without a reason

```
requestApi.suspend(Request inputRequest, String reason)
    check inputRequest.status = active
    set inputRequest.status = on-hold
    set inputRequest.statusReason = reason
    engine.save(inputRequest)
```

Given an in-progress event, suspend the event, with or without a reason

```
requestApi.suspend(Event inputEvent, String Reason)
    check inputEvent.status = in-progress
    set inputEvent.status = on-hold
    set inputEvent.statusReason = reason
    engine.save(inputEvent)
```

#### Resume

Given a suspended request, resume the request

```
requestApi.resume(Request inputRequest)
    check inputRequest.status = on-hold
    set inputRequest.status = active
    set inputRequest.statusReason = null
    engine.save(inputRequest)
```

Given a suspended event, resume the event

```
requestApi.resume(Event inputEvent)
    check inputEvent.status = on-hold
    set inputEvent.status = in-progress
    set inputEvent.statusReason = null
    engine.save(inputEvent)
```

#### Plan

Given an active proposal, plan the proposal:

```
Request requestApi.preparePlan(Request inputProposal)
    check inputProposal.intent = proposal
    check inputProposal.status = active
    var result = new Request(copy from inputProposal)
    set result.id = null
    set result.intent = plan
    set result.status = draft
    set result.basedOn = referenceTo(inputProposal)

requestApi.initiatePlan(Request preparedPlan)
    check preparedPlan.basedOn is not null
    var basedOnProposal = engine.get(preparedPlan.basedOn)
    check basedOnProposal.intent = proposal
    check basedOnProposal.status = active
    check preparedPlan.status in { draft | active }
    check preparedPlan.intent = plan
    set basedOnProposal.status = completed
    try
        engine.save(preparedPlan)
        engine.save(basedOnProposal)
    commit
```

Note that this operation is performed in two steps in order to allow for application-level interation to occur. The _prepare_ step constructs a draft plan that can then be presented in an application, and the _initiate_ step then operates on that prepared draft plan to finalize the actual changes.

Note also that this capability applies to both a proposal for an activity, as well as a proposal _not_ to perform. In the latter case, the creation of a request with plan intent means a plan to not perform the activity.

#### Reject

Given an active request, reject the request, with or without a reason

```
requestApi.reject(Request inputRequest, String inputReason)
    check inputRequest.status = active
    set inputRequest.status = revoked
    set inputRequest.statusReason = inputReason
    engine.save(inputProposal)
```

#### Order

Given an active proposal or plan, order the proposal

```
Request requestApi.prepareOrder(Request inputRequest)
    check inputRequest.intent in { proposal | plan }
    check inputRequest.status = active
    var result = new Request(copy from inputRequest)
    set result.id = null
    set result.intent = order
    set result.status = draft
    set result.basedOn = referenceTo(inputRequest)

requestApi.initiateOrder(Request preparedOrder)
    check preparedOrder.basedOn is not null
    var basedOn = engine.get(preparedOrder.basedOn)
    check basedOn.intent in { proposal | plan }
    check basedOn.status = active
    check preparedOrder.status in { draft | active }
    check preparedOrder.intent = order
    set basedOn.status = completed
    try
        engine.save(preparedOrder)
        engine.save(basedOn)
    commit
```

Note that this operation is performed in two steps in order to allow for application-level interation to occur. The _prepare_ step constructs a draft order that can then be presented in an application, and the _initiate_ step then operates on that prepared draft order to finalize the actual changes.

Note also that this capability applies to both an order for an activity, as well as an order _not_ to perform. In the latter case, the creation of a request with order intent means an order not to perform the activity.

#### Entered In Error

Given a request, mark the proposal entered-in-error, with or without a reason

```
requestApi.enteredInError(Request inputRequest, String reason)
    set inputRequest.status = entered-in-error
    set inputRequest.statusReason = reason
    engine.save(inputRequest)
```

Given an event, mark the event entered-in-error, with or without a reason

```
requestApi.enteredInError(Event inputEvent, String reason)
    set inputEvent.status = entered-in-error
    set inputEvent.statusReason = reason
    engine.save(inputEvent)
```

#### Perform

Given an active proposal, plan, or order, perform the event

```
Event requestApi.preparePerform(Request inputRequest)
    check inputRequest.intent in { proposal | plan | order }
    check inputRequest.status = active
    var result = new Event(copy from inputRequest)
    result.status = preparation
    result.basedOn = referenceTo(inputRequest)

requestApi.initiatePerform(Event preparedEvent)
    check preparedEvent.basedOn is not null
    var basedOn = engine.get(preparedEvent.basedOn)
    check basedOn.intent in { proposal | plan | order }
    check basedOn.status = active
    check preparedEvent.status in { preparation | in-progress }
    set basedOn.status = completed // see completion note
    try
      engine.save(basedOn)
      engine.save(preparedEvent)
    commit
```

Note that this operation is performed in two steps in order to allow for application-level interation to occur. The _prepare_ step constructs a draft event that can then be presented in an application, and the _initiate_ step then operates on that prepared draft event to finalize the actual changes.

Whether this capability should set the status of the request to complete depends on whether the activity overall is complete. For example, if the activity is a medication prescription, whether the request should be marked complete depends on whether the dispense/administration/documentation represents a completion of the activity. Dispensing the initial fill, when there are multiple refills ordered, does not complete the overall order, so the status should remain active until all actions related to the completion of the order are done.

Note that in general, this capability is not used for requests not to perform an activity; in those cases there is typically no event resource, since the activity should not be performed.

#### Start

Given a preparation event, start the event

```
requestApi.start(Event inputEvent)
    check inputEvent.status = preparation
    set inputEvent.status = in-progress
    engine.save(inputEvent)
```

#### Not Done

Given a preparation event, mark the event not-done  (with or without a reason)

```
requestApi.notDone(Event inputEvent, String reason)
    check inputEvent.status = preparation
    set inputEvent.status = not-done
    set inputEvent.statusReason = reason
    engine.save(inputEvent)
```

#### Stop

Given an in-progress event, stop the event, with or without a reason

```
requestApi.stop(Event inputEvent, String reason)
    check inputEvent.status = in-progress
    set inputEvent.status = stopped
    set inputEvent.statusReason = reason
    engine.save(inputEvent)
```

#### Complete

Given an in-progress event, complete the event

```
requestApi.complete(Event inputEvent)
    check inputEvent.status = in-progress
    set inputEvent.status = completed
    engine.save(inputEvent)
```

### Activity Lifecycle - Request Phases (Proposal, Plan, Order)

The following table summarizes the request resource types and the `instantiates`, `basedOn`, and `status` elements and values for each activity as it moves through the activity flow.

* The `instantiates` Element column is the name of the element in the resource type that provides the link from the proposal to the definition
* The `basedOn` Element column is the name of the element in the resource type that provides the link from the plan to the proposal, and from the order to the plan
* The `status` Element column is the name of the status element in the resource type
* Each of the status value columns (Draft, Active, etc.) give the status values for each request resource (i.e. proposal, plan, order)

|Activity|Resource Type|`instantiates` Element |`basedOn` Element |`status` Element |Draft |Active |On-hold |Revoked |Completed |Entered-in-error |
|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|
|[Send Message](examples-activities.html#send-a-message)|[CPGCommunicationRequest](StructureDefinition-cpg-communicationrequest.html)|[instantiatesCanonical](StructureDefinition-cpg-communicationrequest-definitions.html#diff_CommunicationRequest.extension:instantiatesCanonical)|[basedOn](StructureDefinition-cpg-communicationrequest-definitions.html#CommunicationRequest.basedOn)|[status](StructureDefinition-cpg-communicationrequest-definitions.html#diff_CommunicationRequest.status)|draft|active|on-hold|revoked|completed|entered-in-error|
|[Collect information](examples-activities.html#collect-information)|[CPGQuestionnaireTask](StructureDefinition-cpg-questionnairetask.html)|[instantiatesCanonical](StructureDefinition-cpg-questionnairetask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-questionnairetask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-questionnairetask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|
|[Order a medication](examples-activities.html#order-a-medication)|[CPGMedicationRequest](StructureDefinition-cpg-medicationrequest.html)|[instantiatesCanonical](StructureDefinition-cpg-medicationrequest-definitions.html#key_MedicationRequest.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-medicationrequest-definitions.html#MedicationRequest.basedOn)|[status](StructureDefinition-cpg-medicationrequest-definitions.html#key_MedicationRequest.status)|draft|active|on-hold|stopped|completed|entered-in-error|
|[Dispense a medication](examples-activities.html#dispense-a-medication)|[CPGDispenseMedicationTask](StructureDefinition-cpg-dispensemedicationtask.html)|[instantiatesCanonical](StructureDefinition-cpg-dispensemedicationtask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-dispensemedicationtask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-dispensemedicationtask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|
|[Administer a medication](examples-activities.html#administer-a-medication)|[CPGAdministerMedicationTask](StructureDefinition-cpg-administermedicationtask.html)|[instantiatesCanonical](StructureDefinition-cpg-administermedicationtask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-administermedicationtask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-administermedicationtask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|
|[Document a medication](examples-activities.html#document-a-medication)|[CPGDocumentMedicationTask](StructureDefinition-cpg-documentmedicationtask.html)|[instantiatesCanonical](StructureDefinition-cpg-documentmedicationtask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-documentmedicationtask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-documentmedicationtask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|
|[Recommend an immunization](examples-activities.html#recommend-an-immunization)|[CPGImmunizationRequest](StructureDefinition-cpg-immunizationrequest.html)|[instantiatesCanonical](StructureDefinition-cpg-immunizationrequest-definitions.html#key_MedicationRequest.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-immunizationrequest-definitions.html#MedicationRequest.basedOn)|[status](StructureDefinition-cpg-immunizationrequest-definitions.html#key_MedicationRequest.status)|draft|active|on-hold|stopped|completed|entered-in-error|
|[Order a service](examples-activities.html#order-a-service)|[CPGServiceRequest](StructureDefinition-cpg-servicerequest.html)|[instantiatesCanonical](StructureDefinition-cpg-servicerequest-definitions.html#key_ServiceRequest.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-servicerequest-definitions.html#ServiceRequest.basedOn)|[status](StructureDefinition-cpg-servicerequest-definitions.html#key_ServiceRequest.status)|draft|active|on-hold|revoked|completed|entered-in-error|
|[Enroll a patient](examples-activities.html#enroll-a-patient)|[CPGEnrollmentTask](StructureDefinition-cpg-enrollmenttask.html)|[instantiatesCanonical](StructureDefinition-cpg-enrollmenttask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-enrollmenttask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-enrollmenttask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|
|[Generate a report](examples-activities.html#generate-a-report)|[CPGGenerateReportTask](StructureDefinition-cpg-generatereporttask.html)|[instantiatesCanonical](StructureDefinition-cpg-generatereporttask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-generatereporttask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-generatereporttask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|
|[Propose a diagnosis](examples-activities.html#propose-a-diagnosis)|[CPGProposeDiagnosisTask](StructureDefinition-cpg-proposediagnosistask.html)|[instantiatesCanonical](StructureDefinition-cpg-proposediagnosistask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-proposediagnosistask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-proposediagnosistask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|
|[Record a detected issue](examples-activities.html#record-a-detected-issue)|[CPGRecordDetectedIssueTask](StructureDefinition-cpg-recorddetectedissuetask.html)|[instantiatesCanonical](StructureDefinition-cpg-recorddetectedissuetask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-recorddetectedissuetask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-recorddetectedissuetask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|
|[Record an inference](examples-activities.html#record-an-inference)|[CPGRecordInferenceTask](StructureDefinition-cpg-recordinferencetask.html)|[instantiatesCanonical](StructureDefinition-cpg-recordinferencetask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-recordinferencetask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-recordinferencetask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|
|[Report a flag](examples-activities.html#report-a-flag)|[CPGReportFlagTask](StructureDefinition-cpg-reportflagtask.html)|[instantiatesCanonical](StructureDefinition-cpg-reportflagtask-definitions.html#key_Task.instantiatesCanonical)|[basedOn](StructureDefinition-cpg-reportflagtask-definitions.html#key_Task.basedOn)|[status](StructureDefinition-cpg-reportflagtask-definitions.html#key_Task.status)|draft|in-progress|on-hold|failed|completed|entered-in-error|


### Activity Lifecycle - Event Phase

The following table summarizes the event reosurce types for each activity type, and the `basedOn` and `status` elements and values for each activity as it moves through the activity flow.

* The `basedOn` Element column is the name of the element in the resource type that represents the link from the event resource back to the request that it is based on
* The `status` Element column is the name of the status element in the resource type
* Each of the status value columns (Preparation, In-progress, etc) give the value of the status element for that status

|Activity |Resource Type |`basedOn` Element |`status` element|Preparation|In-progress|Not-Done|On Hold|Stopped|Completed|Entered-in-error|
|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|
|[Send Message](examples-activities.html#send-a-message)|[CPGCommunication](StructureDefinition-cpg-communication.html)|[basedOn](StructureDefinition-cpg-communication-definitions.html#key_Communication.basedOn)|[status](StructureDefinition-cpg-communication-definitions.html#key_Communication.status)|preparation|in-progress|not-done|on-hold|stopped|completed|entered-in-error|
|[Collect information](examples-activities.html#collect-information)|[CPGQuestionnaireResponse](StructureDefinition-cpg-questionnaireresponse.html)|[basedOn](StructureDefinition-cpg-questionnaireresponse-definitions.html#QuestionnaireResponse.basedOn)|[status](StructureDefinition-cpg-questionnaireresponse-definitions.html#QuestionnaireResponse.status)|<unknown>|in-progress|cancelled|on-hold|failed|completed|entered-in-error|
|[Order a medication](examples-activities.html#order-a-medication)|See "Dispense a medication" \n"Administer a Medication" \n"Document a Medication"|-|-|-|-|-|-|-|-|-|
|[Dispense a medication](examples-activities.html#dispense-a-medication)|[CPGMedicationDispense](StructureDefinition-cpg-medicationdispense.html)|[authorizingPrescription](StructureDefinition-cpg-medicationdispense-definitions.html#key_MedicationDispense.authorizingPrescription)|[status](StructureDefinition-cpg-medicationdispense-definitions.html#key_MedicationDispense.status)|preparation|in-progress|cancelled|on-hold|stopped|completed|entered-in-error|
|[Administer a medication](examples-activities.html#administer-a-medication)|[CPGMedicationAdministration](StructureDefinition-cpg-medicationadministration.html)|[request](StructureDefinition-cpg-medicationadministration-definitions.html#key_MedicationAdministration.request)|[status](StructureDefinition-cpg-medicationadministration-definitions.html#key_MedicationAdministration.status)|<none>|in-progress|not-done|on-hold|stopped|completed|entered-in-error|
|[Document a medication](examples-activities.html#document-a-medication)|[CPGMedicationStatement](StructureDefinition-cpg-medicationstatement.html)|[basedOn](StructureDefinition-cpg-medicationstatement-definitions.html#key_MedicationStatement.basedOn)|[status](StructureDefinition-cpg-medicationstatement-definitions.html#key_MedicationStatement.status)|intended|active|not-taken|on-hold|stopped|completed|entered-in-error|
|[Recommend an immunization](examples-activities.html#recommend-an-immunization)|[CPGImmunization](StructureDefinition-cpg-immunization.html)|[](StructureDefinition-cpg-immunization-definitions.html#key_Immunization.extension:basedOn)|[status](StructureDefinition-cpg-immunization-definitions.html#key_Immunization.status)|<none>|<none>|not-done|<none>|<none>|completed|entered-in-error|
|[Order a service](examples-activities.html#order-a-service)|[CPGProcedure](StructureDefinition-cpg-procedure.html)|[basedOn](StructureDefinition-cpg-procedure-definitions.html#key_Procedure.basedOn)|[status](StructureDefinition-cpg-procedure-definitions.html#key_Procedure.status)|preparation|in-progress|not-done|on-hold|stopped|completed|entered-in-error|
|[Enroll a patient](examples-activities.html#enroll-a-patient)|[CPGCase](StructureDefinition-cpg-case.html)|<none>|[status](StructureDefinition-cpg-case-definitions.html#key_EpisodeOfCare.status)|planned|active|cancelled|onhold|<unknown>|finished|entered-in-error|
|[Generate a report](examples-activities.html#generate-a-report)|[CPGMetricReport](StructureDefinition-cpg-metricreport.html)|<none>|[status](StructureDefinition-cpg-metricreport-definitions.html#key_MeasureReport.status)|<none>|pending|<none>|<none>|<none>|complete|error|
|^|[CPGCaseSummary](StructureDefinition-cpg-casesummary.html)|[summaryFor](StructureDefinition-cpg-casesummary-definitions.html#key_Composition.extension:summaryFor)|[status](StructureDefinition-cpg-casesummary-definitions.html#key_Composition.status)|<none>|pending|<none>|<none>|<none>|complete|error|
|^|[CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html)|[summaryFor](StructureDefinition-cpg-caseplansummary-definitions.html#key_Composition.extension:summaryFor)|[status](StructureDefinition-cpg-caseplansummary-definitions.html#key_Composition.status)|<none>|pending|<none>|<none>|<none>|complete|error|
|^|[CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html)|[summaryFor](StructureDefinition-cpg-caseplanprogressingnote-definitions.html#key_Composition.extension:summaryFor)|[status](StructureDefinition-cpg-caseplanprogressingnote-definitions.html#key_Composition.status)|<none>|pending|<none>|<none>|<none>|complete|error|
|[Propose a diagnosis](examples-activities.html#propose-a-diagnosis)|[CPGCondition](StructureDefinition-cpg-condition.html)|<none>|clinicalStatus and verificationStatus are present but neither map to event status|-|-|-|-|-|-|-|
|[Record a detected issue](examples-activities.html#record-a-detected-issue)|[CPGDetectedIssue](StructureDefinition-cpg-detectedissue.html)|<none>|[status](StructureDefinition-cpg-detectedissue-definitions.html#key_DetectedIssue.status)|preliminary?|<none>|cancelled|<none>|<none>|final|entered-in-error|
|[Record an inference](examples-activities.html#record-an-inference)|[CPGObservation](StructureDefinition-cpg-observation.html)|[basedOn](StructureDefinition-cpg-observation-definitions.html#key_Observation.basedOn)|[status](StructureDefinition-cpg-observation-definitions.html#key_Observation.status)|preliminary?|<none>|cancelled|<none>|<none>|final|entered-in-error|
|[Report a flag](examples-activities.html#report-a-flag)|[CPGFlag](StructureDefinition-cpg-flag.html)|<none>|[status](StructureDefinition-cpg-flag-definitions.html#key_Flag.status)|<none>|active|<none>|<none>|inactive?|<none>|entered-in-error|

