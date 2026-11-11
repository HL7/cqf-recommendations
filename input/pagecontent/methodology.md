{% include cpg-horizontal-table-style.html %}

Methodology describes how a team turns a selected recommendation into a reviewed, reusable FHIR R4 content package. Follow **Select → Represent → Translate → Validate → Package**, carrying the source, clinical interpretation, and example cases through each step. Clinical authors, knowledge engineers, terminologists, and local implementers resolve questions together; a test or implementation finding can reopen an earlier decision.

Use [Approach](approach.html) to understand the clinical model and artifact choices. Use the steps below to produce and review the work. The [representation levels](approach-artifacts.html#representation-levels) describe the resulting forms of knowledge, from narrative to local executable content.

### Where to start {#where-to-start}

Open a step below. For new content, start with **Select** and follow the sequence.

| Step | What this page helps you do |
| --- | --- |
| <a id="select" data-redirect="methodology-select.html#select"></a><a id="rec-1" data-redirect="methodology-select.html#rec-1"></a><a id="ci-c-rec-1" data-redirect="methodology-select.html#rec-1"></a><a id="rec-2" data-redirect="methodology-select.html#rec-2"></a><a id="ci-c-rec-2" data-redirect="methodology-select.html#rec-2"></a><a id="rec-3" data-redirect="methodology-select.html#rec-3"></a><a id="ci-c-rec-3" data-redirect="methodology-select.html#rec-3"></a><a id="rec-4" data-redirect="methodology-select.html#rec-4"></a><a id="ci-c-rec-4" data-redirect="methodology-select.html#rec-4"></a><a id="select-step" data-redirect="methodology-select.html#select-step"></a><a id="personas" data-redirect="methodology-select.html#personas"></a><a id="activities" data-redirect="methodology-select.html#activities"></a><a id="processes" data-redirect="methodology-select.html#processes"></a><a id="settings" data-redirect="methodology-select.html#settings"></a><a id="support" data-redirect="methodology-select.html#support"></a><a id="guideline-supporting-information" data-redirect="methodology-select.html#guideline-supporting-information"></a><a id="pertinent-information" data-redirect="methodology-select.html#pertinent-information"></a>**[1. Select](methodology-select.html)** | Choose the recommendation, audience, care setting, and supporting evidence. |
| <a id="represent" data-redirect="methodology-represent.html#represent"></a><a id="represent-step" data-redirect="methodology-represent.html#represent-step"></a><a id="concepts" data-redirect="methodology-represent.html#concepts"></a><a id="criteria" data-redirect="methodology-represent.html#criteria"></a><a id="processes-1" data-redirect="methodology-represent.html#processes-1"></a><a id="delivery-of-contextualized-narrative" data-redirect="methodology-represent.html#delivery-of-contextualized-narrative"></a><a id="actionable-intervention" data-redirect="methodology-represent.html#actionable-intervention"></a><a id="process-integration" data-redirect="methodology-represent.html#process-integration"></a>**[2. Represent](methodology-represent.html)** | Make the data, decision criteria, workflow, and example cases explicit for clinical review. |
| <a id="translate" data-redirect="methodology-translate.html#translate"></a><a id="data-1" data-redirect="methodology-translate.html#data-1"></a><a id="ci-c-data-1" data-redirect="methodology-translate.html#data-1"></a><a id="act-1" data-redirect="methodology-translate.html#act-1"></a><a id="ci-c-act-1" data-redirect="methodology-translate.html#act-1"></a><a id="act-2" data-redirect="methodology-translate.html#act-2"></a><a id="ci-c-act-2" data-redirect="methodology-translate.html#act-2"></a><a id="rec-5" data-redirect="methodology-translate.html#rec-5"></a><a id="ci-c-rec-5" data-redirect="methodology-translate.html#rec-5"></a><a id="rec-6" data-redirect="methodology-translate.html#rec-6"></a><a id="ci-c-rec-6" data-redirect="methodology-translate.html#rec-6"></a><a id="rec-7" data-redirect="methodology-translate.html#rec-7"></a><a id="ci-c-rec-7" data-redirect="methodology-translate.html#rec-7"></a><a id="translate-step" data-redirect="methodology-translate.html#translate-step"></a><a id="computable-clinical-practice-guideline" data-redirect="methodology-translate.html#computable-clinical-practice-guideline"></a><a id="profiles" data-redirect="methodology-translate.html#profiles"></a><a id="terminology" data-redirect="methodology-translate.html#terminology"></a><a id="criteria-1" data-redirect="methodology-translate.html#criteria-1"></a><a id="activities-1" data-redirect="methodology-translate.html#activities-1"></a><a id="activity-definitions" data-redirect="methodology-translate.html#activity-definitions"></a><a id="activity-requests-proposals" data-redirect="methodology-translate.html#activity-requests-proposals"></a><a id="activity-events" data-redirect="methodology-translate.html#activity-events"></a><a id="recommendations" data-redirect="methodology-translate.html#recommendations"></a><a id="strategies" data-redirect="methodology-translate.html#strategies"></a><a id="pathways" data-redirect="methodology-translate.html#pathways"></a>**[3. Translate](methodology-translate.html)** | Author FHIR profiles, terminology, CQL, and activity and plan definitions. |
| <a id="validate" data-redirect="methodology-validate.html#validate"></a><a id="validate-step" data-redirect="methodology-validate.html#validate-step"></a><a id="conformance" data-redirect="methodology-validate.html#conformance"></a><a id="checklists" data-redirect="methodology-validate.html#checklists"></a><a id="expert-review" data-redirect="methodology-validate.html#expert-review"></a><a id="testing-scenarios" data-redirect="methodology-validate.html#testing-scenarios"></a><a id="unit-testing" data-redirect="methodology-validate.html#unit-testing"></a><a id="component-testing" data-redirect="methodology-validate.html#component-testing"></a><a id="integration-testing" data-redirect="methodology-validate.html#integration-testing"></a>**[4. Validate](methodology-validate.html)** | Review clinical meaning and test conformance, logic, components, and local integration. |
| <a id="packaging" data-redirect="methodology-package.html"></a>**[5. Package](methodology-package.html)** | Prepare a versioned release with dependencies, tests, implementation notes, and maintenance ownership. |
{:.cpg-horizontal-table}

For local deployment of an existing package, see [Implementation and Integration](approach-implementation.html).

### Follow the methodology {#overview}

Carry the reviewed work forward, and return to an earlier step when a finding changes the scope, specification, or artifacts.

<div style="clear: both;">
  <img src="cpg-method-recipe.svg" alt="Select, Represent, Translate, Validate, and Package produce connected work products. Review findings can return work to an earlier step." class="img-responsive center-block" width="1000"/>
</div>

Keep decisions and their rationale with the work products. Record who resolves each open question and which artifact or interpretation changes as a result. Published implementation experience shows that shared artifacts can still require substantial local implementation and maintenance effort. [Dhopeshwarkar et al., 2023](https://doi.org/10.1055/s-0043-1769911).

### Understand the guide's dependencies {#implementation-guide-categories}

A computable guideline is delivered as a **content implementation guide**: clinical knowledge artifacts that use foundational standards, conform to specification guides, and select appropriate patient-data profiles. The content steward remains responsible for clinical scope, approval, publication, and maintenance.

{% include cpg-linked-diagram.html src="cpg-method-ig-layers.svg" ratio="1200 / 660" alt="Content implementation guides build on model and specification implementation guides, which use foundational standards. The layers describe dependencies and responsibilities." %}

| Category | Purpose | Examples |
| --- | --- | --- |
| <a id="foundational-standards"></a>Foundational standards | Define resources, expressions, and interfaces. | [FHIR R4](https://hl7.org/fhir/R4/), [FHIRPath](http://hl7.org/fhirpath), [CQL](http://cql.hl7.org), [CDS Hooks](http://cds-hooks.hl7.org), [SMART App Launch](http://hl7.org/fhir/smart-app-launch/) |
| <a id="model-implementation-guides"></a>Model implementation guides | Constrain exchanged patient data for a realm or purpose. | [IPS](http://hl7.org/fhir/uv/ips), [US Core](http://hl7.org/fhir/us/core), [QI-Core](http://hl7.org/fhir/us/qicore) |
| <a id="specification-implementation-guides"></a>Specification implementation guides | Define how to represent, manage, or process knowledge. | This CPG IG, [CRMI](http://hl7.org/fhir/uv/crmi), [Using CQL With FHIR](http://hl7.org/fhir/uv/cql), [Quality Measures](http://hl7.org/fhir/us/cqfmeasures), [SDC](http://hl7.org/fhir/uv/sdc) |
| <a id="content-implementation-guides"></a>Content implementation guides | Publish a governed body of clinical knowledge. | [Sample Content IG](https://github.com/cqframework/sample-content-ig), [Opioid Prescribing](https://www.fhir.org/guides/cdc/opioid-cds/), [WHO Antenatal Care resources](https://smart.who.int/) |
{:.grid}

Choose and record the dependency versions for the content package. The categories describe responsibilities rather than a build sequence. The WHO link is its official publication catalogue; its antenatal-care FHIR guide is a working draft, not an added dependency of this IG.

### Examples and detailed references {#references}

- The [historical COVID-19 worked example](methodology-case-study.html) follows clinical and knowledge-engineering work products through the team's 2020 project.
- <a id="mapping-and-other-formalisms"></a>[Mapping and other formalisms](documentation-methodology.html) explains optional BPMN, DMN, and CMMN representations, with transformation examples and their limits.
- <a id="metrics" data-redirect="methodology-translate.html#metrics"></a>[Metrics](methodology-translate.html#metrics) and <a id="metric-results" data-redirect="methodology-translate.html#metric-results"></a>[Metric Results](methodology-translate.html#metric-results) explain the patient-level profiles, types, and coded results.
- [Conformance](documentation-conformance.html) and the [development checklists](checklists.html) help reviewers locate the requirements relevant to their work.
- [Development and Maintenance](approach-development.html) explains the roles, handoffs, and continuing review behind these steps.

{% include chapter-navigation.html section="Methodology" unit="step" next="methodology-select.html" next_title="Select" %}

<script src="approach-redirect.js"> </script>
