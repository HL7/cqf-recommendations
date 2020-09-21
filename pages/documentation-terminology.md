---
layout: default
title: Terminology
---

# Using Terminology

Terminologies are a critical aspect of supporting interoperable computable content. This implementation guide defines profiles for the CodeSystem and ValueSet resources to identify key elements that must be supported. The profiles described here ensure that different use case needs for value set artifacts are met in a manner that meets criteria deemed important for clinical guideline, decision support, and quality measure artifact creation, testing, use, maintenance, and distribution.

The approach taken here is based on and aligns with the core FHIR specification, readers of this implementation guide should be familiar with the [Using Codes](http://hl7.org/fhir/R4/terminologies.html) topic in the base FHIR specification.

## Code Systems

Standard and established code systems should be used whenever possible. Only in the case that existing code systems do not provide the necessary concepts should new code systems be defined. This implementation guide defines two value set profiles:

* [CPGShareableCodeSystem](StructureDefinition-cpg-shareablecodesystem.html)
* [CPGPublishableCodeSystem](StructureDefinition-cpg-publishablecodesystem.html)

If required, code systems defined by content conforming to this IG SHALL use these profiles.

Note that this does not mean that _any_ code system referenced by computable content must use these profiles. The conformance requirement only applies to code systems _defined_ as part of computable content. For example, the SNOMED CT code system would not be expected to conform to these profiles.

If no version is specified then the default behavior for a FHIR terminology server is described in the server's Terminology Capabilities statement. If no Terminology Capabilities statement exists, no assumptions can be made.

Refer to the [HL7 Terminology](https://terminology.hl7.org/) site for a list of established [code systems](https://terminology.hl7.org/codesystems.html) and their corresponding canonical URLs.

## Value Sets

This implementation guide defines four value set profiles:

* [CPGShareableValueSet](StructureDefinition-cpg-shareablevalueset.html)
* [CPGComputableValueSet](StructureDefinition-cpg-computablevalueset.html)
* [CPGPublishableValueSet](StructureDefinition-cpg-shareablevalueset.html)
* [CPGExecutableValueSet](StructureDefinition-cpg-executablevalueset.html)

As with other Shareable profiles defined by this implementation guide, CPGShareableValueSet builds off the ShareableValueSet profile defined in the base FHIR specification and adds extension to support declaring knowledge representation level and knowledge artifact capabilities.

The ComputableValueSet profile describes the requirements for computable representation of value set membership criteria, ensuring that value sets using this profile selectively support only one technique for defining the content of expansions.

The PublishableValueSet profile establishes expectations for use of the artifact in a content management lifecycle including publishing and indexing metadata, usage guidance and licensing information, and provenance and governance for the artifact.

The ExecutableValueSet profile provides support for including a persisted point-in-time expansion that SHALL conform to the chosen compositional style for the value set. The included point-in-time expansion can then be used by FHIR implementations that do not have a FHIR terminology service capable of evaluating the value set in real-time with an $expand operation. It also provides all the concepts needed in the expansion so that a complete code system resource is not required.

Whenever possible, value sets SHOULD be defined by crafting one or more inclusion and exclusion criteria that use code system properties, attributes, and relationships. In this way, the resulting definition can be used to find potential new value set members with each new code system version update. When this is not possible, value sets may be wholly or partially defined by enumerating single concept codes.

Some value sets cannot be defined using the standard FHIR compose structure with include and exclude elements. For these cases, the description of the construction of the value set SHOULD be represented with non-FHIR expressions using a computable expression in some terminology grammar. For value sets expressed in this way, the language must be sufficiently open and accessible that a user could construct the value set following the semantics without needing to use a proprietary implementation.

As a last resort, for cases where the value set construction cannot be expressed using `compose` or the `expression` extension, use the `rules-text` extension to provide a narrative description of the process to be followed.

Value sets defined by content conforming to this IG SHALL use the CPGComputableValueSet profile to define value set member content in one of three ways. This profile requires that one and only one of the following three approaches can be used for an instance of the value set, in order of preference:

1. **Compose** - This supports using standard FHIR compose structure to define value set membership.
2. **Expression** - This extension supports including a specific alternative expression where the syntax is explicitly defined outside of FHIR (such as TSQL)
3. **Rules Text** - This extension supports entering a text block that describes a script or some other textual description of how to determine value set members.

The CPGExecutableValueSet profile supports providing a point-in-time expansion of the value set members using the `ValueSet.expansion` element containing specific individual concept codes obtained as a result of the computed expansion of the value set at the time of publication. The expansion element can be used to support environments where the actual definition cannot be evaluated. As new versions of the value set, and/or as new versions of the code systems used by the value set are released, the expansion content will need to be updated to incorporate newly defined codes that meet the value set intent. Before and periodically during production use, value set expansions SHOULD be updated.

Value sets defined by content conforming to this IG SHOULD include an expansion element with a timestamp and enough information to determine whether the computed expansion is current, or needs to be updated.

In addition, value sets defined by content conforming to this IG SHALL use the CPGPublishableValueSet profile.

Note that as with code systems, this does not mean that _any_ value set referenced by computable content must use these profiles. The conformance requirements only apply to value sets _defined_ as part of CPG-on-FHIR content.
