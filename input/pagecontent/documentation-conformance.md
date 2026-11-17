Conformance from the perspective of this Implementation Guide (IG) refers to statements that prescribe expected characteristics and behaviors of systems involved in the authoring, testing, validation, distribution, integration, and delivery of the knowledge artifacts and associated documentation that make up a computable Clinical Practice Guideline (CPG). As described in the [Content Implementation Guides](methodology.html#content-implementation-guides) section of this IG, a FHIR-based CPG is delivered as a FHIR [Implementation Guide](http://hl7.org/fhir/implementationguide.html), and therefore follows the rules for establishing conformance requirements as defined by the FHIR specification.

This page explains how conformance requirements are expressed in this implementation guide, and lists all of the conformance statements it makes.
{:.modified-content}

### Clinical Safety

This specification defines profiles, terminologies, patterns, and guidance for describing guideline-directed care. As such, Clinical Safety is a key concern with regard to any content developed conformant with this implementation guide. As with any healthcare-related endeavor, content authors and implementers are strongly encouraged to keep patient safety, privacy, and security as a central focus. To aid with this focus, content authors and implementers are strongly encouraged to use the [FHIR Implementer's Safety Check List](https://www.hl7.org/fhir/safety.html) to help inform development and implementation of computable guidelines.

### Conformance Language

This implementation guide follows the same [conformance language](http://hl7.org/fhir/conformance-rules.html#conflang) specified by the base FHIR specification:

This specification uses the conformance verbs SHALL, SHOULD, and MAY as defined in [RFC 2119](https://tools.ietf.org/html/rfc2119). Unlike RFC 2119, however, this specification allows that different applications might not be able to interoperate because of how they use optional features. In particular:

1. **SHALL**: an absolute requirement for all implementations
2. **SHALL NOT**: an absolute prohibition against inclusion for all implementations
3. **SHOULD/SHOULD NOT**: a best practice or recommendation to be considered by implementers within the context of their particular implementation; there may be valid reasons to ignore an item, but the full implications must be understood and carefully weighed before choosing a different course
4. **MAY**: truly optional language for an implementation; can be included or omitted as the implementer decides with no implications

<div class="new-content" markdown="1">

### Conformance Targets

Conformance statements in this implementation guide apply to one of two kinds of target:

* **Content**: the knowledge artifacts and documentation of a computable guideline, typically published as a content implementation guide. Most of the statements in this implementation guide apply to content.
* **Systems**: the systems that store, evaluate, and act on that content. This implementation guide defines three actors for these systems, the [CPG Knowledge Repository](ActorDefinition-cpg-knowledge-repository.html), the [CPG Service](ActorDefinition-cpg-service.html), and the [CPG Client](ActorDefinition-cpg-client.html). See the [Actors](actors.html) page for how these actors work together at each level of enablement.

Statements that apply to a particular system list that actor in the table below. Statements that apply to content list no actor.

</div>

### Must Support

Profiles in this implementation guide use the [must support](http://hl7.org/fhir/conformance-rules.html#mustSupport) flag to indicate that the elements play a meaningful role in the description of an artifact (for artifact profiles), or that the element is relevant for effective support of an expected behavior (for domain profiles). Note carefully that _must support_ does not indicate a _required_ element, that aspect is governed by the _cardinality_ of the element; but it does indicate that systems involved in exchanging knowledge artifacts, or implementation systems involved in exchanging data during implementation of knowledge artifacts, must understand the element and be able to provide meaningful data if and when it is available.

§conf-1^^documentation:Because FHIR-based CPGs are themselves FHIR implementation guides, content implementation guides **SHALL** include a statement describing how the _must support_ flag is to be interpreted for effective use of their content, and that statement **SHALL** be consistent with the general characterization of must support behavior described here.§ Examples of _must support_ declarations can be found in:
{:.modified-content}

* [IPS Must Support](https://hl7.org/fhir/uv/ips/design.html#must-support)
* [US Core Must Support](https://hl7.org/fhir/us/core/must-support.html)
* [QI Core Must Support](https://hl7.org/fhir/us/qicore/#mustsupport-flag)

<div class="new-content" markdown="1">

### Use of CRMI

The knowledge artifacts of a computable guideline are canonical resources, and the [Canonical Resource Management Infrastructure](http://hl7.org/fhir/uv/crmi) (CRMI) implementation guide defines profiles and capabilities for managing them. This implementation guide deliberately does not take a dependency on CRMI, so conformance to the CRMI profiles is not required. However, conformance to the CRMI Shareable profiles, and to the Computable, Publishable, and Executable profiles where they apply, is strongly recommended, and the statements below that refer to CRMI profiles use **SHOULD** for this reason. Content that does not conform to these profiles needs to understand and document the implications for sharing and managing that content.

### Use of CQL

This implementation guide does not require that content use Clinical Quality Language (CQL), and so does not take a dependency on the [Using CQL With FHIR](http://hl7.org/fhir/uv/cql) implementation guide. However, content that does use CQL is required to conform to the Using CQL With FHIR implementation guide. This is a stronger expectation than the use of CRMI: the statements on the [Libraries](libraries.html) page that refer to the Using CQL With FHIR profiles use **SHALL**, and apply only to content that uses CQL.

### Packaging and Distribution

§conf-2^^documentation:Content implementation guides **SHALL** provide documentation describing the expected packaging and distribution targets for their knowledge artifacts, terminology, and logic.§ See the [Packaging](methodology-package.html) topic in the methodology for background.

### Case Features and Data

§conf-3^^data:Content implementation guides **SHOULD** provide _case features_ describing the minimum data set appropriate for their content.§ See [Translate Step: Profiles](methodology-translate.html#profiles) for how case features are defined.

### Summary of Requirements by Topic

The following pages establish the detailed conformance requirements for each topic. Each of these statements is also listed in the table below.

* <a id="profiles"></a>[Profiles](profiles.html): Knowledge artifacts and the selection of interoperability profiles. Statements prof-1 through prof-3.
* <a id="terminology"></a>[Terminology](terminology.html): Code systems and value sets defined by content. Statements term-1 through term-9.
* <a id="libraries"></a>[Libraries](libraries.html): Libraries of computable logic. Statements lib-1 and lib-2.
* [Select](methodology-select.html#guideline-supporting-information) and [Translate](methodology-translate.html): Representation of recommendations, strategies, pathways, case features, and activities. Statements rec-1 through rec-12, data-1, act-1, and act-2.
* [Reporting](documentation-approach-12-07-cpg-derivative-and-related-assets.html#ecase-report) and [Common Processes](documentation-approach-12-06-cpg-common-pathway.html): Statements path-1 and path-2.

### Conformance Statements

This section contains a table listing all the free-text conformance statements found in this implementation guide. This table is provided as a useful summary for implementers for the purpose of evaluating key features and to support testing. However, reading this table alone is insufficient to understand or successfully implement the specification:

1. The table only includes conformance expectations expressed as free text. It does not include the computable expectations represented in capability statements, profiles, value sets, etc.
2. The text in the table only includes the 'formal' requirement. It does not provide the contextual language around the statement that will be needed for successful explanation. The 'id' of each statement is a hyperlink to the place it appears in the text to assist with gathering the needed context.

A few other notes:

* The ids are generally specific to the pages on which the requirements appear, but not always. If content is moved from one page to another, the id will remain the same.
* While ids start as contiguous, as the specification is updated, it is possible some conformance statements will be removed, which will create a gap in the numbers. This is not an error.
* Ids are not final until published in an official release. After that point, ids will not be changed.
* It is possible for the text of a given rule to change somewhat from one release to another so long as the intention of the rule is the same. If the intent has a significant change, the old rule will be removed and a new one added in its place (with a new id).
* Categories are drawn from the [CPG Conformance Category](CodeSystem-cpg-conformance-category-cs.html) code system. They are provided as a general aid to filtering, and are not a definitive classification.

<style>
  .cpg-conformance-table {
    overflow-x: auto;
  }
  .cpg-conformance-table .fhir-conformance-list tr > :first-child {
    white-space: nowrap;
  }
</style>

<div class="cpg-conformance-table" role="region" aria-labelledby="conformance-statements" tabindex="0" markdown="1">

§§§

</div>

</div>

### Levels of Conformance

One major effort on compliance is the WHO and Integrated Health Enterprise (IHE) initiative on Computable Care Guidelines (CCG) ([IHE CCG](documentation-approach-cds-implementation-evidence.html#ref-ihe-ccg)) profile of the HL7 CPG ([IHE Canada](documentation-approach-cds-implementation-evidence.html#ref-ihe-canada-headache)). The IHE/WHO CCG includes a minimum data set to be collected during an encounter (i.e., required data elements as Case Features), logic to be triggered based on data collected (Recommendations), and reportable health system management indicators (Metrics).  It can track and monitor care delivery activities (e.g., what happened) as well as provide the ability to improve guideline adherence.

### Conformance Testing

Levels of conformance will be based on alternative conformance profiles such as the CCG above, and on the actors and levels of enablement described on the [Actors](actors.html) page. Conformance with Features of the CPG are still under development.
{:.modified-content}

> NOTE: This project is actively seeking feedback on how to characterize levels of enablement as capabilities, and how to support declaration and validation of conformance to these capabilities.

<div class="new-content" markdown="1">

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

</div>
