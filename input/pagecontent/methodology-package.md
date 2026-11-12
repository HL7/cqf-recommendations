This page was reorganized from the single Methodology page of the previous version of this guide, and its guidance was expanded (see the [change log](changes.html)).
{:.modified-content}

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

Use the [artifact identity and dependency guidance](documentation-approach-06-02-knowledge-assets.html) to keep versions and relationships explicit. A set of files with similar names is insufficient to establish that they were reviewed together.

### Choose a distribution form {#distribution}

Because the artifacts defined in this implementation guide are _canonical resources_, they follow the artifact lifecycle established in the Canonical Resource Management Infrastructure implementation guide. Packaging artifacts is accomplished directly as part of publishing the content as a Content Implementation Guide, or can be published through an Artifact Repository and packaged for use using the CRMIManifestLibrary profile. See the [Packaging](http://hl7.org/fhir/uv/crmi/packaging.html) discussion in the CRMI IG for more information.


A content IG provides a published narrative alongside downloadable FHIR artifacts. IGPublisher creates a FHIR package when it builds the guide. Artifact repositories can also distribute related knowledge resources in FHIR Bundles. Decide how consumers will obtain dependencies as part of that distribution; package boundaries can exclude resources that an implementation still needs. [CRMI packaging guidance](https://hl7.org/fhir/uv/crmi/STU2/en/packaging.html).

Where appropriate, a [CRMI Manifest Library](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-manifestlibrary.html) identifies a collection's components and manages dependency versions. It can also record terminology expansion and CQL translator settings. Select the CRMI version compatible with the content package and document that choice.

These distribution mechanisms carry the reviewed work. The receiving implementation still checks whether its data, terminology service, execution engine, and clinical workflow support that release. See [Downloads](downloads.html) for this guide's published artifacts and [Implementation and Integration](documentation-approach-02-05-knowledge-implementation.html) for deployment choices.

### Review the handoff {#handoff}

Have someone other than the artifact author follow the release instructions: obtain the named version, resolve dependencies, run representative tests, and compare the results with the recorded expectations. Record any missing information and return it to the author or steward before describing the handoff as complete.

Separate the content team's release decision from the local team's decision to use it. The local clinical and technical owners review data mappings, user interaction, authorization, failure handling, and monitoring in their setting. Preserve these decisions with the implementation's configuration and test results.

<div class="new-content" markdown="1">

Record who approved any local change to a threshold, goal, included recommendation, or point of delivery. Keep its rationale and resulting behavior traceable to the reusable definition and validate the change with local cases. Confirm that the intended person sees relevant guidance at a useful time, can act on it, and can handle exceptions. Assign owners for content, terminology, data interfaces, service monitoring, and rollback.

</div>


### Maintain the release {#maintenance}

Give implementers a way to report discrepancies against a specific artifact version and test case. When the source recommendation, terminology, logic, or local assumptions change, identify the affected work products and repeat the relevant reviews. Publish the changes and remaining limitations so consumers can decide when and how to adopt the next release. [Development and Maintenance](documentation-approach-05-knowledge-engineering-overview.html) describes this continuing work.

<div class="new-content" markdown="1">

Name the steward for updates and retirement. Identify which artifacts and tests depend on shared libraries, value sets, or source decisions so a change triggers the right review. The local care organization separately approves use in its setting and owns its mappings, workflow, operational support, and release decisions.

A useful report from use after release names the content version and local environment, relevant inputs, expected and actual behavior, and clinical or workflow consequence. Limit shared reports to the patient information needed and authorized for the purpose. Route local mapping and workflow defects to the implementation owner, reusable logic or terminology defects to the artifact steward, and unresolved recommendation meaning to clinical reviewers. Link the resulting decision to affected artifacts and expected cases. See [Feedback](documentation-approach-05-05-knowledge-implementation.html) and the [CDS Connect evaluation](https://doi.org/10.1055/s-0043-1769911).

</div>


{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" previous="methodology-validate.html" previous_title="Validate" %}
