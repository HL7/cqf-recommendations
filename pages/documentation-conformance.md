---
layout: default
title: Conformance
---

# Conformance

Conformance from the perspective of this Implementation Guide (IG) refers to statements that prescribe expected characteristics and behaviors of systems involved in the authoring, testing, validation, distribution, integration, and delivery of the knowledge artifacts and associated documentation that make up a computable Clinical Practice Guideline (CPG). As described in the [Content Implementation Guides](methodology.html#content-igs) section of this IG, a FHIR-based CPG is delivered as a FHIR [Implementation Guide](http://hl7.org/fhir/implementationguide.html), and therefore follows the rules for establishing conformance requirements as defined by the FHIR specification.

This page provides a summary of and index to the various conformance requirements for a CPG established by this implementation guide.

## Conformance Language

This implementation follows the same [conformance language](http://hl7.org/fhir/conformance-rules.html#conflang) specified by the base FHIR specification:

This specification uses the conformance verbs SHALL, SHOULD, and MAY as defined in [RFC 2119](https://tools.ietf.org/html/rfc2119). Unlike RFC 2119, however, this specification allows that different applications might not be able to interoperate because of how they use optional features. In particular:

    1. SHALL: an absolute requirement for all implementations
    2. SHALL NOT: an absolute prohibition against inclusion for all implementations
    3. SHOULD/SHOULD NOT: A best practice or recommendation to be considered by implementers within the context of their particular implementation; there may be valid reasons to ignore an item, but the full implications must be understood and carefully weighed before choosing a different course
    4. MAY: This is truly optional language for an implementation; can be included or omitted as the implementer decides with no implications

## Must Support

Profiles in this implementation guide use the [must support](http://hl7.org/fhir/conformance-rules.html#mustSupport) flag to indicate that the elements play a meaningful role in the description of an artifact (for artifact profiles), or that the element is relevant for effective support of an expected behavior (for domain profiles). Note carefully that _must support_ does not indicate a _required_ element, that aspect is governed by the _cardinality_ of the element; but it does indicate that systems involved in exchanging knowledge artifacts, or implementation systems involved in exchanging data during implementation of knowledge artifacts, must understand the element and be able to provide meaningful data if and when it is available.

In addition, because FHIR-based CPGs are themselves FHIR implementation guides, they SHALL include a statement describing how the _must support_ flag is to be interpreted for effective use of their content, and that statement SHALL be consistent with the general characterization of must support behavior described here. Examples of _must support_ declarations can be found in:

* [US Core Must Support](http://hl7.org/fhir/us/core/general-guidance.html#must-support)
* [QI Core Must Support](http://hl7.org/fhir/us/qicore/#111-mustsupport-flag)

## Profiles

The [Profiles](profiles.html) page provides an overview of the various categories of profiles defined by this implementation guide, as well as a discussion of the use of profiles generally in computable content. In summary:

* Knowledge Artifacts SHALL conform to at least the appropriate Shareable profile for the type of knowledge artifact
* Knowledge Artifacts SHOULD conform to the appropriate Computable, Publishable, and Executable profiles for the type of knowledge artifact, and SHALL provide documentation describing the expected packaging and distribution targets for content.
* Content implementation guides SHOULD provide _case features_ describing the minimum data set appropriate for their content
* Content implementation guides SHOULD nominate a candidate set of _interoperability profiles_

## Terminology

The [Terminology](terminology.html) page provides an overview of the usage of terminology with computable content, as well as an index of the specific conformance terminologies defined by this implementation guide. In summary:

* Terminology distributed as part of content implementation guides SHALL conform to at least the appropriate Shareable profile.
* Terminology distributed as part of content implementation guides SHOULD conform to the appropriate Computable, Publishable, and Executable profiles, and SHALL provide documentation describing the expected packaging and distribution targets for content, as well as an expected maintenance path for any executable value sets.

## Libraries

The [Libraries](libraries.html) page provides an overview of the usage of Library resources to represent computable content, as well as general guidance for authoring shareable logic using CQL. In summary:

* Logic distributed as part of content implementation guides SHALL conform to at least the ShareableLibrary profile
* Logic distributed as part of content implementation guides SHOULD conform to the Computable, Publishable, and Executable profiles, and SHALL provide documentation describing the expected packaging and distribution targets for content.
