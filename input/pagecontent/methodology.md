Use this recipe to turn selected guideline recommendations into a reviewable, reusable FHIR R4 content package: **Select → Represent → Translate → Validate → Package**. Clinical authors, knowledge engineers, terminologists, and local implementors review the work together. Return to an earlier step whenever a test or implementation constraint exposes an unresolved clinical meaning.

The [representation levels](documentation-approach-06-01-levels-of-knowledge-representation.html) describe a continuum from narrative to local executable content; they are not certification grades. This page owns the recipe and its conformance statements. The [knowledge engineering lifecycle](documentation-approach-05-knowledge-engineering-overview.html) explains the responsibilities behind it. See the [historical COVID-19 walkthrough](methodology-case-study.html) for an example.

<a id="foundational-standards"></a>
<a id="model-implementation-guides"></a>
<a id="specification-implementation-guides"></a>
<a id="content-implementation-guides"></a>

### Implementation Guide Categories {#implementation-guide-categories}

A computable guideline is delivered as a **content implementation guide**: a collection of clinical knowledge artifacts conforming to specification guides and using suitable patient-data profiles. The content steward remains responsible for its clinical scope, approval, publication, and maintenance.

| Category | Purpose | Examples |
| --- | --- | --- |
| Foundational Standards | Define resources, expressions, and interfaces. | [FHIR R4](https://hl7.org/fhir/R4/), [FHIRPath](http://hl7.org/fhirpath), [CQL](http://cql.hl7.org), [CDS Hooks](http://cds-hooks.hl7.org), [SMART App Launch](http://hl7.org/fhir/smart-app-launch/) |
| Model Implementation Guides | Constrain exchanged patient data for a realm or purpose. | [IPS](http://hl7.org/fhir/uv/ips), [US Core](http://hl7.org/fhir/us/core), [QI-Core](http://hl7.org/fhir/us/qicore) |
| Specification Implementation Guides | Define how to represent, manage, or process knowledge. | This CPG IG, [CRMI](http://hl7.org/fhir/uv/crmi), [Using CQL With FHIR](http://hl7.org/fhir/uv/cql), [Quality Measures](http://hl7.org/fhir/us/cqfmeasures), [SDC](http://hl7.org/fhir/uv/sdc) |
| Content Implementation Guides | Publish a governed body of clinical knowledge. | [Sample Content IG](https://github.com/cqframework/sample-content-ig), [Opioid Prescribing](https://www.fhir.org/guides/cdc/opioid-cds/), [WHO Antenatal Care resources](https://smart.who.int/) |
{:.grid}

The categories describe responsibilities, not a mandatory four-step build order. A content package's chosen dependency versions determine its technical contract. The WHO link is its official publication catalogue; its antenatal-care FHIR guide is a working draft, not an added dependency of this IG.

### Overview

<div style="clear: both;">
  <img src="cpg-method-recipe.svg" alt="Five work products connect selection, semi-structured representation, FHIR/CQL translation, validation, and packaging." class="img-responsive center-block" width="1000"/>
</div>


| Step | Required input for the work | Result to review |
| --- | --- | --- |
| Select | Authoritative source and version, clinical need, audience, target settings | Scoped recommendations, actors, activities, timing, rationale, delivery assumptions |
| Represent | Selected recommendations and access to clinical experts | Data dictionary, explicit decision criteria, workflow sketch, ambiguity log, example cases |
| Translate | Reviewed semi-structured content and target standards | FHIR profiles, terminology, Library/CQL, ActivityDefinition and PlanDefinition artifacts |
| Validate | Artifacts, expected results, dependency versions, representative data | Separate conformance, logic, clinical-review, component, and integration findings |
| Package | Approved artifacts, dependencies, tests, and documentation | Versioned distribution with provenance, maintenance responsibility, and implementation notes |
{:.grid}

Capture decisions and their rationale throughout. A configuration option needs an explanation of its clinical meaning and permitted use; it does not transfer clinical interpretation to software. Published implementation experience shows that shared artifacts can still require substantial local implementation and maintenance effort. [Dhopeshwarkar et al., 2023](https://doi.org/10.1055/s-0043-1769911).

<a id="select"></a>

### Select Step {#select-step}

Select a bounded clinical decision and an achievable delivery approach. Assess value, effort, data availability, workflow fit, and maintenance needs with clinical, informatics, terminology, and representative implementation expertise.

| Question | Record |
| --- | --- |
| Who? | Patient/caregiver and professional personas; who reviews and acts |
| What? | Proposed clinical activity and relevant exceptions |
| When? | Clinical process, trigger, timing, and re-evaluation conditions |
| Where? | Care setting and target system capabilities |
| Why? | Source recommendation, evidence, ratings, and patient-specific supporting information |
{:.grid}

#### Personas

Describe roles before choosing codes. The [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system uses ISCO codes where available, WHO-derived categories prefixed with `W`, and IG-introduced categories prefixed with `C`. Patient and care-partner roles also need consideration.

Content conforming to this implementation guide MAY identify personas using the [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system.

#### Activities {#activities}

Use the [Activity Type](CodeSystem-cpg-activity-type-cs.html) code system to distinguish messaging, information collection, medication prescribing/dispensing/administration/documentation, immunization recommendations, service requests, enrollment, diagnosis proposals, detected issues, inferences, and flags. These distinctions determine which definition, request, and event profiles are appropriate; they do not imply that a recommended activity has occurred.

#### Processes {#processes}

Locate the recommendation in the [common care pathway](common-care-pathway.html), then document its actual local trigger and fulfillment needs. A conceptual care process is not a guarantee that an EHR offers a matching CDS Hooks event.

Content conforming to this implementation guide MAY identify processes using the [Common Processes](CodeSystem-cpg-common-process-cs.html) code system.

#### Settings

Describe where the activity occurs and which data and actions are available there.

Content conforming to this implementation guide MAY identify settings using the [HL7 V3 ServiceDeliveryLocationRoleType](https://hl7.org/fhir/R4/v3/ServiceDeliveryLocationRoleType/vs.html) value set.

#### Support

##### Guideline Supporting Information

Preserve the connection to the source recommendation and the rating system chosen by its authors. Evidence certainty, recommendation strength, and recommendation direction answer different questions; do not infer one from another.

Content conforming to this implementation guide SHALL provide references to supporting documentation for a recommendation in the form of a `relatedArtifact` element specifying a citation to the guideline.

Due to the variability in rating systems among guideline content, this implementation is not prescriptive about what grading system should be used, and the example bindings from the base specification apply. However, content conforming to this implementation guide SHALL identify a rating system and use that to provide rating information for recommendations and guidance, and provide documentation on what rating system was selected and how it is communicated through the content.

Content conforming to this implementation guide SHALL provide the strength of a recommendation using the [strengthOfRecommendation](http://hl7.org/fhir/R4/extension-cqf-strengthofrecommendation.html) extension.

Content conforming to this implementation guide SHALL provide the quality of evidence for a recommendation using the [qualityOfEvidence](http://hl7.org/fhir/R4/extension-cqf-qualityofevidence.html) extension.

Content conforming to this implementation guide MAY provide the directionality of a recommendation using the [directionOfRecommendation](StructureDefinition-cpg-directionOfRecommendation.html) extension.

[CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html) provides these rating extensions on `PlanDefinition.action`. The selected system and its communication remain documented even though this IG does not nominate one mandatory grading system. See [evidence and recommendation reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html).

##### Pertinent Information

Identify the patient-specific facts that explain applicability and support the proposed action. In R4, `PlanDefinition.action.input` and `.output` describe relevant data requirements. Missing data, an explicit negative, and a derived result retain different meanings.

<a id="represent"></a>

### Represent Step {#represent-step}

Create semi-structured content that clinicians can inspect without reading CQL. Review it with clinical, informatics, and terminology experts before using it as the specification for translation.

#### Concepts

For each data element, record its clinical description, context, collection/source, datatype, units, time, and candidate representation. Record inexact terminology mappings and unresolved meaning. Coding WHO operational specifications exposed ambiguous and composite concepts; mapping required clinical review rather than label matching. [Pretty et al., 2023](https://doi.org/10.1136/bmjhci-2022-100691).

The following historical Opioid Prescribing Guideline excerpt illustrates a data dictionary; it is an implementation example, not updated clinical advice.

{% include opg-recommendation-4/opg-recommendation-04-05-data-dictionary.html %}

#### Criteria {#criteria}

Write inclusion, exclusion, timing, exceptions, and expected results in precise clinical language. Link each decision to its source and add example cases. The existing example's functional description is retained below; interpret it with its source guideline and version.

{% include opg-recommendation-4/recommendation-04-05-functional-description.html %}

#### Processes {#processes-1}

Draw only the actors, decisions, information needs, and actions needed to review the recommendation. Accompany the diagram with the explicit criteria; a flowchart is not an executable specification.

<div style="clear: both;">
  <img src="cpg-method-translation.svg" alt="A clinical recommendation is refined into explicit concepts and criteria, then reviewed before FHIR and CQL authoring." class="img-responsive center-block" width="1000"/>
</div>


##### Delivery of contextualized narrative

Specify the message, intended recipient, timing, and relevant patient context. A notification can be the complete intended intervention.

##### Actionable intervention

Specify a proposed activity as a request resource. The local system and authorized people determine acceptance and fulfillment. Even a request-only implementation can describe the expected event for later assessment.

##### Process integration

Document how requests are fulfilled and tracked, including responsible actors and relevant events. This adds local workflow obligations; it does not make proposal generation equivalent to care delivery. See [activity flow](activityflow.html).

<a id="translate"></a>

### Translate Step

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

<a id="validate"></a>

### Validate Step {#validate-step}

Test fidelity to the L1/L2 specification as well as technical conformance. Keep the following findings separate; passing one does not establish the others. See [execution and validation](documentation-approach-05-04-knowledge-execution-and-validation.html) for the review sequence.

#### Conformance

Validate against the selected profiles and [conformance requirements](documentation-conformance.html), including dependencies and terminology. Structural validity does not establish clinical benefit.

#### Checklists

Use the [L1](clinical-guidelines-development-L1-checklist.html), [L2](clinical-guidelines-development-L2-checklist.html), [L3](clinical-guidelines-development-L3-checklist.html), and [L4](clinical-guidelines-development-L4-checklist.html) checklists to communicate readiness and remaining work across roles.

#### Expert Review

Ask a qualified clinical domain expert to review intent, exceptions, and expected outputs. Include representative implementation-site review of data availability and workflow. Record disagreements and their resolution.

#### Testing Scenarios

Describe inputs, relevant context, expected output, and the reason for the expected result. FHIR resources and [ExampleScenario](https://hl7.org/fhir/R4/examplescenario.html) can make cases explicit. Include positive, negative, missing-data, boundary, and temporal cases.

#### Unit Testing

Test individual expressions and artifacts against approved cases. [VSCode CQL test-data guidance](https://github.com/cqframework/vscode-cql/wiki/User-Guide#adding-test-data) is one tooling example. Record the tested engine, model, library, and terminology versions.

#### Component Testing

Test composed libraries and definitions with controlled dependencies. A reference implementation can help exercise artifacts; it is not a substitute for clinical review. The [Opioid Prescribing implementation documentation](https://www.fhir.org/guides/cdc/opioid-cds/documentation.html) records pilot-testing scenarios and distinguishes validated from unvalidated functionality.

#### Integration Testing

Test the actual client/service interaction, authorization, data retrieval, timing, rendering, proposed actions, and failure behavior. A sandbox demonstrates a simulated interaction, not production readiness. See the [CDS Hooks walkthrough](https://github.com/cqframework/content-ig-walkthrough#validation-with-cqf-ruler-and-cds-hooks). A 2026 standards-based pilot still needed local data and order mappings and progressive testing; two same-vendor integrations did not establish universal portability. [Shenvi et al., 2026](https://doi.org/10.1002/lrh2.70104).

### Packaging

Publish approved artifacts with dependencies, source citations, test cases, review findings, configuration decisions, and maintenance responsibility. Canonical resources follow the CRMI lifecycle; distribution may use a content IG or artifact repository and a CRMIManifestLibrary. See [CRMI Packaging](http://hl7.org/fhir/uv/crmi/packaging.html), [knowledge assets](documentation-approach-06-02-knowledge-assets.html), and [Downloads](downloads.html).

### Mapping and Other Formalisms

[BPM+ mappings](documentation-methodology.html) describe optional approaches using BPMN, DMN, and CMMN. A transformation needs semantic review and comparative testing; it is not a guarantee that all constructs translate equivalently.
