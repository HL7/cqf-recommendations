Profiles express the structure and data expectations that make guideline content usable across systems. Start with [Profiling FHIR R4](https://hl7.org/fhir/R4/profiling.html), then select the profile for the artifact or patient-specific resource you are implementing.

| Category | What it constrains | Use it when |
| --- | --- | --- |
| Artifact | Reusable definitions and other knowledge resources | Authoring or consuming computable content |
| Domain | Case, plan, goal, summary, and related clinical concepts | Connecting content to patient-specific care |
| Activity | Definitions, requests, and events for individual activities | Tracing proposed and performed care to guidance |
| Content-specific | Data expected by a particular guideline | Mapping real data to the inputs its logic needs |
{:.grid}

For the complete listings, use the [profile index](artifacts.html#profile-index), [extension index](artifacts.html#extension-index), and [example profile index](examples.html#profile-index). A conceptual name in the narrative is not necessarily the name of a profile; the links here identify the formal definitions.

### Artifact profiles

This guide builds on the artifact capabilities described in [CRMI](https://hl7.org/fhir/uv/crmi/). Shareable, computable, publishable, and executable describe artifact capabilities; they are distinct from the L1–L4 knowledge levels.

{% include profile-tables/artifact-profiles.html %}

<div class="modified-content" markdown="1">

§§prof-1^^artifact:Knowledge artifacts of the listed types **SHOULD** conform to the CRMI Shareable profile, and **SHOULD** conform to the CRMI Publishable profile^In addition, content claiming conformance to this implementation guide SHOULD use the CRMI Shareable profile and SHOULD use the CRMI Publishable profile for the following artifact types:

* ActivityDefinition
* CapabilityStatement
* CodeSystem
* ConceptMap
* GraphDefinition
* ImplementationGuide
* Library
* Measure
* Medication
* MedicationKnowledge
* NamingSystem
* OperationDefinition
* PlanDefinition
* Questionnaire
* SearchParameter
* StructureDefinition
* StructureMap
* TerminologyCapabilities
* ValueSet

§§

</div>

This implementation guide does not take a dependency on CRMI, so these profiles are strongly recommended rather than required. See [Use of CRMI](documentation-conformance.html#use-of-crmi).
{:.new-content}

### Domain Profiles

{% include profile-tables/domain-profiles.html %}

Use these profiles to distinguish reusable definitions from patient-specific instances. For example, recommendation and strategy definitions use PlanDefinition; CPGStrategy uses RequestGroup, CPGCarePlan uses CarePlan, and CPGCase uses EpisodeOfCare. The [conceptual model](documentation-approach-12-conceptual-knowledge-architecture.html) explains the relationships; the [CHF example](examples-chf.html) shows their use together.

### Activity Profiles

Activities follow the FHIR **definition → request → event** pattern. The profiles establish traceability as well as resource structure.

| Phase | Elements to inspect | Meaning |
| --- | --- | --- |
| Definition | `kind`, `profile`, `intent` | What kind of request is produced, its target profile, and its intended role |
| Request | Definition link and identifier | Which content produced the proposed or authorized activity, and the identity of that request |
| Event | Definition/request links and identifier | What occurred and which request or guideline it relates to |
{:.grid}

The exact linking elements differ by resource. These profiles establish connections to guidance; the content of the clinical activity comes from the specific guideline and its definitions.

{% include profile-tables/activity-profiles.html %}

Continue to [Activity Flow](activityflow.html) for lifecycle behavior and [Activity Examples](examples-activities.html) for concrete resources.

### Content Profiles

A guideline usually needs both exchange conventions and explicit data requirements for its logic.

#### Interoperability Profiles

Interoperability profiles establish standards of data exchange between systems, and are typically defined in and distributed as part of _model_ implementation guides. To be useful, these profiles will generally be established across a broad range of systems, all operating in a particular environment, or in support of a particular set of use cases. Examples of these types of profiles are:

*   [**International Patient Summary**](http://hl7.org/fhir/uv/ips/): International, specialty-agnostic, condition-independent patient summary
*   [**AU Base**](https://hl7.org.au/fhir/): Base Australian national implementation guide
*   [**US Core Profiles**](http://hl7.org/fhir/us/core/): Base US national implementation guide
*   [**QI Core Profiles**](http://hl7.org/fhir/us/qicore/): US-based quality improvement profiles

Select versions of these profiles appropriate to the target environment.
{:.new-content}

#### Computability Profiles

Computability profiles describe the data that guideline logic needs. For example, logic selecting active outpatient MedicationRequests depends on the meaning and availability of `status` and `category`, as well as medication coding. A record that meets an exchange profile may still lack those data.

CQL data requirements can be exposed in `Library.dataRequirement`; the [Library $data-requirements operation](https://hl7.org/fhir/R4/library-operation-data-requirements.html) supports their extraction. Review the resulting requirements with the clinical interpretation and local mappings. Static requirements alone do not establish data completeness or semantic equivalence.

#### Implementation Considerations

§prof-2^^data:Content conforming to this IG **SHOULD** select a set of base interoperability profiles appropriate for the intended target.§ §prof-3?^^data:For international usage, implementation guides conforming to this IG **SHOULD** use [International Patient Summary](http://hl7.org/fhir/uv/ips).§

In general, implementation of any given computable content is based on the intersection of the interoperability and computability profiles. As such, content authors must take care not to define computability profiles that conflict with interoperability profiles in their intended target scope.

Clinical practice guidelines need to define the complete set of data elements required for the logic to function. This is the purpose of the computability profiles. Note that although selecting a base set of interoperability profiles (such as International Patient Summary) can provide a basis for sharing common data elements, experience has shown that even for relatively smaller CPGs, the set of computability profiles is never completely representable in any standard terminology or core data model. As such, mapping is required to support the use of a CPG in a given setting to demonstrate:

1. How the data elements map to existing data elements where there is complete semantic alignment, and
2. How the data elements are represented when there is incomplete semantic alignemnt.

In particular, IPS as a summary model is an incomplete target for the representation of data. It should be used as a basis for sharing data elements, but must be augmented by the specific data elements and mappings required to support computable representation of the logic of a clinical guideline.

As well, _how_ data is exchanged is an importantly different consideration than _what_ data is being exchanged, and the purpose of computability profiles in an IG is to specify _what_ data is to be exchanged, not _how_. In particular, although document sharing could be a solution for CPGs with very few and/or low volume data requirements, care should be taken to ensure that implementations are free to make appropriate decisions for their environments about how data exchange is occurring.

Use [Must Support](documentation-conformance.html#must-support) to interpret element support, [terminology](terminology.html) for coding and value-set requirements, and [validation](methodology-validate.html#validate-step) to test the actual mappings.
{:.new-content}
