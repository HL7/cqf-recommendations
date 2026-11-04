This page indexes the requirements that apply to computable guideline content and explains how to assess them. A content implementation guide establishes the requirements for its own artifacts and implementations using the [FHIR R4 conformance framework](https://hl7.org/fhir/R4/conformance-rules.html).

Begin by identifying the actor and scope of each requirement: authoring a knowledge artifact, distributing terminology or logic, exchanging patient data, or implementing a clinical workflow. Then collect evidence for the applicable profile, operation, and narrative requirements. Examples and conceptual diagrams help explain the model; the linked formal definitions establish the resource contracts.

### Clinical Safety

This specification defines profiles, terminologies, patterns, and guidance for describing guideline-directed care. As such, Clinical Safety is a key concern with regard to any content developed conformant with this implementation guide. As with any healthcare-related endeavor, content authors and implementers are strongly encouraged to keep patient safety, privacy, and security as a central focus. To aid with this focus, content authors and implementers are strongly encouraged to use the [FHIR Implementer's Safety Check List](https://hl7.org/fhir/R4/safety.html) to help inform development and implementation of computable guidelines.

### Conformance Language

This implementation follows the same [conformance language](https://hl7.org/fhir/R4/conformance-rules.html#conflang) specified by the base FHIR specification:

This specification uses the conformance verbs SHALL, SHOULD, and MAY as defined in [RFC 2119](https://www.rfc-editor.org/rfc/rfc2119.html). Unlike RFC 2119, however, this specification allows that different applications might not be able to interoperate because of how they use optional features. In particular:

    1. SHALL: an absolute requirement for all implementations
    2. SHALL NOT: an absolute prohibition against inclusion for all implementations
    3. SHOULD/SHOULD NOT: A best practice or recommendation to be considered by implementers within the context of their particular implementation; there may be valid reasons to ignore an item, but the full implications must be understood and carefully weighed before choosing a different course
    4. MAY: This is truly optional language for an implementation; can be included or omitted as the implementer decides with no implications

### Must Support

Profiles in this implementation guide use the [must support](https://hl7.org/fhir/R4/conformance-rules.html#mustSupport) flag to indicate that the elements play a meaningful role in the description of an artifact (for artifact profiles), or that the element is relevant for effective support of an expected behavior (for domain profiles). Note carefully that _must support_ does not indicate a _required_ element, that aspect is governed by the _cardinality_ of the element; but it does indicate that systems involved in exchanging knowledge artifacts, or implementation systems involved in exchanging data during implementation of knowledge artifacts, must understand the element and be able to provide meaningful data if and when it is available.

In addition, because FHIR-based CPGs are themselves FHIR implementation guides, they SHALL include a statement describing how the _must support_ flag is to be interpreted for effective use of their content, and that statement SHALL be consistent with the general characterization of must support behavior described here. Examples of _must support_ declarations can be found in:

* [IPS Must Support](https://hl7.org/fhir/uv/ips/design.html#must-support)
* [US Core Must Support](https://hl7.org/fhir/us/core/must-support.html)
* [QI Core Must Support](https://hl7.org/fhir/us/qicore/#mustsupport-flag)

### Profiles

The [Profiles](profiles.html) page provides an overview of the various categories of profiles defined by this implementation guide, as well as a discussion of the use of profiles generally in computable content. In summary:

* Knowledge Artifacts SHALL conform to at least the appropriate Shareable profile defined in the [Canonical Resource Management Infrastructure](https://hl7.org/fhir/uv/crmi/) for the type of knowledge artifact
* Knowledge Artifacts SHOULD conform to the appropriate Computable, Publishable, and Executable profiles in CRMI and this implementation guide for the type of knowledge artifact, and SHALL provide documentation describing the expected packaging and distribution targets for content.
* Content implementation guides SHOULD provide _case features_ describing the minimum data set appropriate for their content
* Content implementation guides SHOULD nominate a candidate set of _interoperability profiles_

### Terminology

The [Terminology](terminology.html) page provides an overview of the usage of terminology with computable content, as well as an index of the specific conformance terminologies defined by this implementation guide. In summary:

* Terminology distributed as part of content implementation guides SHALL conform to at least the appropriate Shareable profile.
* Terminology distributed as part of content implementation guides SHOULD conform to the appropriate Computable, Publishable, and Executable profiles, and SHALL provide documentation describing the expected packaging and distribution targets for content, as well as an expected maintenance path for any executable value sets.

### Libraries

The [Libraries](libraries.html) page provides an overview of the usage of Library resources to represent computable content, as well as general guidance for authoring shareable logic using CQL. In summary:

* Logic distributed as part of content implementation guides SHALL conform to at least the ShareableLibrary profile defined in [CRMI](https://hl7.org/fhir/uv/crmi/)
* Logic distributed as part of content implementation guides SHOULD conform to the Computable, Publishable, and Executable profiles, in [Using CQL With FHIR](https://hl7.org/fhir/uv/cql/), CRMI, and this implementation guide and SHALL provide documentation describing the expected packaging and distribution targets for content.

<a id="1"></a>
<a id="2"></a>
### Levels of Conformance

The [levels of enablement](documentation-approach-03-conformance-levels.html) describe capabilities an implementation can choose to deliver. The [IHE Computable Care Guidelines initiative](https://wiki.ihe.net/index.php/Computable_Care_Guidelines) is related work on data collection, decision logic, and indicators for guideline-based care. Such implementation approaches can define a narrower capability scope, but do not replace the artifact requirements above.

### Conformance Testing

Feature-level conformance declarations and testing remain under development. This guide does not define a complete certification scheme for the enablement choices.

> This project welcomes feedback on how to describe capabilities and how to declare and validate conformance to them.

### Build a reviewable validation record

| Check | Question answered | Useful evidence |
| --- | --- | --- |
| Resource and package validation | Do artifacts satisfy their structures, profiles, terminology bindings, and dependencies? | Validator output, dependency versions, unresolved issues |
| Logic testing | Do expressions return the expected results for the tested cases? | Inputs and expected/actual outputs, including missing data and boundaries |
| Clinical review | Does the representation preserve the recommendation and its exceptions? | Reviewed mappings, decision tables, rationale, and reviewer decisions |
| Local integration testing | Does the implementation use the actual data, triggers, operation contracts, and action workflow correctly? | Target-system tests and supported-capability record |
| Workflow and outcome evaluation | Can intended users act on the guidance, and what effects or burdens result? | Usability findings, usage/appropriateness review, and relevant outcome measures |
{:.grid}

These checks answer different questions. Validator success does not establish clinical correctness, and a successful service call does not establish clinical benefit. The [methodology](methodology-validate.html#validate-step), [checklists](checklists.html), and [CDS evidence topic](documentation-approach-cds-implementation-evidence.html) explain the broader review work.
