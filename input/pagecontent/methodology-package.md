Package the reviewed content so another team can identify the release, obtain its dependencies, reproduce the tests, and understand the work needed for local implementation. Start with the findings from [Validate](methodology-validate.html). The content steward decides what is ready to publish and records the limitations that travel with the release.

**On this page:** [Assemble the release](#release-contents) · [Choose a distribution form](#distribution) · [Review the handoff](#handoff) · [Maintain the release](#maintenance).

### Assemble the release {#release-contents}

Keep the clinical specification and the formal artifacts connected. A receiving team needs to know which recommendation an artifact implements, which versions were reviewed together, and how to interpret its outputs.

| Include | What a receiving team needs |
| --- | --- |
| Source and interpretation | Source guideline and version, supporting citations and ratings, approved decision specification, and rationale for adaptations. |
| Artifact inventory | Entry points, canonical URLs and versions, status, and relationships among definitions, libraries, profiles, forms, and terminology. |
| Dependencies | The versions used for FHIR, applicable IGs, libraries, terminology, and execution tooling; identify dependencies supplied separately. |
| Review evidence | Clinical reviewers and decisions, test inputs and expected results, actual findings, and unresolved issues with owners. |
| Implementation notes | Required data, configuration choices, supported integration behavior, and limits on the reviewed scope. |
| Release ownership | Publisher, release date and version, change notes, contact, and responsibility for corrections and future review. |
{:.grid}

Use the [artifact identity and dependency guidance](approach-artifacts.html#artifact-identity) to keep versions and relationships explicit. A set of files with similar names is insufficient to establish that they were reviewed together.

### Choose a distribution form {#distribution}

A content IG provides a published narrative alongside downloadable FHIR artifacts. IGPublisher creates a FHIR package when it builds the guide. Artifact repositories can also distribute related knowledge resources in FHIR Bundles. Decide how consumers will obtain dependencies as part of that distribution; package boundaries can exclude resources that an implementation still needs. [CRMI packaging guidance](https://hl7.org/fhir/uv/crmi/STU2/en/packaging.html).

Where appropriate, a [CRMI Manifest Library](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-manifestlibrary.html) identifies a collection's components and manages dependency versions. It can also record terminology expansion and CQL translator settings. Select the CRMI version compatible with the content package and document that choice.

These distribution mechanisms carry the reviewed work. The receiving implementation still checks whether its data, terminology service, execution engine, and clinical workflow support that release. See [Downloads](downloads.html) for this guide's published artifacts and [Implementation and Integration](approach-implementation.html) for deployment choices.

### Review the handoff {#handoff}

Have someone other than the artifact author follow the release instructions: obtain the named version, resolve dependencies, run representative tests, and compare the results with the recorded expectations. Record any missing information and return it to the author or steward before describing the handoff as complete.

Separate the content team's release decision from the local team's decision to use it. The local clinical and technical owners review data mappings, user interaction, authorization, failure handling, and monitoring in their setting. Preserve these decisions with the implementation's configuration and test results.

### Maintain the release {#maintenance}

Give implementers a way to report discrepancies against a specific artifact version and test case. When the source recommendation, terminology, logic, or local assumptions change, identify the affected work products and repeat the relevant reviews. Publish the changes and remaining limitations so consumers can decide when and how to adopt the next release. [Development and Maintenance](approach-development.html) describes this continuing work.

{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" previous="methodology-validate.html" previous_title="Validate" %}
