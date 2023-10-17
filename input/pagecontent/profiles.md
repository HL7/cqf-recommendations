FHIR profiles are a key aspect of supporting interoperable computable content, providing a formal mechanism for defining the data elements used by computable content, as well as conformance expectations for the computable content itself. Readers of this implementation guide should be familiar with the [Profiling FHIR](http://hl7.org/fhir/R4/profiling.html) topic in the base specification.

This page provides overview documentation for the following categories of profiles and documentation:

*   **Artifact Profiles**: Profiles for shareable knowledge artifacts
*   **Domain Profiles**: Domain profiles such as Case/Plan and Metric
*   **Activity Profiles**: Activity profiles such as MedicationRequest
*   **Content Profiles**: Documentation on using profiles with CPG content

For indexes of profiles and extensions defined in this implementation guide, see the following:

*   **[Profile Index](artifacts.html#profile-index)**: Alphabetical profile listing
*   **[Extension Index](artifacts.html#extension-index)**: Alphabetical extension listing
*   **[Example Profile Index](examples.html#profile-index)**: Alphabetical listing of profiles used in examples

### Artifact profiles

For definitional artifacts, this implementation guide defines profile classes to represent knowledge capabilities for shareable, computable, publishable, and executable knowledge artifacts. All knowledge artifacts must be at least shareable, and where appropriate for the target environment, artifacts should declare the capabilities they support using the \[cpg-knowledgeCapability\](StructureDefinition-cpg-knowledgeCapability.html) extension, as well as the knowledge representation level of the artifact using the \[cpg-knowledgeRepresentationLevel\](StructureDefinition-cpg-knowledgeRepresentationLevel) extension, as defined in the shareable profiles.

*   **Shareable**: Shareable profiles set the minimum expectations for exchanging an artifact, including the URL, version, name, and publisher.
*   **Computable**: Computable profiles deal with authoring and design-time considerations, describing the minimum expectations for exchanging a machine-readable representation of an artifact. At a minimum, a computable artifact is one that does not have _only_ human-readable content.
*   **Publishable**: Publishable profiles describe the expectations for publication and distribution of an artifact, typically as part of an artifact repository.
*   **Executable**: Executable profiles deal with run-time behavior and implementation considerations. For example, an executable library may contain compiled content that can be directly executed by an engine. At a minimum, an executable artifact is guaranteed to have all the elements required to support at least one operation appropriate to the type of artifact.

These capabilities are introduced to support separation of concerns along the spectrum from authoring to distribution to consumption, as illustrated by the following diagram:

![Knowledge Capabilities](knowledge-capabilities.png)

A given artifact may provide all knowledge capabilities (Shareable plus Computable, Publishable, and Executable), or it may be focused on a particular capability. For example, a ValueSet may be only Shareable and Executable because it is intended for use in environments without access to a terminology service capable of expanding the Computable value set.

Note that explicit profiles for capabilities are only defined when there are specific elements of the artifact involved in supporting that capability. For example, there is no executable ActivityDefinition profile, but that doesn't mean that ActivityDefinition artifacts cannot be executable, only that there are no additional conformance expectations for executable ActivityDefinitions specified by this implementation guide.

{% include profile-tables/artifact-profiles.html %}

\* - Conformance expectations covered by the Computable profile<a id="exec"></a><br>
\*\* - Conformance expectations covered by the Shareable profile<a id="comp"></a>

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

Content conforming to this IG **SHOULD** select a set of base interoperability profiles appropriate for the intended target. For international usage, implementation guides conforming to this IG **SHOULD** use International Patient Summary.

In general, implementation of any given computable content is based on the intersection of the interoperability and computability profiles. As such, content authors must take care not to define computability profiles that conflict with interoperability profiles in their intended target scope.