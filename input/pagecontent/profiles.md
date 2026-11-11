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

Use these profiles to distinguish reusable definitions from patient-specific instances. For example, recommendation and strategy definitions use PlanDefinition; CPGStrategy uses RequestGroup, CPGCarePlan uses CarePlan, and CPGCase uses EpisodeOfCare. The [conceptual model](approach-model.html) explains the relationships; the [CHF example](examples-chf.html) shows their use together.

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

Interoperability profiles describe data exchanged within a realm or use case. Examples include [International Patient Summary](https://hl7.org/fhir/uv/ips/), [AU Base](https://hl7.org.au/fhir/), [US Core](https://hl7.org/fhir/us/core/), and [QI-Core](https://hl7.org/fhir/us/qicore/). Select versions appropriate to the target environment.

#### Computability Profiles

Computability profiles describe the data that guideline logic needs. For example, logic selecting active outpatient MedicationRequests depends on the meaning and availability of `status` and `category`, as well as medication coding. A record that meets an exchange profile may still lack those data.

CQL data requirements can be exposed in `Library.dataRequirement`; the [Library $data-requirements operation](https://hl7.org/fhir/R4/library-operation-data-requirements.html) supports their extraction. Review the resulting requirements with the clinical interpretation and local mappings. Static requirements alone do not establish data completeness or semantic equivalence.

#### Implementation Considerations

§prof-2^^data:Content conforming to this IG **SHOULD** select a set of base interoperability profiles appropriate for the intended target.§ §prof-3?^^data:For international usage, implementation guides conforming to this IG **SHOULD** use [International Patient Summary](http://hl7.org/fhir/uv/ips).§

Implementation depends on the intersection of exchange and computability requirements. Avoid defining constraints that conflict with the intended exchange profiles. Document both complete semantic mappings and gaps requiring additional data, a qualified mapping, or clinical review.

IPS is a summary model; content-specific data requirements may extend beyond it. Identify all inputs the guideline needs rather than assuming that selecting a core data guide makes every expression executable. The transport mechanism is a further decision: specifying what data is needed does not prescribe how it must be retrieved.

Use [Must Support](documentation-conformance.html#must-support) to interpret element support, [terminology](terminology.html) for coding and value-set requirements, and [validation](methodology-validate.html#validate-step) to test the actual mappings.
