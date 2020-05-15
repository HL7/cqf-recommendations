---
layout: default
title: Knowledge Translation
---

### **Knowledge Translation**

Knowledge translation has specific meaning within the knowledge engineering lifecycle process for knowledge engineers.  However, there are at least three perspectives on knowledge translation that must be considered in the context of co-developing a clinical guideline together with its formal representation as a CPG.  These include:

1. The “activities involved in moving research from the laboratory, the research journal, and the academic conference into the hands of people and organizations who can put it to practical use” ([ref](https://ncats.nih.gov/translation/spectrum))
2. The translation between and across various levels of knowledge representation,  from narrative to semi-structured to structured to executable (described in detail below and in the section on [Levels of Knowledge Representation](documentation-approach-06-01-levels-of-knowledge-representation.html)). <!-- link to - 06.01 !-->
3. The translation between equivalent or iso-pragmatic knowledge formalisms (i.e., representations, expressions) such as is done with concept maps between terminologies or as will be discussed further in the “Methodology” section (see BPM+ -to- CPG)

<details open>

<summary>

FIG. 35. Knowledge Translation is the dynamic and iterative process of conveying the concepts, clinical logic, and intent of a source knowledge expression (e.g., narrative guideline) into an equivalent expression in another language or formalism- in the case of a narrative guideline into a computable or computer interpretable expression.  This may occur successively or progressively across the Levels of Representation (L1, L2, L3) or may be directly to an L3/L4 expression, typically using an authoring tool or domain-oriented language.

</summary>

<img src="assets/images/CPG-05-03.png" alt="image_tooltip" class="img-responsive img-rounded center-block"/>
</details>

The broader perspective on clinical knowledge translation across the entire knowledge ecosystem provides perspective on various sources of knowledge and the nature of their content and metadata.  In the classic approach to formalizing (components of) clinical practice guidelines, knowledge translation means the rendering of concepts, clinical logic, and intent of a narrative guideline into a computable formalism en masse after the narrative has been written, peer reviewed, and with the guideline development group often disbanded or moved on to another scope.  In this case, the translation between and across levels of knowledge representation is a well-established activity for the knowledge engineer as is translation between levels and formalisms. Knowledge engineers often use tooling and techniques to address these activities, and some even take into consideration their respective touch points across the broader knowledge ecosystem.

See the section on [Levels of Knowledge Representation](documentation-approach-06-01-levels-of-knowledge-representation.html) <!-- link to - 06.01 !--> for the approach and examples related to guidelines.  The details of translating between and across these levels is beyond the scope of this implementation guide.

<details open>

<summary>

FIG 36.  Knowledge Engineering in collaboration with the guideline development group (as described in the CDC’s “Integrated Process”) can proceed much earlier and be incremental and iterative, while leveraging direct interactions with the guideline development group to ensure that the translation into more formal, computeable expressions accurately convey the intent of the source knowledge.

</summary>

<img src="assets/images/CPG-05-01.png" alt="Knowledge Engineering" class="img-responsive img-rounded center-block"/>

</details>



There are ongoing efforts, tool development activities, and knowledge resources across the knowledge ecosystem that may provide additional benefits in efficiency, timeliness, and effort that may be taken into consideration when developing a CPG.  For instance, as described in the Guideline Development section on Analysis of Evidence, Recommendations, & Reporting [Analysis of Evidence](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html), <!-- link to - 04.04 !--> the EBM-on-FHIR Evidence and Evidence Variables can carry descriptions and explicit value sets and standard terminologies for interventions and study population cohorts (and even reference CQL expressions for study population cohorts).  Metadata on clinical research studies might afford the same.  These may not be exact matches to the guideline scope (eligibility criteria) or recommendation interventions (FHIR activities and requests) and applicability criteria (Conditions in respective ECA Rules), but they may provide a reasonable start- and far earlier and upstream in an “Integrated Approach”.  This early start on incremental pieces of the guideline is what is called “chunking” in Agile software processes described further in the section on The [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html). <!-- link to - 05.06 !-->

Furthermore, if started concurrently with or slightly lagging the guideline development group as suggested by the “Integrated Approach” from the CDC Adapting Clinical Guidelines for the Digital Age initiative, there are opportunities to begin the process of knowledge translation upfront in the guideline development process.  Identifying terminologies and data definitions (e.g., FHIR resources) as well as modeling and testing cohort definitions and applicability criteria, perhaps against Real-World Data (particularly given a concurrent development and implementation effort) can begin early in the CPD development process and even provide feedback to the guideline development team.

<details open>

<summary>

FIG 37.  Knowledge Engineering in collaboration with Local Informatics and EHR build teams (concurrent development and implementation) enables more data-driven knowledge engineering processes and helps to ensure that the computable expressions accurately and reliably convey the intent of the knowledge source to the target systems.

</summary>

<img src="assets/images/CPG-05-02.png" alt="KE and Local Informatics" class="img-responsive img-rounded center-block"/>

</details>


The approaches above including “chunking” of incremental parts of the guideline, and use of real-world data for design, specification, development, and validation (including one-time validation vs multi-phased, sequential validation), combined with the “Integrated Approach” and concurrent guideline development and implementation (discussed in the section on [Knowledge Implementation](documentation-approach-05-05-knowledge-implementation.html)) <!-- link to - 05.05 !--> are all part of the [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html). <!-- link to - 05.06 !-->

<details open>

<summary>

FIG 38. An Agile Approach to Knowledge Translation conveys the the concepts, clinical logic, and intent of a source knowledge expression (e.g., early guideline development artifacts) into an equivalent computable or computer interpretable expression.  The Agile approach to knowledge engineering and translation includes early, upfront engagement (with the guideline development group), iteration with incremental parts called “chunking” (data element and terminology definitions), rapid progression through the levels of representation for parts as well as aggregates (often using tooling), and where possible use of Real-World Data for design, specification, development, and one-time validation (vs logic, then data, then logic and data) as is described below.

</summary>

<img src="assets/images/CPG-KnowledgeEngineering-w-Agile.png" alt="Agile KE" class="img-responsive img-rounded center-block"/>

</details>
