This page was reorganized from the single Methodology page of the previous version of this guide, and its guidance was expanded (see the [change log](changes.html)).
{:.modified-content}

<a id="select"></a>

### Select Step {#select-step}

Start with the authoritative guideline and its version. Identify a specific recommendation, the clinical decision it informs, and where it could be used. The guideline group owns the interpretation and clinical scope. Representatives from the intended care setting assess whether the necessary data and workflow support are available. The content steward weighs the expected value, implementation effort, and maintenance burden before committing to the scope.

| Scope question | What to capture |
| --- | --- |
| [Who is involved?](#personas) | The patient population and the people who receive, review, or act on the recommendation. |
| [What is proposed?](#activities) | The clinical activity and any exceptions identified by the guideline group. |
| [When does it matter?](#processes) | The point in care when the decision arises and when it may need reevaluation. |
| [Where will it be used?](#settings) | The care setting and available data, actions, and system capabilities. |
| [What supports the recommendation?](#support) | The guideline citation, rationale and ratings, and the patient facts that can explain a proposed action. |
{:.grid}

{% capture survey_text %}
<dl>
  <dt>Who is involved?</dt>
  <dd>Patient admitted with CHF.<br />
    Common Personas · <a href="CodeSystem-cpg-common-persona-cs.html#cpg-common-persona-cs-2212"><code>2212</code></a> — Specialist medical practitioner</dd>
  <dt>What is proposed?</dt>
  <dd>Record the calculated change in body weight and report it.<br />
    Activity Type · <a href="CodeSystem-cpg-activity-type-cs.html#cpg-activity-type-cs-record-inference"><code>record-inference</code></a> — Record an inference<br />
    Activity Type · <a href="CodeSystem-cpg-activity-type-cs.html#cpg-activity-type-cs-generate-report"><code>generate-report</code></a> — Generate a metric or case report</dd>
  <dt>When does it matter?</dt>
  <dd>Evaluate daily during the admission and report after recording the change.<br />
    Common Processes · <a href="CodeSystem-cpg-common-process-cs.html#cpg-common-process-cs-diagnostic-testing"><code>diagnostic-testing</code></a> — Conduct Diagnostic Tests</dd>
  <dt>Where will it be used?</dt>
  <dd>Unit 3 East. Use recorded weights with units and timestamps.<br />
    HL7 v3 RoleCode · <a href="https://hl7.org/fhir/R4/v3/RoleCode/cs.html#v3-RoleCode-CVDX"><code>CVDX</code></a> — Cardiovascular diagnostics or therapeutics unit</dd>
  <dt>What supports the recommendation?</dt>
  <dd>The case records 96.9 kg and 95.7 kg on consecutive days. Guideline citation and evidence ratings are pending confirmation.</dd>
</dl>
{% endcapture %}
{% include cpg-diagram.html src="cpg-method-select-survey.svg" alt="Illustrative CHF scope survey with filled-in answers to five questions. The answers are available in the text version below." caption="Illustrative responses for a team selecting the [daily weight-change recommendation](PlanDefinition-chf-bodyweight-change-pd.html) from the [CHF example](examples-chf.html#example-case)." text_version=survey_text %}

There are numerous factors to consider in selecting which recommendations and activities to develop, including:

* **Value**: What is the potential value of implementation of the recommendation to patients, clinicians, and health systems and institutions?
* **Effort**: What is the level of effort involved in producing a computable representation of the recommendation? What is the upstream vs downstream effort? What are the maintenance considerations?
* **Feasibility**: What is the availability of the data required to successfully evaluate a computable representation of the recommendation?
* **Delivery mechanisms**: What are the technical capabilities required to support computable representation of the recommendation? And what are the expected technical capacities of potential target implementation environments?

These considerations will then inform the selection of recommendations and related activities for implementation along the continuum of [Levels of Enablement](documentation-approach-03-conformance-levels.html). Specifically highlighting the portion of that continuum from delivery of contextualized narrative (i.e. messages only) through actionable intervention (i.e. CDS Hooks requests):

* **Delivery of contextualized narrative**: System displays a guideline recommendation as a notification or alert.
* **Actionable intervention**: System provides computable representation of the recommended activity as a _request_ resource.
* **Process integration**: System provides implementation of a fully documented workflow along with its status, using a combination of _request_ and _event_ resources, typically coordinated as described in the FHIR [workflow](http://hl7.org/fhir/R4/workflow.html) topic using _task_ resources.

This step is typically performed by a cross-functional team consisting of at least:

* A _clinical_ subject matter expert, familiar with the guideline content and the domain
* A _health informaticist_, familiar with the target standards (i.e. FHIR, CQL, and CPG)
* A _terminologist_, to ensure appropriate granularity and selection of concepts

In addition, technical and informatics specialists from specific (or at least representative) target implementation sites can provide valuable feedback during this step to ensure implementation feasibility.

The outcome of this step is typically in the form of narrative (L1 content) requirements, sometimes accompanied by explanatory figures and diagrams (approaching L2).


#### Identify who receives and acts {#personas}

Describe what each person does before choosing role codes. Identify who sees the recommendation, who can act on it, and who follows up. Include patients and care partners when they receive information, provide it, or take part in the decision. The [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system uses ISCO codes where available, WHO-derived categories prefixed with `W`, and IG-introduced categories prefixed with `C`.

Content conforming to this implementation guide MAY identify personas using the [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system.

Personas are narrative descriptions of the actors and roles, or the _who_, referred to by the guideline. For example, nurse midwife, community healthworker, and pregnant mother are all examples of personas.

To provide a potential starting point for formally identifying personas, this implementation guide provides a [Common Personas](CodeSystem-cpg-common-persona-cs.html) CodeSystem based on the WHO recommendation for [Classifying health workers](documentation-approach-cds-implementation-evidence.html#ref-who-health-workers). This recommendation uses codes from the [International Standard Classification for Occupations](documentation-approach-cds-implementation-evidence.html#ref-ilo-isco) but defines several additional categories of workers. In addition, the codes in that recommendation are focused on health workers, so codes for patient and care partner personas need to be considered as well.

Where a code from the ISCO exists, it is used. Where a WHO recommended health worker category is used, a code is constructed beginning with a `W`. Where a code is introduced by this implementation guide, it is constructed beginning with a `C`.


#### Identify the proposed activity {#activities}

Describe the intended action and what would count as carrying it out. For example, ordering, dispensing, administering, and documenting medication are distinct activities. The [Activity Type](CodeSystem-cpg-activity-type-cs.html) code system also distinguishes messaging, information collection, immunization recommendations, service requests, enrollment, diagnosis proposals, detected issues, inferences, and flags. These distinctions help the artifact author choose the appropriate [definition, request, and event profiles](methodology-translate.html#activities-1).

Activities identified as part of the select step are the narrative description of _what_ needs to happen. This implementation guide defines the [Activity Type](CodeSystem-cpg-activity-type-cs.html) CodeSystem to support computable representation of clinical activities:

* **Send a message**: Communicating a particular message to a patient or other related participant
* **Collect information**: Collect information from a patient or other relevant participant using a questionnaire
* **Order medication**: Order a particular medication for a patient
* **Dispense medication**: Dispense a particular medication to a patient
* **Administer medication**: Administer a particular medication to a patient
* **Document medication**: Document a particular medication in use by a patient
* **Recommendation immunization**: Recommend a specific immunization for a patient
* **Order service**: Order a procedure or service for a patient
* **Enroll a patient**: Enroll a patient in a particular pathway or strategy
* **Generate report**: Generate a metric, measure, or case report
* **Propose diagnosis**: Propose a diagnosis about a patient
* **Record detected issue**: Record a detected issue about a patient
* **Record inference**: Record an inference about a patient
* **Report flag**: Report a flag on a patient


#### Locate the decision in care {#processes}

Use the [common care pathway](common-care-pathway.html) to identify where the recommendation fits. Then ask the local workflow and integration owners what can trigger evaluation, whether the necessary information is available at that point, and how the proposed action would be fulfilled. Record the clinical timing alongside the actual system event. Some clinical decision points have no corresponding CDS Hooks event in a given system.

Identify processes using the [Common Processes](CodeSystem-cpg-common-process-cs.html) code system as required by [path-2](documentation-approach-12-06-cpg-common-pathway.html).

#### Check what the setting supports {#settings}

Record where the activity takes place and which systems and people can support it. If a key fact or action is unavailable, document the limitation and take any change to the intended scope back to the guideline group and local owner.

Content conforming to this implementation guide MAY identify settings using the [HL7 V3 ServiceDeliveryLocationRoleType](https://hl7.org/fhir/R4/v3/ServiceDeliveryLocationRoleType/vs.html) value set.

Settings identified as part of the select step are the narrative description of _where_ something needs to happen.

For settings, this implementation guide uses the [HL7 V3 ServiceDeliveryLocationRoleType](http://hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html) value set, as it contains generally applicable, broadly standardized settings for use in the computable representation of guideline recommendations.


#### Record why the recommendation applies {#support}

Two aspects of supporting information are considered for recommendations. First, supporting documentation related to the guideline content itself, and second, pertinent positive or negative information related to determining the applicability of a recommendation to a particular patient.

Choose methods that fit the source and the question. Keep a record of each source, its version, how it contributed, and who approved the interpretation.


##### Guideline supporting information {#guideline-supporting-information}

Supporting documentation for a recommendation is critical to ensuring the definition can be traced back to reliable and credible sources. The [Supporting Documentation](http://hl7.org/fhir/R4/clinicalreasoning-topics-supporting-documentation.html) topic in the base FHIR specification describes the basic mechanism for achieving this with the Clinical Reasoning resources.

Clinical guideline content typically assigns ratings for aspects of guidance such as the quality of evidence, or the strength of the recommendation. However, due to the broad range of use cases and rating needs, different guidelines use different rating systems and grading characteristics to communicate this information. Following the base guidance provided as part of the FHIR Clinical Reasoning module, this implementation guide provides support for the following rating concepts:

* [**Quality of evidence**](http://hl7.org/fhir/extension-cqf-qualityofevidence.html): The quality of the evidence that supports a recommendation
* [**Strength of recommendation**](http://hl7.org/fhir/extension-cqf-strengthofrecommendation.html): The strength of the recommendation
* [**Direction of recommendation**](StructureDefinition-cpg-directionOfRecommendation.html): The direction (positive or negative) of the recommendation


Capture the source version, citation, and the rating system used by the guideline authors. Ask clinical and evidence reviewers to confirm which ratings belong to the selected recommendation. Record evidence certainty, recommendation strength, and recommendation direction separately.

Where the guideline singles out preferred options among alternatives, record that preference separately as well. It is represented with the [preference behavior](methodology-translate.html#preference-behavior) extension, not with the strength or direction of the recommendation.
{:.new-content}

§rec-1^^recommendation:Content conforming to this implementation guide **SHALL** provide references to supporting documentation for a recommendation in the form of a `relatedArtifact` element specifying a citation to the guideline.§

Due to the variability in rating systems among guideline content, this implementation is not prescriptive about what grading system should be used, and the example bindings from the base specification apply. However, §rec-2^^recommendation,documentation:content conforming to this implementation guide **SHALL** identify a rating system and use that to provide rating information for recommendations and guidance, and provide documentation on what rating system was selected and how it is communicated through the content.§

§rec-3^^recommendation:Content conforming to this implementation guide **SHALL** provide the strength of a recommendation using the [strengthOfRecommendation](http://hl7.org/fhir/R4/extension-cqf-strengthofrecommendation.html) extension.§

§rec-4^^recommendation:Content conforming to this implementation guide **SHALL** provide the quality of evidence for a recommendation using the [qualityOfEvidence](http://hl7.org/fhir/R4/extension-cqf-qualityofevidence.html) extension.§

Content conforming to this implementation guide MAY provide the directionality of a recommendation using the [directionOfRecommendation](StructureDefinition-cpg-directionOfRecommendation.html) extension.

[CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html) provides these rating extensions on `PlanDefinition.action`. See how the guideline group's judgments carry into the computable specification. [Evidence and recommendation reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html)

<blockquote>NOTE: The CPG-on-FHIR project is seeking feedback on whether this implementation guide should nominate a specific grading system and require conforming content to provide mappings when they use other grading systems.</blockquote>


<div class="new-content" markdown="1">

##### Trace evidence to the computable interpretation {#evidence-traceability}

Keep the evidence review, the recommendation decision, and the computable interpretation traceable to each other (see [Traceability from Evidence to Computable Interpretation](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html#traceability-from-evidence-to-computable-interpretation)). For each, record what the next reviewer needs:

| Record | What the next reviewer needs |
| --- | --- |
| Evidence and certainty | Relevant findings and limitations, citations, outcome-specific certainty, and the method used to judge it. |
| Recommendation and rationale | Direction, strength, applicability, and the tradeoffs or consensus judgments behind the decision. |
| Computable interpretation | Explicit criteria, timing, exceptions, proposed actions, data assumptions, and examples tied to the source. |
{:.grid}

</div>

##### Pertinent information {#pertinent-information}

Documenting pertinent information related to a recommendation is critical to helping the intended recipient determine why the recommendation applies in each particular case. For definitional content, pertinent information can typically be inferred from the content referenced by the logic involved. To support cases where pertinent information cannot be inferred from the content, as well as to allow content developers to highlight particular aspects, the `input` and `output` elements of the PlanDefinition can be used to identify pertinent information for the recommendation.


Identify the patient facts that explain why a recommendation applies or support the proposed action. In R4, `PlanDefinition.action.input` and `.output` describe relevant data requirements. Capture when a fact is needed and whether it is recorded or derived. In the next step, reviewers can use these facts to specify how the decision handles missing data, explicit negative findings, and derived results.

#### Hand off the selected scope {#selected-scope}

Take the source passage, selected decision, proposed activity, intended audience and setting, and delivery assumptions into Represent. Record any unresolved clinical or workflow question with the person responsible for deciding it. Use the [L1 checklist](clinical-guidelines-development-L1-checklist.html) to review the narrative guidance and supporting evidence before the handoff.

<div class="new-content" markdown="1">

If published guidance leaves room for interpretation, document what the source says, how reviewers interpret it, and what a site proposes to adapt. Use patient stories and representative local data to expose assumptions about timing, exceptions, or data availability. Assign a decision owner to each unresolved question.

</div>


{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" next="methodology-represent.html" next_title="Represent" %}
