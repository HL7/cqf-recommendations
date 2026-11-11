<a id="translate"></a>

### Translate Step {#translate-step}

Use the reviewed specification from the [Represent step](methodology-represent.html#represent-step) to author the FHIR R4 content and its computable logic. The knowledge engineer carries each criterion, input, and proposed response into the artifacts. The terminology owner reviews the coded meaning, and the clinical reviewer decides questions about interpretation that surface during authoring. The [Content IG Walkthrough](https://github.com/cqframework/content-ig-walkthrough) illustrates tooling for authoring a package. Check its compatibility with the project's selected versions.

#### Trace guidance to computable artifacts {#artifact-mapping}

Record which guideline passages and journal articles (L1) inform the reviewed data, criteria, and activities from Represent (L2), and which FHIR and CQL artifacts (L3) implement them. These relationships can be one-to-one or many-to-many.

Start with [content identity and dependencies](#computable-clinical-practice-guideline), then define the [data profiles](#profiles), [terminology](#terminology), and [logic](#criteria-1). Describe the [activities](#activities-1) and assemble them into [recommendations](#recommendations), [strategies](#strategies), and [pathways](#pathways). Define any [patient-level metrics](#metrics) needed to evaluate progress.

#### Establish content identity and dependencies {#computable-clinical-practice-guideline}

The content steward establishes the repository, canonical base URL, intended realm, publication route, and dependency versions. Use a canonical base controlled by the steward so the identities used in definitions and dependencies can persist across releases. [Sample Content IG](https://github.com/cqframework/sample-content-ig) · [FHIR Community Process](http://fhir.org/community/process/)

#### Choose profiles for the clinical data {#profiles}

Map each data dictionary entry to the FHIR data the logic will read. Two observations distinguished only by code may share an interoperability profile. Use a separate profile when a distinct set of constraints needs to be validated. A CPGCaseFeatureDefinition describes a reusable feature. A corresponding patient observation can carry the patient-specific value and timing. Preserve the provenance of each result and distinguish asserted facts from calculated inferences when persisting them. [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html)

§data-1^^data:Content conforming to this implementation guide **SHOULD** use the [CPG Event Activity Profiles](profiles.html#activity-profiles) as the basis for case feature definitions.§

In addition, content implementation guides will typically select a target realm for deployment, and select [interoperability profiles](profiles.html#implementation-considerations) appropriate for that realm (statement prof-2).

#### Identify the terminology dependencies {#terminology}

Identify or author the code systems, value sets, and mappings needed by each decision. Carry over the mapping qualifications agreed during representation and record versions and responsibility for maintaining expansions. Take meaning that cannot be expressed with the selected codes back to the clinical and terminology reviewers. [Terminology requirements and maintenance guidance](terminology.html#developing-and-maintaining-terminology)

#### Author the decision logic {#criteria-1}

Express the reviewed criteria and calculations in a supported logic language. If you use CQL, follow the conformance requirements for CQL content. Publish the logic through Library resources with its dependencies and data requirements. Connect the expressions to the source criteria and expected cases so reviewers can test how the logic handles timing, missing information, and exceptions. [Libraries](libraries.html) · [Using CQL With FHIR](https://hl7.org/fhir/uv/cql/)

IG Publisher can attach the authored CQL to its Library resources through the [binary adjunct loader](https://build.fhir.org/ig/FHIR/ig-guidance/branches/languages/binaries.html#binary-adjunct-files) and [generate ELM](https://build.fhir.org/ig/FHIR/ig-guidance/branches/languages/binaries.html#cql-processing). Check the resulting Library attachments, dependencies, and data requirements before packaging.

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

§act-1^^activity:Content conforming to this implementation guide **SHALL** use one of the recommendation instance profiles described above to ensure supporting information related to the recommendation is preserved through the recommendation instance.§

Specific guideline content MAY define derived profiles for recommendation instances establishing additional constraints.

##### Activity events {#activity-events}

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

#### Group recommendations into strategies {#strategies}

Use a strategy definition to group related recommendation definitions for a clinical issue. The reusable strategy definition is a PlanDefinition. A patient-specific strategy can be represented as a [CPGStrategy](StructureDefinition-cpg-strategy.html) RequestGroup.

§rec-6^^recommendation:Content conforming to this implementation guide **SHALL** use the [cpg-strategydefinition](StructureDefinition-cpg-strategydefinition.html) profile to represent strategy definitions.§

#### Organize strategies into pathways {#pathways}

Use a pathway definition to organize strategies and describe the scope of the guideline. Specify clinical eligibility separately from local enrollment or activation. Decisions can be reevaluated as information changes. If a pathway calls for a fixed sequence, have clinical reviewers confirm the rationale and local implementers confirm that the workflow can support it. [CPG plans](approach-model.html#plan)

§rec-7^^recommendation:Content conforming to this implementation guide **SHALL** use the [cpg-pathwaydefinition](StructureDefinition-cpg-pathwaydefinition.html) profile to represent pathway definitions.§

<div class="new-content" markdown="1">

#### Metrics {#metrics}

This implementation guide uses the Measure resource to represent [metrics](approach-evaluation.html#metrics), patient-level indicators of how care delivered compares with the guideline. Content conforming to this implementation guide SHALL use the [CPGComputableMetric](StructureDefinition-cpg-computablemetric.html) profile to represent metrics, and the [CPGMetricReport](StructureDefinition-cpg-metricreport.html) profile to record the result of evaluating a metric for a patient.

The type of a metric is identified by `Measure.type`, using the [CPG Measure Type](ValueSet-cpg-measure-type-vs.html) value set. In addition to the base measure types (such as process, outcome, and composite), this value set includes compliance and adherence. Their type descriptions also discuss goal and pathway scopes. The coded result sets currently defined by this guide cover two combinations of type and scope:

* A **compliance metric** (type _compliance_, a kind of process metric) scoped to a [recommendation](#recommendations) reports whether the care delivered conforms to it. Compliance metrics SHOULD report results using the [CPG Compliance Result](ValueSet-cpg-compliance-result-vs.html) value set.
* An **adherence metric** (type _adherence_, a kind of composite metric) scoped to a [strategy](#strategies) reports whether the strategy's requirements, taken together, are met. Adherence metrics SHOULD report results using the [CPG Adherence Result](ValueSet-cpg-adherence-result-vs.html) value set.

<div class="stu-note" markdown="1">

Result codes for metrics scoped to pathways and goals are not yet defined, and are expected in a future version of this implementation guide. This project is actively seeking feedback on the compliance and adherence result codes below.

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

#### Hand off artifacts for validation {#artifact-handoff}

Take the authored definitions, profiles, terminology, libraries, and their dependency versions into Validate with the reviewed cases. Keep the source-to-artifact links and any unresolved decisions with the work so reviewers can trace a discrepancy to the relevant criterion, mapping, or activity. Use the [L3 checklist](clinical-guidelines-development-L3-checklist.html) to review the artifacts and documentation you hand off.

{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" previous="methodology-represent.html" previous_title="Represent" next="methodology-validate.html" next_title="Validate" %}
