Terminologies are a critical aspect of supporting interoperable computable content. This implementation guide defines profiles for the CodeSystem and ValueSet resources to identify key elements that must be supported. The profiles described here ensure that different use case needs for value set artifacts are met in a manner that meets criteria deemed important for clinical guideline, decision support, and quality measure artifact creation, testing, use, maintenance, and distribution.

The approach taken here is based on and aligns with the core FHIR specification, readers of this implementation guide should be familiar with the [Using Codes](http://hl7.org/fhir/R4/terminologies.html) topic in the base FHIR specification.

This page provides overview documentation for the use of code systems and value sets:

*   Using Code Systems
*   Using Value Sets
*   Developing and Maintaining Terminology

For indexes of terminologies defined in this implementation guide, see the following:

*   **[Code System Index](artifacts.html#codesystem-index)**
*   **[Value Set Index](artifacts.html#valueset-index)**
*   **[Example Code System Index](examples.html#codesystem-index)**
*   **[Example Value Set Index](examples.html#valueset-index)**

### Using Code Systems

Standard and established code systems should be used whenever possible. Only in the case that existing code systems do not provide the necessary concepts should new code systems be defined. This implementation recommends the use of the Canonical Resource Management Infrastructure (CRMI) implementation guide to support content management of CodeSystem resources. The CRMI implementation guide defines two code system profiles:

*   CRMIShareableCodeSystem
*   CRMIPublishableCodeSystem

§term-1^^terminology:Code systems defined by content conforming to this IG **SHOULD** conform to the CRMIShareableCodeSystem profile, and **SHOULD** conform to the CRMIPublishableCodeSystem profile if the artifact status is active.§ This implementation guide does not take a dependency on CRMI, so these profiles are strongly recommended rather than required (see [Use of CRMI](documentation-conformance.html#use-of-crmi)).

Note that this does not mean that _any_ code system referenced by computable content must use these profiles. The conformance requirement only applies to code systems _defined_ as part of computable content. For example, the SNOMED CT code system would not be expected to conform to these profiles.

If no version is specified then the default behavior for a FHIR terminology server is described in the server's Terminology Capabilities statement. If no Terminology Capabilities statement exists, no assumptions can be made.

Refer to the [HL7 Terminology](https://terminology.hl7.org/) site for a list of established [code systems](https://terminology.hl7.org/codesystems.html) and their corresponding canonical URLs.

### Using Value Sets

The CRMI implementation guide defines four value set profiles:

*   CRMIShareableValueSet
*   CRMIComputableValueSet
*   CRMIPublishableValueSet
*   CRMIExpandedValueSet

The ComputableValueSet profile describes the requirements for computable representation of value set membership criteria, ensuring that value sets using this profile selectively support only one technique for defining the content of expansions.

The ExpandedValueSet profile provides support for including a persisted point-in-time expansion that is consistent with the chosen compositional style for the value set. The included point-in-time expansion can then be used by FHIR implementations that do not have a FHIR terminology service capable of evaluating the value set in real-time with an `$expand` operation. It also provides all the concepts needed in the expansion so that a complete code system resource is not required.

The PublishableValueSet profile establishes expectations for use of the artifact in a content management lifecycle including publishing and indexing metadata, usage guidance and licensing information, and provenance and governance for the artifact. In addition, to follow vocabulary best-practices, publishable value sets must also be either Computable, Executable, or both.

§term-2^^terminology:Whenever possible, value sets **SHOULD** be defined by crafting one or more inclusion and exclusion criteria that use code system properties, attributes, and relationships.§ In this way, the resulting definition can be used to find potential new value set members with each new code system version update. When this is not possible, value sets may be wholly or partially defined by enumerating single concept codes.

Some value sets cannot be defined using the standard FHIR compose structure with include and exclude elements. §term-3?^^terminology:For these cases, the description of the construction of the value set **SHOULD** be represented with non-FHIR expressions using a computable expression in some terminology grammar.§ For value sets expressed in this way, the language must be sufficiently open and accessible that a user could construct the value set following the semantics without needing to use a proprietary implementation.

As a last resort, for cases where the value set construction cannot be expressed using `compose` or the `expression` extension, use the `rules-text` extension to provide a narrative description of the process to be followed.

§term-4^^terminology:Value sets defined by content conforming to this IG **SHOULD** use the CRMIComputableValueSet profile to define value set member content in one of three ways.§ This profile requires that one and only one of the following three approaches can be used for an instance of the value set, in order of preference:

1.  **Compose**: This supports using standard FHIR compose structure to define value set membership.
2.  **Expression**: This extension supports including a specific alternative expression where the syntax is explicitly defined outside of FHIR (such as TSQL)
3.  **Rules Text**: This extension supports entering a text block that describes a script or some other textual description of how to determine value set members.

The CRMIExpandedValueSet profile supports providing a point-in-time expansion of the value set members using the `ValueSet.expansion` element containing specific individual concept codes obtained as a result of the computed expansion of the value set at the time of publication. The expansion element can be used to support environments where the actual definition cannot be evaluated. As new versions of the value set, and/or as new versions of the code systems used by the value set are released, the expansion content will need to be updated to incorporate newly defined codes that meet the value set intent. §term-5^^terminology:Before and periodically during production use, value set expansions **SHOULD** be updated.§ §term-6^^terminology,documentation:Content implementation guides that include executable value sets **SHALL** document the expected maintenance path for those value sets.§

§term-7^^terminology:Value sets defined by content conforming to this IG **SHOULD** include an expansion element with a timestamp and enough information to determine whether the computed expansion is current, or needs to be updated.§ §term-8^^terminology:The parameters element **SHOULD** be used to convey information about the parameters used to expand the value set.§

§§term-9^^terminology:Value sets defined by content conforming to this IG **SHOULD** conform to the CRMI Shareable, Computable or Expanded, and (if active) Publishable value set profiles^Value sets defined by content conforming to this IG SHOULD conform to:

*   The CRMIShareableValueSet profile
*   Either or both of the CRMIComputableValueSet and CRMIExpandedValueSet profiles
*   and the CRMIPublishableValueSet profile if the artifact status is active

§§

Note that as with code systems, this does not mean that _any_ value set referenced by computable content must use these profiles. The conformance requirements only apply to value sets _defined_ as part of computable content.

### Developing and Maintaining Terminology

Standard terminologies change continuously: codes are added and retired, and categories are restructured. Computable guidelines need to remain valid as these terminologies evolve, and evaluating a guideline often requires comparing data coded with different versions, or different code systems, such as outcomes before and after the guideline was published. This section describes best practices for developing and maintaining the terminology used by computable guidelines, informed by questions from implementers and discussion by the CPG-on-FHIR project team.

#### Guideline-Specific Concepts and Mappings

The recommended approach is to define a single guideline-specific (local) code system that identifies exactly the concepts used in the guideline, and then map those concepts to the standard terminologies used in implementation:

* The guideline-specific code system defines each concept as the guideline intends it, independent of how any particular standard terminology categorizes it. The guideline's logic and value sets refer to these concepts.
* Mappings from the guideline concepts to each standard terminology are represented using ConceptMap resources, with one ConceptMap for each target code system (for example, one for SNOMED CT, one for ICD-10-CM, and one for ICD-9-CM).
* When a standard terminology changes, the mappings are updated, and the guideline concepts, and the logic that uses them, remain stable.

Splitting the mappings by code system is intentional. It aligns maintenance of the mappings with the expertise needed to maintain them: for example, the SNOMED CT mappings can be assigned to a terminologist with SNOMED CT expertise, which makes it easier to assign and manage the maintenance work.

For example, a guideline whose recommendations apply only to non-pulsatile tinnitus can define a concept for non-pulsatile tinnitus. ICD-10-CM distinguishes tinnitus (H93.1) from pulsatile tinnitus (H93.A), so the ICD-10-CM mapping can be precise. ICD-9-CM instead distinguishes unspecified (388.30), subjective (388.31), and objective (388.32) tinnitus, and does not make the same distinction, so the ICD-9-CM mapping records how closely each code corresponds to the guideline concept, using the ConceptMap `equivalence` element. Comparisons of outcomes across data coded with each code system can then account for the difference explicitly.

The [WHO SMART Guidelines antenatal care (ANC) implementation guide](https://build.fhir.org/ig/WorldHealthOrganization/smart-anc/) illustrates this approach, with a [guideline-specific code system](https://build.fhir.org/ig/WorldHealthOrganization/smart-anc/CodeSystem-anc-custom-codes.html) and [a concept map for each target code system](https://build.fhir.org/ig/WorldHealthOrganization/smart-anc/artifacts.html#terminology-concept-maps).

#### Update Cadence

Standard terminologies are released on different schedules. For example, the US Edition of SNOMED CT is released twice a year, and RxNorm has monthly releases, with more frequent weekly updates. Updating the terminology used by a guideline with every release of every code system is a significant maintenance burden.

To keep that burden low, guideline terminology (code system versions, mappings, and value set expansions) should be reviewed and updated no more than twice a year, and at least once a year. An annual update aligns with established practice: the Value Set Authority Center (VSAC) expects value sets to be updated yearly, and the terminology used in electronic clinical quality measures (eCQMs) is updated annually, along with the measures themselves. Content implementation guides document their chosen maintenance path for executable value sets, as described in [Using Value Sets](#using-value-sets).

#### Organizing Value Sets by Code System

Some methodologies define two kinds of value sets:

* **Leaf** value sets, each of which includes codes from one and only one code system
* **Grouping** value sets, which bring leaf value sets together (using `compose.include.valueSet`) when a concept needs codes from more than one code system

This structure is not necessary, and may not be desirable from a purely terminological perspective, but it has advantages when maintenance is spread across people with different expertise. For example, a terminologist with SNOMED CT expertise can be assigned all of the SNOMED CT leaf value sets. This is the same reasoning as splitting mappings by code system, described above.
