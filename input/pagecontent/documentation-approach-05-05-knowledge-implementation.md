Implementation adapts a reviewed content package to a particular care setting. Start with its source/version, dependency and test record, supported integration choices, and known limits. End with a locally reviewed release, accountable operations, and an actionable feedback route.

### Local Content and Practice Governance

Identify who approves clinical content, data mappings, workflow, deployment, and subsequent changes. Include the people who will receive or act on recommendations and those responsible for follow-up. The local decision to use an artifact remains separate from its publisher's clinical/content approval.

<div style="clear: both;">
  <img src="cpg-method-governance.svg" alt="Local clinical, technical, and operational owners review readiness before authorized deployment and monitoring." class="img-responsive center-block" width="1000"/>
</div>

| Decision | Local evidence needed |
| --- | --- |
| Clinical use | Scope, population, source currency, exceptions, and approved local adaptations |
| Data and terminology | Available inputs, code mappings, units/time, provenance, missingness, and data-quality limits |
| Workflow and authorization | Intended recipient, timing, actions, acceptance/authorization boundary, follow-up and escalation |
| Technical release | Supported interfaces, dependency versions, integration tests, failure handling and rollback approach |
| Operation and change | Monitoring owner, issue intake, update review, dependent-content revalidation and retirement |
{:.grid}

<a id="local-informatics-knowledge-engineering-and-implementation"></a>

### Local Informatics and Implementation

Choose the [execution method](documentation-approach-09-methods-of-implementation.html) and [integration mechanism](documentation-approach-10-mechanisms-of-integration.html) that the local system supports. Confirm actual capabilities rather than assuming that general FHIR support includes every needed data element, trigger, or actionable response.

Shared standards-based content can still require substantial implementation effort and vendor coordination. CDS Connect's national evaluation documents these barriers and the need for trust and support. [Dhopeshwarkar et al., 2023](https://doi.org/10.1055/s-0043-1769911). The [SAFER CPOE/CDS guide](https://www.healthit.gov/sites/default/files/topiclanding/2025-01/3.%20CPOE%20Final.pdf) provides an operational self-assessment, not an IG conformance certificate.

### Concurrent Development and Implementation

Bring representative local questions to the authoring team early: unavailable data, ambiguous concepts, unsupported actions, and clinician workload. Co-development helps expose constraints while they can still be addressed. It does not establish that every site can deploy the same package without change.

### Analogs and Collaboration across CPG Development and Implementation

Keep the reusable definition and each site's adaptation traceable. A local mapping defect belongs to the integration owner; a flawed reusable expression belongs to the artifact steward; an unresolved clinical meaning returns to clinical reviewers. More than one owner may need to act on the same finding.

<a id="feedback--early-often-actionable"></a>

### Feedback: Early, Specific, and Actionable

Report the artifact/version, environment, relevant inputs, expected and actual behavior, clinical/workflow consequence, and responsible contact. Avoid unnecessary patient information in shared issue reports. Record whether the finding changes clinical intent, formal expression, terminology, data mapping, or workflow.

### Real-world Data to Develop CPGs

Representative data can reveal unavailable facts, encoding variation, and unintended populations. Observational patterns can generate research or revision questions; they do not by themselves prove a new recommendation's effectiveness. Patient-generated data also requires explicit responsibility for review, including between visits and after hours. [Sittig et al., 2024](https://doi.org/10.1093/jamia/ocae138).

Use the [L4 checklist](clinical-guidelines-development-L4-checklist.html), [validation tracks](documentation-approach-05-04-knowledge-execution-and-validation.html), and [CDS evidence hub](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html#cds-implementation-evidence) to document readiness and evaluate actual use and effects. Continue improvement through [reviewed increments](documentation-approach-05-06-agile-cpg-development-approach.html).
