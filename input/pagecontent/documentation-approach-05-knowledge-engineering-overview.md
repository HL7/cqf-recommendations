This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

Knowledge Engineering (KE) is the discipline and profession of developing explicit representations of advanced, domain-oriented logic in computer systems (i.e., knowledge-based systems) in order to simulate human decision-making and high-level cognitive tasks. A knowledge engineer supplies or develops some or all of the "knowledge," typically stored in some knowledge base(s), that is built into or used by computational systems.

This section covers:

*   An overview of knowledge engineering (this page)
*   The key phases of the knowledge engineering lifecycle:
    *   [Knowledge Acquisition](documentation-approach-05-01-knowledge-acquisition.html)
    *   [Knowledge Translation](documentation-approach-05-02-knowledge-translation.html)
    *   [Knowledge Representation and Expression](documentation-approach-05-03-knowledge-representation.html)
    *   [Knowledge Execution and Validation](documentation-approach-05-04-knowledge-execution-and-validation.html)
    *   [Knowledge Implementation](documentation-approach-05-05-knowledge-implementation.html)
*   [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html)

In healthcare, knowledge engineers are further specialized with expertise that may span from those with deep domain understanding including knowledge elicitation tools and techniques with some familiarity with various knowledge representation formalisms to deep understanding of knowledge formalism (i.e., representation/ expression) and knowledge architecture (i.e., knowledge processes and technology requirements for creating, capturing, organizing, accessing and using knowledge assets with varying degrees of familiarity with the domain.)

Furthermore, some knowledge engineers are very specialized in a particular [level of knowledge representation](documentation-approach-06-01-levels-of-knowledge-representation.html) or [tier of functionality](documentation-approach-07-tiers-of-functionality.html), such as data modelers, terminologists, ontologists, and expression language (e.g., CQL) authors. Likewise, some knowledge engineers are very specialized in a healthcare domain (e.g., cardiology), broad domain conceptualizations and their respective formalisms (e.g., pathways, measures), or specialized methodologies that play a critical role in the overall knowledge engineering process (e.g., knowledge synthesis).

There are a few, experienced informaticians and knowledge architects that play a broader systems engineering (i.e., designing, integrating, and managing complex systems over their life cycles) role on a knowledge engineering team to bring the information, assets, processes, and individual knowledge engineers together, in part, through shared knowledge architecture and use of standardized representations (e.g., composite assets, terminologies, standards) as well as tooling (e.g., editors, validation tooling).

<details open>

<summary>

Figure 1. The Knowledge Engineering Lifecycle, illustrating the general flow of activities and information.

</summary>

<img src="CPG-05-00.png" alt="Knowledge Engineering Lifecycle" class="img-responsive img-rounded center-block"/>

</details>

### Knowledge Engineering Lifecycle Process

The knowledge engineering lifecycle process describes a progressively interdependent series of activities or steps taken in order to transform domain knowledge or content into a more formal computable set of assets for consumption, execution, and/or delivery.  Furthermore, it describes many of the sub-activities and their work products as well as their interdependencies and generalized information flow. These activities, work products, and information have a generalized flow, however as discussed in the [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html), many of these activities and their derivatives run concurrently, have numerous touch points, and are done iteratively. These various flows occur between and across the various tiers of functionality (i.e., data, logic, user interface), levels of representation (i.e., narrative to computable), and knowledge formalisms (i.e., asset types, representations, and expressions) (see [Knowledge Representation](documentation-approach-02-04-knowledge-representation.html)). The phases are summarized below and described on their own pages. More detailed descriptions of these activities and their corresponding subactivies, methodologies, and tooling are available in various resources provided by respective communities of practice.

#### Knowledge Acquisition

Knowledge acquisition is the process of extracting, understanding, structuring, and organizing knowledge, often from human-readable sources, so that it can be translated into computer-interpretable formalisms. It includes knowledge elicitation, knowledge authoring, knowledge synthesis, knowledge discovery, and hybrid approaches, ideally in close collaboration with the guideline development group and with knowledge implementers. See [Knowledge Acquisition](documentation-approach-05-01-knowledge-acquisition.html).

#### Knowledge Translation

Knowledge translation conveys the concepts, logic, and intent of a source expression (for example, a narrative guideline) into an equivalent expression at another level of representation or in another formalism. See [Knowledge Translation](documentation-approach-05-02-knowledge-translation.html).

#### Knowledge Representation and Expression

Knowledge representation progressively structures and formalizes content for computer interpretation. From a knowledge engineering perspective this includes knowledge curation and knowledge management. See [Knowledge Representation and Expression](documentation-approach-05-03-knowledge-representation.html), and the [Knowledge Representation](documentation-approach-02-04-knowledge-representation.html) section for representation itself.

#### Knowledge Execution and Validation

Knowledge execution binds computable formalisms to data to generate new information and insights. Knowledge validation verifies that those formalisms perform faithfully, specifically, and unambiguously as intended, across tiers of functionality and levels of representation. See [Knowledge Execution and Validation](documentation-approach-05-04-knowledge-execution-and-validation.html).

#### Knowledge Implementation

Knowledge implementation localizes computable knowledge: binding data and terminology, inserting into workflow, adjusting local factors such as thresholds, and integrating with end-user systems. It benefits from collaboration between local practice governance, local informatics teams, and the CPG development team, including concurrent development and implementation. See [Knowledge Implementation](documentation-approach-05-05-knowledge-implementation.html).

#### Agile CPG Development Approach

The Agile CPG Development Approach adapts agile principles and practices (cross-functional teams, "chunking", test-driven knowledge engineering, rapid-cycle feedback, and use of a knowledge base) to develop and implement higher-quality CPGs more efficiently. See [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html).
