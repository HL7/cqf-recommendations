Methodology describes how a team turns a selected recommendation into a reviewed, reusable FHIR R4 content package. Follow **Select → Represent → Translate → Validate → Package**, carrying the source, clinical interpretation, and example cases through each step. Clinical authors, knowledge engineers, terminologists, and local implementers resolve questions together; a test or implementation finding can reopen an earlier decision.

Use [Approach](approach.html) to understand the clinical model and artifact choices. Use the steps below to produce and review the work. The [representation levels](approach-artifacts.html#representation-levels) describe the resulting forms of knowledge, from narrative to local executable content.

### Where to start {#where-to-start}

Open a step below. For new content, start with **Select** and follow the sequence.

| Step | What this page helps you do |
| --- | --- |
| <a id="select"></a><a id="select-step"></a><a id="personas"></a><a id="activities"></a><a id="processes"></a><a id="settings"></a><a id="support"></a><a id="guideline-supporting-information"></a><a id="pertinent-information"></a>**[1. Select](methodology-select.html)** | Choose the recommendation, audience, care setting, and supporting evidence. |
| <a id="represent"></a><a id="represent-step"></a><a id="concepts"></a><a id="criteria"></a><a id="processes-1"></a><a id="delivery-of-contextualized-narrative"></a><a id="actionable-intervention"></a><a id="process-integration"></a>**[2. Represent](methodology-represent.html)** | Make the data, decision criteria, workflow, and example cases explicit for clinical review. |
| <a id="translate"></a><a id="translate-step"></a><a id="computable-clinical-practice-guideline"></a><a id="profiles"></a><a id="terminology"></a><a id="criteria-1"></a><a id="activities-1"></a><a id="activity-definitions"></a><a id="activity-requests-proposals"></a><a id="activity-events"></a><a id="recommendations"></a><a id="strategies"></a><a id="pathways"></a>**[3. Translate](methodology-translate.html)** | Author FHIR profiles, terminology, CQL, and activity and plan definitions. |
| <a id="validate"></a><a id="validate-step"></a><a id="conformance"></a><a id="checklists"></a><a id="expert-review"></a><a id="testing-scenarios"></a><a id="unit-testing"></a><a id="component-testing"></a><a id="integration-testing"></a>**[4. Validate](methodology-validate.html)** | Review clinical meaning and test conformance, logic, components, and local integration. |
| <a id="packaging"></a>**[5. Package](methodology-package.html)** | Prepare a versioned release with dependencies, tests, implementation notes, and maintenance ownership. |
{:.grid}

For local deployment of an existing package, see [Implementation and Integration](approach-implementation.html).

### Follow the methodology {#overview}

Carry the reviewed work forward, and return to an earlier step when a finding changes the scope, specification, or artifacts.

<div style="clear: both;">
  <img src="cpg-method-recipe.svg" alt="Select, Represent, Translate, Validate, and Package produce connected work products. Review findings can return work to an earlier step." class="img-responsive center-block" width="1000"/>
</div>

Keep decisions and their rationale with the work products. Record who resolves each open question and which artifact or interpretation changes as a result. Published implementation experience shows that shared artifacts can still require substantial local implementation and maintenance effort. [Dhopeshwarkar et al., 2023](https://doi.org/10.1055/s-0043-1769911).

### Understand the guide's dependencies {#implementation-guide-categories}

A computable guideline is delivered as a **content implementation guide**: clinical knowledge artifacts that use foundational standards, conform to specification guides, and select appropriate patient-data profiles. The content steward remains responsible for clinical scope, approval, publication, and maintenance.

<div style="clear: both;">
  <img src="cpg-method-ig-layers.svg" alt="Content implementation guides build on model and specification implementation guides, which use foundational standards. The layers describe dependencies and responsibilities." class="img-responsive center-block" width="1000"/>
</div>

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
- [Conformance](documentation-conformance.html) and the [development checklists](checklists.html) help reviewers locate the requirements relevant to their work.
- [Development and Maintenance](approach-development.html) explains the roles, handoffs, and continuing review behind these steps.

{% include chapter-navigation.html section="Methodology" unit="step" next="methodology-select.html" next_title="Select" %}
