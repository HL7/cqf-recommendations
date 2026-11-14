This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

### Approach

Note that the levels of knowledge representation are a continuum, with discrete categories introduced in the methodology to help inform discussions and communicate the concepts involved. Typically, the initial guideline content is published in narrative form (L1), but guidelines will often contain diagrams, charts, and other depictions that lean towards semi-structured (L2) representation.

This implementation guide utilizes a previously established clinical decision support (CDS) implementation model to move from a narrative clinical guideline to computable content. This model defines four (4) ‘levels’ of knowledge representation:

<div class="modified-content" markdown="1">

{% include cpg-diagram.html src="cpg-model-levels.svg" ratio="1200 / 686" alt="Four ordered rows distinguish L1 narrative, L2 semi-structured, L3 structured, and L4 executable representations. Overlapping bars show concurrent work and review across levels." caption="Figure 1. Knowledge Levels with Examples (Michaels, U.S. Centers for Disease Control and Prevention, 2019; Adapted from: Boxwala, AA, et al.. A multi-layered framework for disseminating knowledge for computer-based decision support. J Am Med Inform Assoc 2011(18) i132-i139). An ambiguity found during local testing can send clinical and technical reviewers back to the source recommendation. Carry their agreed interpretation through the affected definitions and tests." %}

</div>


### Narrative

Level 1 (L1) is the clinical guideline in narrative form often in Portable Document Format (PDF), and includes:

*   Clinical Focus
*   Scope (the population, interventions, comparators, outcomes, timing, and setting, known as PICOTS)
*   Recommendations (at least in part from PICOTS interventions)
*   Strength of [Recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation) and Quality of [Evidence](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-evidence)
*   Evidence references (including analysis and evidence summaries)
*   Evidence Summaries
*   Tables and FIgures (including drafts thereof)
*   Who / what is included (inclusions) for each Recommendation or combinations thereof
*   Who / what is excluded (exclusions) for each Recommendation or combinations thereof
*   Case Examples (examples of how patient archetypes might traverse the guideline)
*   Glossaries- of terms with their descriptions and definitions
*   Indicator descriptions
*   Policy considerations (e.g., privacy, access, regulations)
*   For example, one such guideline is the Guideline for Prescribing Opioids for Chronic Pain (2016) published by the Centers for Disease Control and Prevention (CDC).


### Semi-structured

Level 2 (L2) is semi-structured and generally consists of process and workflow diagrams, user stories, and personas that provide contextual and descriptive information about the steps involved in each recommendation of the guideline. This level generally includes:


*   Concepts - What are the formal domain concepts involved
*   Concept Maps of all the concepts and their relationships as scoped to the guideline
*   Visualizations of Processes - (Flow) Diagrams depicting the order of actions and decisions involved, often in parallel to the domain concepts or data elements used as well as workflow and/or potential set of workflow interventions to be employed
*   Flow diagrams of information, decisions, and processes
*   Decision Trees and Table
*   Personas - Who are the actors involved
*   User Stories - Functional descriptions of what happens from the perspective of each persona
*   Wireframes of potential user interactions
*   Triggers - When do the processes happen (i.e., what are the entry points for the processes)
*   Terminologies and Data Dictionaries
*   Formal definitions for Indicators (e.g., using pseudocode)
*   The examples included in this implementation guide illustrate some of the types of content and approaches that can be used for L2.


### Structured

Level 3 (L3) is a computable representation of the content in the guideline and can be shared across health systems and implementation settings. This level is the primary focus of this implementation guide and as such throughout much of this implementation guide when we refer to formalized knowledge assets (or formalisms and expressions) we are almost exclusively referring to this level of representation (computable).  They generally consists of:

*   Complete value sets specified using standard terminologies (coded concepts, code systems, and intentional and extensional value sets)
*   Data Requirements
*   Data element definitions describing the information involved
    *   Including inferred data elements
*   Computable logic describing, at minimum, the inclusion/exclusion criteria
*   Resource definitions with respective terminologies including for the recommended activity itself (e.g. MedicationRequest + Value Set for a recommended medication)
*   Structured recommendations with decision logic (in the form of event-condition-action (ECA) rules)
*   Structured process definitions describing how the recommendations fit into a clinical workflow (inclusive of decision and orchestration logic such as in [Strategies](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy))
*   Structured form definitions providing a conceptual description of the user-interactions involved (e.g. Adaptive Forms)
*   All the CPG definitional resources (e.g. Pathway, Strategies, Recommendations, [Case Features](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature), etc.) are Level 3 representations.

### Executable

Level 4 (L4) is executable software running in a clinical system (e.g., EHR, registry, exchange, quality measurement module). This is the local implementation and generally involves:

*   Mapping of terms (value sets) to local terms
*   Adjustment of workflow for site-specific factors
*   Interpretation of computable content in the site-specific environment (see [Methods of Implementation](documentation-approach-09-methods-of-implementation.html))


As will be discussed further in the Agile CPG development approach (see [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html)), these levels of representation may begin to overlap or blur and may not follow an entirely linear or successive progression for sequential development maturation.  Furthermore, tooling capabilities may afford translation across levels of representation and some levels may not be entirely expressed as the tools user interface and internal translation capabilities facilitate traversing these levels.  This will become more evident and described in more detail in the section on the Agile CPG development approach.

<details open>

<summary>

Figure 2. Levels of Representation in historical CDS sense and as may be adapted for Agile approaches.

</summary>

<img src="CPG-05.06-01.png" alt="Levels adapted for Agile" class="img-responsive img-rounded center-block"/>

</details>


