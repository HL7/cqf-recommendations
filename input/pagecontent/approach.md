The Approach section of this implementation guide describes how guideline developers, informaticians (knowledge engineers and others), and implementers of computable representations of guidelines can collaborate across the lifecycle of guideline-directed care and related activities (clinical decision support, quality measurement, case reporting, continuous improvement), leveraging existing standards-based approaches.

Broadly, the approach taken by this implementation guide is to establish a conceptual architecture that identifies key domain concepts, artifacts, and patterns used in the description and delivery of clinical guidance, along with a framework for characterizing the nature and usage of artifacts within that conceptual architecture, ultimately advocating for an agile, cross-functional approach to guideline development.

The Approach documentation includes sections intended to describe the work effort and products of each of the key roles in the development lifecycle of a computable Clinical Practice Guideline (CPG). While the approach is not a step-by-step guide using specific tools and techniques, it does attempt to provide enough context to orient all contributors to the collective work to be undertaken, to provide a framework for undertaking such collaborative work, and to provide enough detail to inform the development, translation, and representation of a clinical guideline into the CPG knowledge architecture as characterized in machine-readable form by the CPG Profiles and conformance requirements defined in this implementation guide.

The Approach section is divided into five sections linked from this page. Brief descriptions of the contents of each section is presented below.

### Conceptual Knowledge Architecture

This section provides an overview and approach for how key domain concepts and their separations are expressed as a “domain model” and realized as computable knowledge assets or artifacts. It explains how expressions of patient disease (clinical and physiological) processes that describe the state of a patient at a given point in time (Case) are to be separated from expressions of clinician decision-making or care processes that describe what to do for a patient given their state (Plan) and how both are to be separated from expressions of how that care is to be delivered in a given setting at a given point in time (Workflow).

This section further describes how these separations interact with one another and provide the basis for the requirements of the explicit, computable knowledge assets/artifacts as expressed in the CPG Profiles. Understanding these separations, their characteristics and attributes, the nature of each type of process, and the relationship between them is essential for the knowledge engineer to comprehend and apply to each Clinical Practice Guideline in making it computable. Furthermore, these separations ensure appropriately sophisticated logic to fully express the domain and intent of the guideline without conflation of distinct logic and the correlated creation of value-diminishing complexity.

*   [Knowledge Architecture (Conceptual Perspective)](documentation-approach-12-conceptual-knowledge-architecture.html)
*   [Separation of Concerns in the CPG](documentation-approach-12-01-separations-of-concerns-in-the-cpg.html)
*   [Separating and Defining Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html)
*   [Plan](documentation-approach-12-03-cpg-plan.html)
*   [Case](documentation-approach-12-04-cpg-case.html)
*   [Care Plan](documentation-approach-12-05-cpg-careplan.html)
*   [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html)
*   [Derivative & Related Assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html)

### Guideline Development

This section provides a basic description of the Guideline Development Process, its participants, the processes, tools, and frameworks which they use. It further describes the role of the (computable) Clinical Practice Guideline (CPG) in the “Evidence Ecosystem” and Learning Health System. Lastly, it covers the various computable CPG artifacts that express the guideline and its derivatives (e.g., Measures) as well as their value to various stakeholders impacted by the development of computable Clinical Practice Guidelines (CPGs).

*   [Overview of the Guideline Development process](documentation-approach-04-guideline-development.html)
*   [Description of the Guideline Development Group (GDG) and Scoping](documentation-approach-04-01-guideline-development-group.html)
*   [Guideline Development Frameworks](documentation-approach-04-02-guideline-development-frameworks.html)
*   [6S Evidence Pyramid and Learning Health System(s)](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html)
*   [Analysis of Evidence, Recommendations, and Reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html)
*   [Development of Computable Clinical Guideline Artifacts](documentation-approach-04-05-computable-guideline-artifacts.html)

### Knowledge Engineering

This section provides a basic description of the Knowledge Engineering activities, processes, techniques, and tools that specialized informaticians known as knowledge engineers apply to translate the domain-oriented content of a Clinical Practice Guideline into its faithful computable representation using the Conceptual Knowledge Architecture described above and its concretion in the FHIR Profiles defined in another section. It presents the Agile Approach to CPG Development, which describes using Agile principles and techniques and characteristics of the computable CPG itself (e.g., composite artifacts) to more rapidly develop high quality computable artifacts as an integrated, cross-functional team.

*   [Knowledge Engineering Overview](documentation-approach-05-knowledge-engineering-overview.html)
*   Key Phases of the Knowledge Lifecycle
    *   [Knowledge Acquisition](documentation-approach-05-01-knowledge-acquisition.html)
    *   [Knowledge Translation](documentation-approach-05-02-knowledge-translation.html)
    *   [Knowledge Representation](documentation-approach-05-03-knowledge-representation.html)
    *   [Knowledge Execution and Validation](documentation-approach-05-04-knowledge-execution-and-validation.html)
    *   [Knowledge Implementation](documentation-approach-05-05-knowledge-implementation.html)
*   [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html)

### Knowledge Representation

This section provides a basic description of the knowledge assets and artifacts that express the Clinical Practice Guideline in various levels of representation from narrative content to semi-structured representations, to computer-interpretable artifacts, and as implemented in a real-world setting. Knowledge representation results from Knowledge Engineers translating the clinical intent of the narrative guideline into computer-interpretable representationsfaithful to intent of narrative guideline. Along the translation path, intermediate representations are created as work products to serve both as a validation between clinical domain SMEs and technical knowledge engineers, and these work products are used to inform downstream implementers. Lastly, this section describes the approach taken to design and defines the computable knowledge assets and their relationship(s) to one another.

*   [Knowledge Representation Overview](documentation-approach-02-04-knowledge-representation.html)
*   [Levels of Representation](documentation-approach-06-01-levels-of-knowledge-representation.html) (degrees of formalism/computability)
*   [Tiers of Functionality](documentation-approach-07-tiers-of-functionality.html)
*   [Levels of Representation by Tiers of Functionality](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html)
*   [Knowledge Assets](documentation-approach-06-02-knowledge-assets.html) (discrete representations with a purpose)
    *   Asset Metadata (information about the assets and knowledge base)
*   [Knowledge Architecture](documentation-approach-06-03-knowledge-architecture.html) (designing and defining the types and nature of assets)

### Implementing Computable Knowledge

This section provides an overview of the methods through which computable logic expressions may be implemented: as a specification, or translated computationally, or computed natively. It details the mechanisms by which the computed inferences and insights may be integrated into various clinical information systems; and how the various workflow enablements through which these computable expressions and their inferences may be manifested to enable guideline-informed clinical workflows and related healthcare activities. This section also provides an overview of the conformance required to ensure compliance with the standards-based specifications described in this Implementation Guide.

*   [Implementation Computable Knowledge Overview](documentation-approach-02-05-knowledge-implementation.html)
*   [Methods of Implementing Knowledge](documentation-approach-09-methods-of-implementation.html) (expressions and artifacts)
*   [Mechanisms of Integration with Clinical Information Systems](documentation-approach-10-mechanisms-of-integration.html)
*   [Levels of Workflow Enablement](documentation-approach-03-conformance-levels.html)
*   [Levels of Conformance](documentation-conformance.html)