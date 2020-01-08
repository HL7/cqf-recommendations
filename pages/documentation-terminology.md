---
layout: default
title: Terminology
---

# Using Terminology

Terminologies are a critical aspect of supporting interoperable computable content. This implementation guide defines profiles for the CodeSystem and ValueSet resources to identify key elements that must be supported.

Readers of this implementation guide should be familiar with the [Using Codes](http://hl7.org/fhir/R4/terminologies.html) topic in the base FHIR specification.

## Code Systems

Standard and established code systems should be used whenever possible. Only in the case that existing code systems do not provide the necessary concepts should new code systems be defined. If required, code systems defined by content conforming to this IG SHALL use the [cpg-codesystem](StructureDefinition-cpg-codesystem.html) profile.

Note that this does not mean that _any_ code system referenced by computable content must use the cpg-codesystem profile. The conformance requirement only applies to code systems _defined_ as part of computable content. For example, the SNOMED CT code system would not be expected to conform to the cpg-codesystem profile.

If no version is specified then the default behavior for a FHIR terminology server is described in the server's Terminology Capabilities statement. If no Terminology Capabilities statement exists, no assumptions can be made.

Refer to the base FHIR specification for a list of established [code systems](http://hl7.org/fhir/R4/terminologies-systems.html) and the corresponding canonical URL.

## Value Sets

This implementation guide defines three value set profiles, a base cpg-valueset profile that establishes key elements that must be supported for any value set content, and two derived profiles, cpg-expressionbasedvalueset and cpg-cachedvalueset.

Whenever possible, value sets SHOULD be defined by crafting one or more inclusion and exclusion criteria that use code system properties, attributes, and relationships. In this way, the resulting definition can be used to find potential new value set members with each new code system version update. When this is not possible, value sets may be wholly or partially defined by enumerating single concept codes.

Some value sets cannot be defined using the standard FHIR compose structure with include and exclude elements. For these cases, the description of the construction of the value set is represented with non-FHIR expressions using either the Rules Text or Expression extensions.

Value sets defined by content conforming to this IG SHALL use the [cpg-expressionbasedvalueset](StructureDefinition-cpg-expressionbasedvalueset.html) profile to define value set member content in one of three ways. This profile requires that only one of the following three approaches can be used for an instance of the value set:

1. **Rules Text** - This extension supports entering a text block that describes a script or some other textual description of how to determine value set members.
2. **Expression** - This extension supports including a specific alternative expression where the syntax is explicitly defined outside of FHIR (such as SQL)
3. **Compose** - This supports using standard FHIR compose structure to define value set membership.

In addition to the cpg-expressionbasedvalueset profile, this implementation guide defines a [cpg-cachedvalueset](StructureDefinition-cpg-cachedvalueset.html) profile that supports providing a point-in-time "definition" of the value set members using only the `ValueSet.compose.include` element containing specific individual concept codes, along with a `usageWarning` extension element that communicates that the compose content **is not** the official value set definition. The `compose` is only a convenience copy of the member list obtained as a result of the computed expansion of the value set at the time of publication. This profile can be used to support environments where the actual definition (as expressed elsewhere) cannot be evaluated. Value sets expressed in this way SHALL use the `sourceValueSet` extension element to reference the cpg-expressionbasedvalueset that provides the actual definition of the value set. This means that as new versions of the source expression-based value set, and/or as new versions of the code systems used by the source expression-based value set are released, the cached value set compose content will need to be updated to incorporate newly defined codes that meet the value set intent. Before and periodically during production use, cached value sets SHOULD be updated.

Note that as with code systems, this does not mean that _any_ value set referenced by computable content must use the cpg-valueset and related profiles. The conformance requirements only apply to value sets _defined_ as part of computable content.
