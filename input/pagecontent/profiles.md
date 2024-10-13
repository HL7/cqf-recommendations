FHIR profiles are a key aspect of supporting interoperable computable content, providing a formal mechanism for defining the data elements used by computable content, as well as conformance expectations for the computable content itself. Readers of this implementation guide should be familiar with the [Profiling FHIR](http://hl7.org/fhir/R4/profiling.html) topic in the base specification.

This page provides overview documentation for the following categories of profiles and documentation:

*   **Artifact Profiles**: Profiles for computable knowledge artifacts
*   **Domain Profiles**: Domain profiles such as Case/Plan and Metric
*   **Activity Profiles**: Activity profiles such as MedicationRequest
*   **Content Profiles**: Documentation on using profiles with CPG content

For indexes of profiles and extensions defined in this implementation guide, see the following:

*   **[Profile Index](artifacts.html#profile-index)**: Alphabetical profile listing
*   **[Extension Index](artifacts.html#extension-index)**: Alphabetical extension listing
*   **[Example Profile Index](examples.html#profile-index)**: Alphabetical listing of profiles used in examples

### Artifact profiles

For definitional artifacts, this implementation guide builds on the capability profiles defined in the Canonical Resource Management Infrastructure (CRMI) Implementation Guide, defining profiles for computable knowledge artifacts used in the representation of clinical guidelines. For background on the CRMI capability profiles, see the [Profiles](http://build.fhir.org/ig/HL7/crmi-ig/profiles.html) discussion in the CRMI IG.

{% include profile-tables/artifact-profiles.html %}

In addition, content claiming conformance to this implementation guide SHALL use the Shareable profile and SHOULD use the Publishable profile for the following artifact types:

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

### Domain Profiles

{% include profile-tables/domain-profiles.html %}

Examples of the use of these profiles are available in the Examples page. In particular, see the [Congestive Heart Failure Pathway](examples-chf.html) example.

### Activity Profiles

To represent the activities in a computable guideline, this implementation guide follows the workflow patterns established by the base FHIR specification, _definition_, _request_, and _event_. For each type of activity, these profiles establish at least:

*   Definitional activity profiles
    *   kind - The type of request resource being defined
    *   profile - The minimum profile that must be met by request resources produced by the activity definition
    *   intent - The target intent, typically proposal, of the request resources
*   Request activity profiles
    *   source reference - Typically the instantiatesCanonical element to refer back to the guideline content
    *   identity - Typically via an identifier element to establish identity of the activity
*   Event activity profiles
    *   source reference - Typically the instantiatesCanonical element to refer back to the guideline content
    *   request reference - Typically the basedOn element to refer back to the request which the event is fulfilling
    *   identity - Typically via an identifier element to establish identity of the activity

Note that the intent of these profiles is not to establish the content of the activity, only to ensure that requests and events related to guideline-based care can be traced back to the recommendation, strategy, pathway, and ultimately guideline they are representing.

{% include profile-tables/activity-profiles.html %}

See the [Activity Examples](examples-activities.html) for a complete example of each of the above activity types.

### Content Profiles

In addition to the profiles defined by this implementation guide, computable content generally deals with two broad categories of profiles:

*   **Interoperability Profiles** that establish standards of data exchange between systems
*   **Computability Profiles** that define the data expectations for computable content

#### Interoperability Profiles

Interoperability profiles establish standards of data exchange between systems, and are typically defined in and distributed as part of _model_ implementation guides. To be useful, these profiles will generally be established across a broad range of systems, all operating in a particular environment, or in support of a particular set of use cases. Examples of these types of profiles are:

*   [**International Patient Summary**](http://hl7.org/fhir/uv/ips/): International, specialty-agnostic, condition-independent patient summary
*   [**AU Base**](http://fhir.hl7.org.au/fhir/base/history.shtml): Base Australian national implementation guide
*   [**US Core Profiles**](http://hl7.org/fhir/us/core/): Base US national implementation guide
*   [**QI Core Profiles**](http://hl7.org/fhir/us/qicore/): US-based quality improvement profiles

#### Computability Profiles

Computability profiles describe the data expectations for computable content, and are typically defined in and distributed as part of _content_ implementation guides. For example, given the following condition:


    define "Active Ambulatory Opioid Rx":
      [MedicationRequest: "Ambulatory Abuse Potential Opioids"] Rx
        where Rx.status = 'active'
    		  and Rx.category contains "Outpatient"


In this example, the condition is referencing the `status` and `category` elements of the `MedicationRequest` resource. In order for this logic to be evaluated effectively, the system providing the `MedicationRequest` instance must understand these two elements and provide data for them if it is available. Computability profiles are used to communicate this information through FHIR profiles.

Note that for logic expressed in CQL, this information can be inferred by static analysis of the CQL expressions and is exposed statically in the `dataRequirement` element of the `Library` resource. In addition, the [`$data-requirements`](http://hl7.org/fhir/R4/library-operation-data-requirements.html) operation can be used to extract this information from a CQL Library dynamically.

#### Implementation Considerations

Content conforming to this IG **SHOULD** select a set of base interoperability profiles appropriate for the intended target. For international usage, implementation guides conforming to this IG **SHOULD** use [International Patient Summary](http://hl7.org/fhir/uv/ips).

In general, implementation of any given computable content is based on the intersection of the interoperability and computability profiles. As such, content authors must take care not to define computability profiles that conflict with interoperability profiles in their intended target scope.

Clinical practice guidelines need to define the complete set of data elements required for the logic to function. This is the purpose of the computability profiles. Note that although selecting a base set of interoperability profiles (such as International Patient Summary) can provide a basis for sharing common data elements, experience has shown that even for relatively smaller CPGs, the set of computability profiles is never completely representable in any standard terminology or core data model. As such, mapping is required to support the use of a CPG in a given setting to demonstrate:

1. How the data elements map to existing data elements where there is complete semantic alignment, and
2. How the data elements are represented when there is incomplete semantic alignemnt.

In particular, IPS as a summary model is an incomplete target for the representation of data. It should be used as a basis for sharing data elements, but must be augmented by the specific data elements and mappings required to support computable representation of the logic of a clinical guideline.

As well, _how_ data is exchanged is an importantly different consideration than _what_ data is being exchanged, and the purpose of computability profiles in an IG is to specify _what_ data is to be exchanged, not _how_. In particular, although document sharing could be a solution for CPGs with very few and/or low volume data requirements, care should be taken to ensure that implementations are free to make appropriate decisions for their environments about how data exchange is occurring.