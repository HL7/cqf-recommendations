<a id="translate"></a>

### Translate Step {#translate-step}

Use the reviewed L1/L2 specification to author the FHIR R4 content and CQL. The knowledge engineer carries each criterion, input, and proposed response into the artifacts. The terminology owner reviews the coded meaning, and the clinical reviewer decides questions about interpretation that surface during authoring. The [Content IG Walkthrough](https://github.com/cqframework/content-ig-walkthrough) illustrates tooling for authoring a package. Check its compatibility with the project's selected versions.

Start with [content identity and dependencies](#computable-clinical-practice-guideline), then define the [data profiles](#profiles), [terminology](#terminology), and [logic](#criteria-1). Describe the [activities](#activities-1) and assemble them into [recommendations](#recommendations), [strategies](#strategies), and [pathways](#pathways).

#### Establish content identity and dependencies {#computable-clinical-practice-guideline}

The content steward establishes the repository, canonical base URL, intended realm, publication route, and dependency versions. Use a canonical base controlled by the steward so the identities used in definitions and dependencies can persist across releases. [Sample Content IG](https://github.com/cqframework/sample-content-ig) · [FHIR Community Process](http://fhir.org/community/process/)

#### Choose profiles for the clinical data {#profiles}

Map each data dictionary entry to the FHIR data the logic will read. Two observations distinguished only by code may share an interoperability profile. Use a separate profile when a distinct set of constraints needs to be validated. A CPGCaseFeatureDefinition describes a reusable feature. A corresponding patient observation can carry the patient-specific value and timing. Preserve the provenance of each result and distinguish asserted facts from calculated inferences when persisting them. [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html)

Content conforming to this implementation guide SHOULD use the [CPG Event Activity Profiles](profiles.html#activity-profiles) as the basis for case feature definitions.

In addition, content implementation guides will typically select a target realm for deployment, and SHOULD select a set of [Interoperability Profiles](profiles.html#content-profiles) appropriate for that realm.

#### Identify the terminology dependencies {#terminology}

Identify or author the code systems, value sets, and mappings needed by each decision. Carry over the mapping qualifications agreed during representation and record versions and responsibility for maintaining expansions. Take meaning that cannot be expressed with the selected codes back to the clinical and terminology reviewers. [Terminology requirements](terminology.html)

<!-- Specifically, terminology that is included as part of content implementation guides SHALL be at least [CPGShareableValueSet](StructureDefinition-cpg-shareablevalueset.html), and SHOULD be Computable, Publishable, and/or Executable, depending on the target. -->

#### Author the decision logic {#criteria-1}

Express the reviewed criteria and calculations in CQL. Publish the logic through Library resources with its dependencies and data requirements. Connect the expressions to the source criteria and expected cases so reviewers can test how the logic handles timing, missing information, and exceptions. [Libraries](libraries.html) · [Using CQL With FHIR](http://hl7.org/fhir/uv/cql)

#### Choose activity definitions, requests, and events {#activities-1}

Choose resources based on what each artifact represents. A definition describes what can occur. A request describes what is proposed or intended for a patient. An event records what is occurring or has occurred. For example, a medication proposal and a later record of dispensing describe different stages of care. [FHIR R4 definition, request, and event patterns](https://hl7.org/fhir/R4/workflow.html) · [Activity flow](activityflow.html)

##### Activity definitions {#activity-definitions}

An ActivityDefinition is a patient-independent template. Applying it in context can produce patient-specific values and requests. Acceptance, authorization, and fulfillment occur through the receiving workflow. Consult each artifact for the exact context and parameters it accepts.

|Name|Description|
|----|----|
|Patient|The current Patient in context|
|Practitioner|The current Practitioner interacting with the clinical system|
|Encounter|The Encounter in progress, if one is currently in progress|
{:.grid}

This IG provides the following parameterized ActivityDefinition examples.

|Activity|Parameters|
|--------|--------|
|[**AdministerMedication**](ActivityDefinition-cpg-administermedication-activitydefinition.html)|**MedicationRequest**: The detailed medication request to be administered. This may be an existing order, or it may be produced as part of the administer medication activity|
|[**CollectInformation**](ActivityDefinition-cpg-collectinformation-activitydefinition.html)|**QuestionnaireCanonical**: The canonical URL of the questionnaire to be used to collect the information|
|[**CommunicationRequest**](ActivityDefinition-cpg-communicationrequest-activitydefinition.html)|**CategoryCodeableConcept**: The category of communication|
|[**DispenseMedication**](ActivityDefinition-cpg-dispensemedication-activitydefinition.html)|**MedicationRequest**: The detailed medication request to be dispensed. This may be an existing order, or it may be produced as part of the dispense medication activity|
|[**DocumentMedication**](ActivityDefinition-cpg-documentmedication-activitydefinition.html)|**MedicationRequest**: The detailed medication request to be documented. This may be an existing order, or it may be produced as part of the document medication activity|
|[**Enrollment**](ActivityDefinition-cpg-enrollment-activitydefinition.html)|**PathwayCanonical**: The canonical URL of the pathway or strategy in which the patient is enrolled/unenrolled|
|[**GenerateReport**](ActivityDefinition-cpg-generatereport-activitydefinition.html)|**DefinitionCanonical**: The canonical URL of the metric, case report, or profile to use to generate the report|
|[**ImmunizationRequest**](ActivityDefinition-cpg-immunizationrequest-activitydefinition.html)|**VaccineCodeableConcept**: The vaccine being recommended|
|[**MedicationRequest**](ActivityDefinition-cpg-medicationrequest-activitydefinition.html)|**MedicationCodeableConcept**: The medication being proposed, as a CodeableConcept<br/>DoseQuantity: The quantity of medication<br/>DosesPerDay: The number of doses per day, as a decimal|
|[**ProposeDiagnosisTask**](ActivityDefinition-cpg-proposediagnosistask-activitydefinition.html)|**DiagnosisCodeableConept**: The diagnosis being proposed|
|[**RecordDetectedIssueTask**](ActivityDefinition-cpg-recorddetectedissue-activity.html)|**IssueCodeableConcept**: The issue being recorded|
|[**RecordInferenceTask**](ActivityDefinition-cpg-recordinference-activity.html)|**InferenceCodeableConcept**: The type of inference being recorded<br/>InferenceValue: The value of the inference being recorded|
|[**ReportFlagTask**](ActivityDefinition-cpg-reportflagtask-activitydefinition.html)|**IssueCodeableConcept**: The issue being flagged|
|[**ServiceRequest**](ActivityDefinition-cpg-servicerequest-activitydefinition.html)|**ServiceCodeableConcept**: The type of service being proposed|
{:.grid}

<!-- Content conforming to this implementation guide SHALL use at least the [CPG Shareable Activity Definition](StructureDefinition-cpg-shareableactivitydefinition.html) profile, and SHOULD use the Computable and Publishable profiles when specifying activity definitions. -->

##### Activity requests (proposals) {#activity-requests-proposals}

Choose the recommendation instance profile that represents the action proposed.

* [AdministerMedicationTask](StructureDefinition-cpg-administermedicationtask.html): Recommendation to administer a specific medication
* [CommunicationRequest](StructureDefinition-cpg-communicationrequest.html): Recommendation for a specific communication
* [DispenseMedicationTask](StructureDefinition-cpg-dispensemedicationtask.html): Recommendation to dispense a specific medication
* [DocumentMedicationTask](StructureDefinition-cpg-documentmedicationtask.html): Recommendation to document use of a specific medication
* [ImmunizationRequest](StructureDefinition-cpg-immunizationrequest.html): Recommendation for a particular immunization
* [MedicationRequest](StructureDefinition-cpg-medicationrequest.html): Recommendation for a specific medication
* [ProposeDiagnosisTask](StructureDefinition-cpg-proposediagnosistask.html): Recommendation to propose a specific diagnosis
* [QuestionnaireTask](StructureDefinition-cpg-questionnairetask.html): Recommendation to collect specific information using a questionnaire
* [EnrollmentTask](StructureDefinition-cpg-enrollmenttask.html): Recommendation to enroll (or unenroll) a patient in a pathway or strategy
* [GenerateReportTask](StructureDefinition-cpg-generatereporttask.html): Recommendation to generate a metric, measure, or case report
* [RecordDetectedIssueTask](StructureDefinition-cpg-recorddetectedissuetask.html): Recommendation to record a specific detected issue
* [RecordInferenceTask](StructureDefinition-cpg-recordinferencetask.html): Recommendation to record a specific inference
* [ReportFlagTask](StructureDefinition-cpg-reportflagtask.html): Recommendation to report a particular flag
* [ServiceRequest](StructureDefinition-cpg-servicerequest.html): Recommendation for a particular procedure or referral to a specialist or instructions for self-care such as smoking cessation counseling or exercise

The applicable profile and the local authorized workflow determine whether the activity can also be represented with `plan` or `order` intent. [Recommendation instances and care plans](approach-model.html#care-plan)

Content conforming to this implementation guide SHALL use one of the recommendation instance profiles described above to ensure supporting information related to the recommendation is preserved through the recommendation instance.

Specific guideline content MAY define derived profiles for recommendation instances establishing additional constraints.

##### Activity events {#activity-events}

Use the elements supported by the event's profile to link it to its definition, request, and pertinent patient information. Case-feature metadata can identify the feature definition, whether the fact is asserted or inferred, and its pertinence. The event resource describes the evidence actually recorded. For example, a dispense, administration, and medication statement each tell a reviewer something different about a medication order.

|Activity|Event|
|----|----|
|Send a message|[CPGCommunication](StructureDefinition-cpg-communication.html)|
|Administer medication|[CPGMedicationAdministration](StructureDefinition-cpg-medicationadministration.html)|
|Collect information|[CPGQuestionnaireResponse](StructureDefinition-cpg-questionnaireresponse.html)|
|Dispense medication|[CPGMedicationDispense](StructureDefinition-cpg-medicationdispense.html)|
|Document medication|[CPGMedicationStatement](StructureDefinition-cpg-medicationstatement.html)|
|Enrollment|[CPGCase](StructureDefinition-cpg-case.html)|
|Generate report|[CPGMetricReport](StructureDefinition-cpg-metricreport.html)<br/>[CPGCaseSummary](StructureDefinition-cpg-casesummary.html)<br/>[CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html)<br/>[CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html)|
|Order a medication|[CPGMedicationDispense](StructureDefinition-cpg-medicationdispense.html)<br/>[CPGMedicationAdministration](StructureDefinition-cpg-medicationadministration.html)<br/>[CPGMedicationStatement](StructureDefinition-cpg-medicationstatement.html)|
|Recommend an immunization|[CPGImmunization](StructureDefinition-cpg-immunization.html)|
|Order a service|[CPGProcedure](StructureDefinition-cpg-procedure.html)<br/>[CPGObservation](StructureDefinition-cpg-observation.html)|
|Propose a diagnosis|[CPGCondition](StructureDefinition-cpg-condition.html)|
|Record a detected issue|[CPGDetectedIssue](StructureDefinition-cpg-detectedissue.html)|
|Record an inference|[CPGObservation](StructureDefinition-cpg-observation.html)|
|Report a flag|[CPGFlag](StructureDefinition-cpg-flag.html)|
{:.grid}

Content conforming to this implementation guide SHALL use the event profiles defined above to ensure guideline supporting and tracking information is available for activities delivered in the context of a computable guideline.

#### Define individual recommendations {#recommendations}

Represent a recommendation as a PlanDefinition event-condition-action rule. The trigger identifies when evaluation is relevant, the condition expresses applicability, and the action describes the proposed response. Use CQL expressions for the authored logic and ActivityDefinition references where appropriate. Carry the citation and recommendation ratings from Select into the definition. [Guideline supporting information](methodology-select.html#guideline-supporting-information)

Content conforming to this implementation guide SHALL use the [cpg-recommendationdefinition](StructureDefinition-cpg-recommendationdefinition.html) profile to represent recommendation definitions.

#### Group recommendations into strategies {#strategies}

Use a strategy definition to group related recommendation definitions for a clinical issue. The reusable strategy definition is a PlanDefinition. A patient-specific strategy can be represented as a [CPGStrategy](StructureDefinition-cpg-strategy.html) RequestGroup.

Content conforming to this implementation guide SHALL use the [cpg-strategydefinition](StructureDefinition-cpg-strategydefinition.html) profile to represent strategy definitions.

#### Organize strategies into pathways {#pathways}

Use a pathway definition to organize strategies and describe the scope of the guideline. Specify clinical eligibility separately from local enrollment or activation. Decisions can be reevaluated as information changes. If a pathway calls for a fixed sequence, have clinical reviewers confirm the rationale and local implementers confirm that the workflow can support it. [CPG plans](approach-model.html#plan)

Content conforming to this implementation guide SHALL use the [cpg-pathwaydefinition](StructureDefinition-cpg-pathwaydefinition.html) profile to represent pathway definitions.

#### Hand off artifacts for validation {#artifact-handoff}

Take the authored definitions, profiles, terminology, libraries, and their dependency versions into Validate with the reviewed cases. Keep the source-to-artifact links and any unresolved decisions with the work so reviewers can trace a discrepancy to the relevant criterion, mapping, or activity.

{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" previous="methodology-represent.html" previous_title="Represent" next="methodology-validate.html" next_title="Validate" %}
