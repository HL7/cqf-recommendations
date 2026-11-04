**Methodology:** [Overview](methodology.html) · [Previous: Represent](methodology-represent.html) · [Next: Validate](methodology-validate.html)

<a id="translate"></a>

### Translate Step {#translate-step}

Author the formal artifacts from reviewed L1/L2 work products. Use the [Content IG Walkthrough](https://github.com/cqframework/content-ig-walkthrough) as a tooling example, checking compatibility with the chosen versions. Informatics, knowledge engineering, clinical authorship, and terminology responsibilities can be held by several people or combined roles.

#### Computable Clinical Practice Guideline

Establish the content repository, steward, canonical base URL, intended realm, publication route, and dependency versions. Use a canonical base controlled by the steward. The [Sample Content IG](https://github.com/cqframework/sample-content-ig) and [FHIR Community Process](http://fhir.org/community/process/) illustrate possible starting points; they are not required hosting arrangements.

#### Profiles

Use the data dictionary to decide which constraints need formal profiles. Two observations distinguished only by code may share an interoperability profile; separate profiles can support more specific validation. [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html) describes a feature definition, not a patient observation itself. Keep asserted data, calculated inferences, provenance, and time distinguishable even when an inferred result is persisted.

Content conforming to this implementation guide SHOULD use the [CPG Event Activity Profiles](profiles.html#activity-profiles) as the basis for case feature definitions.

In addition, content implementation guides will typically select a target realm for deployment, and SHOULD select a set of [Interoperability Profiles](profiles.html#content-profiles) appropriate for that realm.

#### Terminology

Identify or author the code systems, value sets, and mappings needed by the decisions. Record dependency versions, mapping qualifications, and expansion maintenance. See [Terminology](terminology.html) for the owning conformance requirements.

<!-- Specifically, terminology that is included as part of content implementation guides SHALL be at least [CPGShareableValueSet](StructureDefinition-cpg-shareablevalueset.html), and SHOULD be Computable, Publishable, and/or Executable, depending on the target. -->

#### Criteria {#criteria-1}

Express criteria and related calculations in CQL and publish them through Library resources with their dependencies and data requirements. See [Libraries](libraries.html) and [Using CQL With FHIR](http://hl7.org/fhir/uv/cql). Engine/tool availability does not prove agreement with the reviewed clinical cases.

#### Activities {#activities-1}

Use the FHIR R4 [definition, request, and event patterns](https://hl7.org/fhir/R4/workflow.html): a definition describes what can occur, a request describes what is proposed or intended, and an event records what is occurring or has occurred.

##### Activity Definitions

An ActivityDefinition is a patient-independent activity template. Applying it in context can produce patient-specific values and requests; it does not authorize or perform the action. The following context and parameterized examples are retained for navigation. Consult each artifact for its exact parameters.

|Name|Description|
|----|----|
|Patient|The current Patient in context|
|Practitioner|The current Practitioner interacting with the clinical system|
|Encounter|The Encounter in progress, if one is currently in progress|
{:.grid}

For convenience, this IG provides pre-built parameterizable ActivityDefinition instances for each of the activity types:

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

##### Activity Requests (Proposals)

Choose the recommendation instance profile appropriate to the proposed activity:

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

These profiles support proposal instances; `plan` or `order` use depends on the applicable profile and the local authorized workflow. See [recommendation instances and care plans](documentation-approach-12-05-cpg-careplan.html).

Content conforming to this implementation guide SHALL use one of the recommendation instance profiles described above to ensure supporting information related to the recommendation is preserved through the recommendation instance.

Specific guideline content MAY define derived profiles for recommendation instances establishing additional constraints.

##### Activity Events

Preserve links from the event to its definition, request, and pertinent patient information using the elements supported by its resource/profile. Case-feature metadata can additionally identify the feature definition, asserted/inferred origin, and pertinence. The table identifies event types; a dispense, administration, and medication statement are different evidence and do not each prove that an entire medication order is fulfilled.

|Activity|Event||----|----|
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

#### Recommendations

Represent a recommendation as a PlanDefinition event-condition-action rule: a trigger identifies when evaluation is relevant, a condition expresses applicability, and an action describes the proposed response. Use ActivityDefinition references and CQL expressions where appropriate.

Content conforming to this implementation guide SHALL use the [cpg-recommendationdefinition](StructureDefinition-cpg-recommendationdefinition.html) profile to represent recommendation definitions.

#### Strategies

Group related recommendation definitions for a clinical issue using a strategy definition. The definition is a PlanDefinition; [CPGStrategy](StructureDefinition-cpg-strategy.html) is a distinct RequestGroup profile for a patient-specific strategy.

Content conforming to this implementation guide SHALL use the [cpg-strategydefinition](StructureDefinition-cpg-strategydefinition.html) profile to represent strategy definitions.

#### Pathways

Use a pathway definition to organize strategies and scope the guideline. Distinguish clinical eligibility from local enrollment or activation. Decisions may be re-evaluated as information changes; any fixed sequence needs explicit clinical justification and implementation support. See [CPG plans](documentation-approach-12-03-cpg-plan.html).

Content conforming to this implementation guide SHALL use the [cpg-pathwaydefinition](StructureDefinition-cpg-pathwaydefinition.html) profile to represent pathway definitions.

**Methodology:** [Overview](methodology.html) · [Previous: Represent](methodology-represent.html) · [Next: Validate](methodology-validate.html)
