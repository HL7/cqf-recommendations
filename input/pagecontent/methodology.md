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
  <img src="cpg-method-recipe.svg" alt="Select a scope, represent decisions, translate them into artifacts, validate, and package the reviewed work. A return arrow shows how validation can reopen earlier decisions." class="img-responsive center-block" width="1000"/>
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

Choose the recommendation, audience, setting, and delivery context. The child page retains the selection questions and supporting-information requirements.

[Open the select step](methodology-select.html#select-step).

<a id="personas"></a>
[Continue to select details](methodology-select.html#personas).

<a id="activities"></a>
[Continue to select details](methodology-select.html#activities).

<a id="processes"></a>
[Continue to select details](methodology-select.html#processes).

<a id="settings"></a>
[Continue to select details](methodology-select.html#settings).

<a id="support"></a>
[Continue to select details](methodology-select.html#support).

<a id="guideline-supporting-information"></a>
[Continue to select details](methodology-select.html#guideline-supporting-information).

<a id="pertinent-information"></a>
[Continue to select details](methodology-select.html#pertinent-information).

<a id="represent"></a>

### Represent Step {#represent-step}

Turn selected recommendations into inspectable concepts, criteria, and process descriptions before formal authoring.

[Open the represent step](methodology-represent.html#represent-step).

<a id="concepts"></a>
[Continue to represent details](methodology-represent.html#concepts).

<a id="criteria"></a>
[Continue to represent details](methodology-represent.html#criteria).

<a id="processes-1"></a>
[Continue to represent details](methodology-represent.html#processes-1).

<a id="delivery-of-contextualized-narrative"></a>
[Continue to represent details](methodology-represent.html#delivery-of-contextualized-narrative).

<a id="actionable-intervention"></a>
[Continue to represent details](methodology-represent.html#actionable-intervention).

<a id="process-integration"></a>
[Continue to represent details](methodology-represent.html#process-integration).

<a id="translate"></a>

### Translate Step {#translate-step}

Author the FHIR, terminology, CQL, activity, recommendation, strategy, and pathway artifacts from reviewed content.

[Open the translate step](methodology-translate.html#translate-step).

<a id="computable-clinical-practice-guideline"></a>
[Continue to translate details](methodology-translate.html#computable-clinical-practice-guideline).

<a id="profiles"></a>
[Continue to translate details](methodology-translate.html#profiles).

<a id="terminology"></a>
[Continue to translate details](methodology-translate.html#terminology).

<a id="criteria-1"></a>
[Continue to translate details](methodology-translate.html#criteria-1).

<a id="activities-1"></a>
[Continue to translate details](methodology-translate.html#activities-1).

<a id="activity-definitions"></a>
[Continue to translate details](methodology-translate.html#activity-definitions).

<a id="activity-requests-proposals"></a>
[Continue to translate details](methodology-translate.html#activity-requests-proposals).

<a id="activity-events"></a>
[Continue to translate details](methodology-translate.html#activity-events).

<a id="recommendations"></a>
[Continue to translate details](methodology-translate.html#recommendations).

<a id="strategies"></a>
[Continue to translate details](methodology-translate.html#strategies).

<a id="pathways"></a>
[Continue to translate details](methodology-translate.html#pathways).

<a id="validate"></a>

### Validate Step {#validate-step}

Review clinical fidelity, conformance, test scenarios, component behavior, and integration behavior as separate findings.

[Open the validate step](methodology-validate.html#validate-step).

<a id="conformance"></a>
[Continue to validate details](methodology-validate.html#conformance).

<a id="checklists"></a>
[Continue to validate details](methodology-validate.html#checklists).

<a id="expert-review"></a>
[Continue to validate details](methodology-validate.html#expert-review).

<a id="testing-scenarios"></a>
[Continue to validate details](methodology-validate.html#testing-scenarios).

<a id="unit-testing"></a>
[Continue to validate details](methodology-validate.html#unit-testing).

<a id="component-testing"></a>
[Continue to validate details](methodology-validate.html#component-testing).

<a id="integration-testing"></a>
[Continue to validate details](methodology-validate.html#integration-testing).

### Packaging

Publish approved artifacts with dependencies, source citations, test cases, review findings, configuration decisions, and maintenance responsibility. Canonical resources follow the CRMI lifecycle; distribution may use a content IG or artifact repository and a CRMIManifestLibrary. See [CRMI Packaging](http://hl7.org/fhir/uv/crmi/packaging.html), [knowledge assets](documentation-approach-06-02-knowledge-assets.html), and [Downloads](downloads.html).

### Mapping and Other Formalisms

[BPM+ mappings](documentation-methodology.html) describe optional approaches using BPMN, DMN, and CMMN. A transformation needs semantic review and comparative testing; it is not a guarantee that all constructs translate equivalently.
