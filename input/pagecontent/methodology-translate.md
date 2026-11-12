This page was reorganized from the single Methodology page of the previous version of this guide, and its guidance was expanded (see the [change log](changes.html)).
{:.modified-content}

<a id="translate"></a>

### Translate Step {#translate-step}

Use the reviewed specification from the [Represent step](methodology-represent.html#represent-step) to author the FHIR R4 content and its computable logic. The knowledge engineer carries each criterion, input, and proposed response into the artifacts. The terminology owner reviews the coded meaning, and the clinical reviewer decides questions about interpretation that surface during authoring. The [Content IG Walkthrough](https://github.com/cqframework/content-ig-walkthrough) illustrates tooling for authoring a package. Check its compatibility with the project's selected versions.

The _translate_ step involves using the narrative (L1) and semi-structured (L2) outputs from the _select_ and _represent_ steps to create formal, computable, standards-based representations of guideline content: specifically, FHIR profiles (i.e. _case features_), CPG activities, CQL logic, and CPG recommendations, strategies, and pathways (structured, L3 content). This step is typically performed by a team consisting of at least:

* A _health informaticist_, familiar with standards-based representations and implementation in clinical systems
* A _knowledge engineer_, familiar with the tooling used to author and publish FHIR implementation guides
* A _knowledge author_, familiar with the standards involved in representation, including CQL, FHIR, and CPG
* A _terminologist_, familiar with the tools and terminologies required to author code system and value set content


#### Trace guidance to computable artifacts {#artifact-mapping}

Record which guideline passages and journal articles (L1) inform the reviewed data, criteria, and activities from Represent (L2), and which FHIR and CQL artifacts (L3) implement them. These relationships can be one-to-one or many-to-many.

Start with [content identity and dependencies](#computable-clinical-practice-guideline), then define the [data profiles](#profiles), [terminology](#terminology), and [logic](#criteria-1). Describe the [activities](#activities-1) and assemble them into [recommendations](#recommendations), [strategies](#strategies), and [pathways](#pathways). Define any [patient-level metrics](#metrics) needed to evaluate progress.

#### Establish content identity and dependencies {#computable-clinical-practice-guideline}

The content steward establishes the repository, canonical base URL, intended realm, publication route, and dependency versions. Use a canonical base controlled by the steward so the identities used in definitions and dependencies can persist across releases. [Sample Content IG](https://github.com/cqframework/sample-content-ig) · [FHIR Community Process](http://fhir.org/community/process/)

A computable Clinical Practice Guideline (CPG) following this methodology is delivered as a FHIR Implementation Guide, and the first step to developing the content is to establish the content IG. This typically takes the form of a Github repository, similar to the [Sample Content IG](https://github.com/cqframework/sample-content-ig).

Pay particular attention at this step to the selection of the canonical URL for the computable guideline, as it will determine the base of the URLs for all the artifacts published by the IG, as well as enable resolution of artifacts when the IG is published at its canonical URL.

Many FHIR implementation guides are Health Level 7 (HL7) balloted specifications, and as such are published on the HL7 FHIR website. For example, the US Core implementation guide is published at http://hl7.org/fhir/us/core. However, for content IGs, the steward of the content will typically be the publisher, so the canonical base URL for the IG should be selected using a domain that the steward controls.

For open-source content with a commitment to maintain it, the [fhir.org](http://fhir.org) site can provide a publication alternative by following the [FHIR Community Process](http://fhir.org/community/process/).


#### Choose profiles for the clinical data {#profiles}

Map each data dictionary entry to the FHIR data the logic will read. Two observations distinguished only by code may share an interoperability profile. Use a separate profile when a distinct set of constraints needs to be validated. A CPGCaseFeatureDefinition describes a reusable feature. A corresponding patient observation can carry the patient-specific value and timing. Preserve the provenance of each result and distinguish asserted facts from calculated inferences when persisting them. [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html)

Broadly, data elements defined in the data dictionary result in _case features_, or profiles that use the [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html) profile. Case features fall into two categories:

* **assertions**: Data that is asserted/documented as part of the patient record
* **inferences**: Data that is inferred from other assertions and/or inferences

Note that an _inferred_ case feature may be recorded as part of the patient record, so that it effectively becomes an _asserted_ case feature. And it may also be the case that _asserted_ case features can also be calculated based on other values in the patient record.

Because case features are aspects of the patient's record (or typically events that _have occurred_, as opposed to _are planned_), case features will typically be [_event_](http://hl7.org/fhir/R4/event.html) resources.

§data-1^^data:Content conforming to this implementation guide **SHOULD** use the [CPG Event Activity Profiles](profiles.html#activity-profiles) as the basis for case feature definitions.§

In addition, content implementation guides will typically select a target realm for deployment, and select [interoperability profiles](profiles.html#implementation-considerations) appropriate for that realm (statement prof-2).

#### Identify the terminology dependencies {#terminology}

Identify or author the code systems, value sets, and mappings needed by each decision. Carry over the mapping qualifications agreed during representation and record versions and responsibility for maintaining expansions. Take meaning that cannot be expressed with the selected codes back to the clinical and terminology reviewers. [Terminology requirements and maintenance guidance](terminology.html#developing-and-maintaining-terminology)

This step is typically performed by the terminologist with help from the knowledge engineering role to assist in creating FHIR representations. For terminology servers that already support authoring and distribution of FHIR ValueSet resources, this is less of an issue, but often there are not complete solutions available, and additional tooling is required to support the terminology publishing needs. For more discussion on the creation and distribution of value sets, see the [Terminology](terminology.html) page.


#### Author the decision logic {#criteria-1}

Express the reviewed criteria and calculations in a supported logic language. If you use CQL, follow the conformance requirements for CQL content. Publish the logic through Library resources with its dependencies and data requirements. Connect the expressions to the source criteria and expected cases so reviewers can test how the logic handles timing, missing information, and exceptions. [Libraries](libraries.html) · [Using CQL With FHIR](https://hl7.org/fhir/uv/cql/)

IG Publisher can attach the authored CQL to its Library resources through the [binary adjunct loader](https://build.fhir.org/ig/FHIR/ig-guidance/branches/languages/binaries.html#binary-adjunct-files) and [generate ELM](https://build.fhir.org/ig/FHIR/ig-guidance/branches/languages/binaries.html#cql-processing). Check the resulting Library attachments, dependencies, and data requirements before packaging.

#### Choose activity definitions, requests, and events {#activities-1}

Across guideline-based care, there are many different types of recommendations that may be given, such as the recommendation to conduct a specific test, to prescribe a specific medication, recommendation for a particular procedure, and many others. Following the general [workflow](http://hl7.org/fhir/R4/workflow.html) pattern established in FHIR, the activities within these recommendations are represented by the following patterns:

* [**Definition**](http://hl7.org/fhir/R4/definition.html): Clinical, administrative, or other events that _can_ occur
* [**Request**](http://hl7.org/fhir/R4/request.html): Clinical, administrative, or other events that _should_ or _are planned to_ occur
* [**Event**](http://hl7.org/fhir/R4/event.html): Clinical, administrative, or other events that _are occurring_ or _have occurred_


Choose resources based on what each artifact represents. A definition describes what can occur. A request describes what is proposed or intended for a patient. An event records what is occurring or has occurred. For example, a medication proposal and a later record of dispensing describe different stages of care. [FHIR R4 definition, request, and event patterns](https://hl7.org/fhir/R4/workflow.html) · [Activity flow](activityflow.html)

##### Activity definitions {#activity-definitions}

Readers of this implementation guide should refer to the [Definitional Artifacts](http://hl7.org/fhir/R4/clinicalreasoning-topics-definitional-resources.html) topic in the FHIR specification for general information on how ActivityDefinition resources are used to describe the activities that can be performed.


An ActivityDefinition is a patient-independent template. Applying it in context can produce patient-specific values and requests. Acceptance, authorization, and fulfillment occur through the receiving workflow. Consult each artifact for the exact context and parameters it accepts.

|Name|Description|
|----|----|
|Patient|The current Patient in context|
|Practitioner|The current Practitioner interacting with the clinical system|
|Encounter|The Encounter in progress, if one is currently in progress|
{:.grid}

These generic ActivityDefinitions illustrate inputs and target fields. Their `dynamicValue` expressions require review and testing before reuse. See [Activity Examples](examples-activities.html) for worked definitions, libraries, and scenario resources.

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
|[**MedicationRequest**](ActivityDefinition-cpg-medicationrequest-activitydefinition.html)|**MedicationCodeableConcept**: The medication being proposed, as a CodeableConcept<br/>**DoseQuantity**: The quantity of medication<br/>**DosesPerDay**: The intended number of doses per day. The generic timing expression uses this value as the period and needs correction before use.|
|[**ProposeDiagnosisTask**](ActivityDefinition-cpg-proposediagnosistask-activitydefinition.html)|**DiagnosisCodeableConcept**: The diagnosis being proposed|
|[**RecordDetectedIssueTask**](ActivityDefinition-cpg-recorddetectedissue-activity.html)|**IssueCodeableConcept**: The issue being recorded|
|[**RecordInferenceTask**](ActivityDefinition-cpg-recordinference-activity.html)|**InferenceCodeableConcept**: The type of inference being recorded<br/>**InferenceValue**: The value of the inference being recorded. Construct the result according to the selected inference profile.|
|[**ReportFlagTask**](ActivityDefinition-cpg-reportflagtask-activitydefinition.html)|**IssueCodeableConcept**: The issue being flagged|
|[**ServiceRequest**](ActivityDefinition-cpg-servicerequest-activitydefinition.html)|**ServiceCodeableConcept**: The type of service being proposed|
{:.grid}

<!-- Content conforming to this implementation guide SHALL use at least the [CPG Shareable Activity Definition](StructureDefinition-cpg-shareableactivitydefinition.html) profile, and SHOULD use the Computable and Publishable profiles when specifying activity definitions. -->

##### Activity requests (proposals) {#activity-requests-proposals}

Proposed activities are represented with request resources, and for each type of activity, this implementation guide defines a proposal profile. These are effectively the _recommended action_ to be taken as part of a guideline recommendation, and in general they each specify:

* **Explanation**: A narrative statement providing the rationale, or explanation, for the recommendation
* **Source**: A link back to the guideline, and ultimately the evidence, that supports the recommendation
* **Pertinents**: The pertinent positive or negative information relevant to the recommendation

These profiles are intended to be used for proposals, and so are modeled with the [proposal](http://hl7.org/fhir/R4/codesystem-request-intent.html#request-intent-proposal) intent. Note that some implementations may go further and use the `plan` or even `order` intents of a request, depending on the capabilities of the systems involved.


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

The applicable profile and the local authorized workflow determine whether the activity can also be represented with `plan` or `order` intent. [Recommendation instances and care plans](documentation-approach-12-05-cpg-careplan.html)

§act-1^^activity:Content conforming to this implementation guide **SHALL** use one of the recommendation instance profiles described above to ensure supporting information related to the recommendation is preserved through the recommendation instance.§

Specific guideline content MAY define derived profiles for recommendation instances establishing additional constraints.

##### Activity events {#activity-events}

For each of the activity types, this implementation guide defines an _event_ profile for modeling when the activities have actually occurred. Each event profile typically describes:

* **source reference**: Usually the `instantiatesCanonical` element, referring back to the guideline (definitional) content
* **request reference**: Usually the `basedOn` element, referring back to the request the event is fulfilling
* **pertinent**: Pertinent positive or negative information relevant to the event


Use the elements supported by the event's profile to link it to its definition, request, and pertinent patient information. The event resource describes the evidence actually recorded. For example, a dispense, administration, and medication statement each tell a reviewer something different about a medication order. When an event is also a case feature, [`instantiatesCaseFeature`](StructureDefinition-cpg-instantiatesCaseFeature.html) identifies the feature definition and [`caseFeatureType`](StructureDefinition-cpg-caseFeatureType.html) records whether the fact is asserted or inferred.

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

§act-2^^activity:Content conforming to this implementation guide **SHALL** use the event profiles defined above to ensure guideline supporting and tracking information is available for activities delivered in the context of a computable guideline.§

<div class="new-content" markdown="1">

Requests can also be case features. A current order may be the first or only recorded signal of an intervention, so the request profiles support the same case-feature extensions.

###### Pertinence relationships {#pertinence-relationships}

Pertinence describes how facts such as signs, symptoms, and lab values contribute to a specific clinical finding, such as a condition or physiological state. Check the applicable instance profile for extension support. Examples include request and event profiles, case-feature profiles such as [CPGCondition](StructureDefinition-cpg-condition.html), and the [CPGCaseSummary](StructureDefinition-cpg-casesummary.html) and [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html) profiles.

* [`pertinent`](StructureDefinition-cpg-pertinent.html) links a finding or recommendation to the patient information relevant to it.
* [`pertinentTo`](StructureDefinition-cpg-pertinentTo.html) links a patient fact to the higher-level finding it is pertinent to.
* [`caseFeaturePertinence`](StructureDefinition-cpg-caseFeaturePertinence.html) qualifies how a fact bears on the particular finding. The [pertinence value set](ValueSet-cpg-casefeature-pertinence-vs.html) includes weakly positive, strongly positive, weakly negative, strongly negative, and pathognomonic codes.
* [`pertinenceRating`](StructureDefinition-cpg-pertinenceRating.html) expresses the weight of a fact for inferring the finding as an integer from 0 (no weight) to 10 (greatest weight). Use it alone or alongside the coded pertinence.

The two link directions let a system document the relationship when it manages only one of the records. To qualify the fact on a supported instance resource, use the resource's `extension` element. To qualify a specific `pertinent` or `pertinentTo` link, put the coded pertinence or rating on that link's `Reference` using `valueReference.extension`.

In the synthetic CHF case, [jugular venous pressure observation 4](Observation-chf-scenario1-jvp4.html) uses `pertinentTo` to link to [observation 5](Observation-chf-scenario1-jvp5.html) and gives that reference an illustrative weight of 8. Observation 5 uses `pertinent` to link back to observation 4 and records `strongly-positive` on the Observation itself.

</div>

#### Define individual recommendations {#recommendations}

Represent a recommendation as a PlanDefinition event-condition-action rule. The trigger identifies when evaluation is relevant, the condition expresses applicability, and the action describes the proposed response. Reference the expressions and activity definitions that implement the reviewed criteria and proposed action. Carry the citation and recommendation ratings from Select into the definition. [Guideline supporting information](methodology-select.html#guideline-supporting-information)

§rec-5^^recommendation:Content conforming to this implementation guide **SHALL** use the [cpg-recommendationdefinition](StructureDefinition-cpg-recommendationdefinition.html) profile to represent recommendation definitions.§

The recommendation used in this way specifies:

* **Event**: When the recommendation guidance should be applied, typically identified as a named event within the workflow
* **Condition**: Applicability of the guidance at that point, based on current patient-state as described by the inclusion logic for the recommendation
* **Action**: The activity to be performed, typically represented as a simple message, or a more sophisticated ActivityDefinition to produce a _recommendation instance_

Readers of this implementation guide should refer to the [Applying a PlanDefinition](http://hl7.org/fhir/R4/plandefinition.html#12.18.3.3) topic for details on how an event-condition-action rule can be applied to a particular patient to produce guidance appropriate to that patient.


#### Group recommendations into strategies {#strategies}

Use a strategy definition to group related recommendation definitions for a clinical issue. The reusable strategy definition is a PlanDefinition. A patient-specific strategy can be represented as a [CPGStrategy](StructureDefinition-cpg-strategy.html) RequestGroup.

§rec-6^^recommendation:Content conforming to this implementation guide **SHALL** use the [cpg-strategydefinition](StructureDefinition-cpg-strategydefinition.html) profile to represent strategy definitions.§

<div class="new-content" markdown="1">

##### Coordinate related recommendations {#strategy-coordination}

A strategy can express how related recommendations are intended to work together, so the team can review their sequencing and dependencies. Specify when each recommendation can be evaluated and whether it depends on a Case Feature, a prior proposal, an authorized request, or a documented event. For example, if guidance calls for reassessment after an intervention, establish which event starts the interval and what happens if fulfillment is partial or unknown. A source recommendation, decision table, or flow diagram may describe the relationships. When the source leaves sequencing or a conflict unresolved, record the interpretation with the guideline team before encoding it. Use the [PlanDefinition processing semantics](documentation-approach-09-methods-of-implementation.html#plandefinition-processing-semantics) to express the agreed dependencies.

</div>



#### Organize strategies into pathways {#pathways}

Use a pathway definition to organize strategies and describe the scope of the guideline. Specify clinical eligibility separately from local enrollment or activation. Decisions can be reevaluated as information changes. If a pathway calls for a fixed sequence, have clinical reviewers confirm the rationale and local implementers confirm that the workflow can support it. [CPG plans](documentation-approach-12-03-cpg-plan.html)

§rec-7^^recommendation:Content conforming to this implementation guide **SHALL** use the [cpg-pathwaydefinition](StructureDefinition-cpg-pathwaydefinition.html) profile to represent pathway definitions.§

For example, the WHO antenatal care guideline recommends an overall contact schedule consisting of eight contacts at specific points during the pregnancy. This is represented using a pathway with actions for each of the contacts, where each action defines an applicability criteria that identifies the recommended timing of the encounter. The activities in a pathway used in this way are references to other strategies, rather than particular activities to be performed.

The choice between representation using recommendations, strategies, and pathways depends on a variety of factors, largely driven by:

1. Level of specificity, (i.e. the degree to which the guideline is explicit about specifying behaviors), ranging from specification of just recommendations and eligibility, up through and including longitudinal orchestration of care
2. Level of flexibility, (i.e. the degree to which the actions to be taken are explicitly specified (what vs how)

We use the term pathway in this methodology for a more flexible representation of the guidance, as opposed to a protocol which would typically be a more rigid description of a particular process. Depending on the guideline, there may be aspects of the pathway that are expected to be more rigid (i.e. closer to protocols), depending on the clinical specification.


<div class="new-content" markdown="1">

#### Metrics {#metrics}

This implementation guide uses the Measure resource to represent [metrics](documentation-approach-04-05-computable-guideline-artifacts.html#cpg-content-and-related-derivatives), patient-level indicators of how care delivered compares with the guideline. Content conforming to this implementation guide SHALL use the [CPGComputableMetric](StructureDefinition-cpg-computablemetric.html) profile to represent metrics, and the [CPGMetricReport](StructureDefinition-cpg-metricreport.html) profile to record the result of evaluating a metric for a patient.

The type of a metric is identified by `Measure.type`, using the [CPG Measure Type](ValueSet-cpg-measure-type-vs.html) value set. In addition to the base measure types (such as process, outcome, and composite), this value set includes compliance and adherence. Their type descriptions also discuss goal and pathway scopes. The coded result sets currently defined by this guide cover two combinations of type and scope:

* A **compliance metric** (type _compliance_, a kind of process metric) scoped to a [recommendation](#recommendations) reports whether the care delivered conforms to it. Compliance metrics SHOULD report results using the [CPG Compliance Result](ValueSet-cpg-compliance-result-vs.html) value set.
* An **adherence metric** (type _adherence_, a kind of composite metric) scoped to a [strategy](#strategies) reports whether the strategy's requirements, taken together, are met. Adherence metrics SHOULD report results using the [CPG Adherence Result](ValueSet-cpg-adherence-result-vs.html) value set.

<div class="stu-note" markdown="1">

Result codes for metrics scoped to pathways and goals are not yet defined, and are expected in a future version of this implementation guide. This project is actively seeking feedback on the compliance and adherence result codes below.

</div>

<div class="new-content" markdown="1">

A metric is a patient-level indicator. It can express progress toward a goal or elapsed time from a proposal to documented care. Specify the facts it uses, the event that starts the interval, the scoring rule, and what a result means. Explain how unavailable or stale data affect the result. For example, a missing administration record may leave fulfillment unknown. Preserve the distinction between a recommendation that was inapplicable, a proposal that was declined, and care explicitly documented as not done.

</div>


##### Metric Results {#metric-results}

Both value sets draw their codes from the hierarchical [CPG Metric Result](CodeSystem-cpg-metric-result-cs.html) code system. For example, _compliant-with-prior-non-compliance_ is a kind of _compliant_. Use a terminology operation that supports hierarchy when querying for a parent and its descendants. The ballot defines the result codes and their meanings. The [CPGMetricReport](StructureDefinition-cpg-metricreport.html) profile does not specify an element or extension for those codes, so agree on the exchange representation before sharing coded results.

|Compliance result|Adherence result|Meaning|
|----|----|----|
|compliant|adherent|The expectation is met|
|compliant-with-prior-non-compliance|adherent-with-prior-non-adherence|The expectation is met, but a prior evaluation within the metric's lookback was not|
|&nbsp;|partially-adherent|Some, but not all, of the strategy's requirements are met|
|non-compliant|non-adherent|The expectation is not met|
|at-risk-for-non-compliance|at-risk-for-non-adherence|The expectation is not yet failed, but the metric predicts it will fail without intervention|
{:.grid}

Both value sets also include six shared operational states, which describe why no success or failure result is reported:

|Code|Meaning|
|----|----|
|pending|The expectation applies and its fulfillment window is still open|
|on-hold|The expectation is temporarily suspended under the metric's policy|
|exempted|The recommendation or strategy applies, but an exemption accepted by the metric's policy removes the expectation|
|not-applicable|The recommendation or strategy does not apply to the patient|
|not-yet-evaluated|The metric has not yet been evaluated for the patient|
|unknown|The metric was evaluated, but the result cannot be determined from the available data|
{:.grid}

See the code system for the full definition of each code. A metric reports one code per evaluation, chosen as follows:

1. When the metric's predictive criterion holds, report the _at-risk_ code instead of the met, pending, or "with prior" result.
2. When the expectation is met and the lookback shows a prior failure, report the "with prior" code instead of its parent.
3. Report a failure of the evaluation engine itself through `MeasureReport.status`, not with the _unknown_ code.

Several codes depend on the metric's policy. A metric that reports these codes SHOULD document, in its definition:

* **Lookback**: the period searched for prior failures, for the "with prior" codes
* **Predictive criterion and horizon**: the criterion that indicates a failure is likely, and the time within which it is expected, for the _at-risk_ codes
* **Exemptions**: the exemptions the metric accepts (for example, contraindication, clinical judgment, or patient refusal), for the _exempted_ code
* **Holds**: the evidence the metric accepts for a temporary suspension (for example, a [CPGHoldTask](StructureDefinition-cpg-holdtask.html) or a request with a status of on-hold), for the _on-hold_ code
* **Acceptance and intermediate-attainment criteria** (adherence metrics only): the criteria for _adherent_ and _partially-adherent_. By default, a strategy is adherent when every applicable, non-exempted component is met, partially adherent when at least one is met and at least one has failed, and non-adherent when every one has failed

</div>

<div class="new-content" markdown="1">

#### Case summaries and reports {#summaries-and-reports}

State whose care a summary view covers, which recommendation, strategy, or pathway defines its scope, and whether it describes the current state or a prior point in time. Show the source and time of important facts. Readers need to see which activities were proposed, authorized, or documented as performed, and where information is unavailable.

</div>


#### Hand off artifacts for validation {#artifact-handoff}

Take the authored definitions, profiles, terminology, libraries, and their dependency versions into Validate with the reviewed cases. Keep the source-to-artifact links and any unresolved decisions with the work so reviewers can trace a discrepancy to the relevant criterion, mapping, or activity. Use the [L3 checklist](clinical-guidelines-development-L3-checklist.html) to review the artifacts and documentation you hand off.

{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" previous="methodology-represent.html" previous_title="Represent" next="methodology-validate.html" next_title="Validate" %}
