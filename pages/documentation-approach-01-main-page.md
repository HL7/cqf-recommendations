## [Approach](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-01-main-page.html) 


## Summary 

This Approach section of this implementation guide describes how guideline developers, informaticians (knowledge engineers and others), and implementers of computable representations of guidelines can collaborate across the lifecycle of guideline-directed care and related activities (clinical decision support, quality measurement, case reporting, continuous improvement), leveraging existing standards-based approaches.

Broadly, the approach taken by this implementation guide is to establish a conceptual architecture that identifies key domain concepts, artifacts, and patterns used in the description and delivery of clinical guidance, along with a framework for characterizing the nature and usage of artifacts within that conceptual architecture, ultimately advocating for an agile, cross-functional approach to guideline development.

The Approach documentation includes sections intended to describe the work effort and products of each of the key roles in the development lifecycle of a computable Clinical Practice Guideline (CPG). While the approach is not a step-by-step guide using specific tools and techniques, it does attempt to provide enough context to orient all contributors to the collective work to be undertaken, to provide a framework for undertaking such collaborative work, and to provide enough detail to inform the development, translation, and representation of a clinical guideline into the CPG knowledge architecture as characterized in machine-readable form by the CPG Profiles and conformance requirements defined in this implementation guide.

The Approach is further detailed in five sections linked from this page and brief descriptions of what is found in these sections is presented below. The sections are:


    2.01 [Conceptual Knowledge Architecture](http://build.fhir.org/ig/HL7/cqf-recommendations/approach.html#knowledge-architecture)


    2.02 [Guideline Development](http://build.fhir.org/ig/HL7/cqf-recommendations/approach.html#guideline-development)


    2.03 [Knowledge Engineering](http://build.fhir.org/ig/HL7/cqf-recommendations/approach.html#knowledge-engineering)


    2.04 [Knowledge Representation](http://build.fhir.org/ig/HL7/cqf-recommendations/approach.html#knowledge-representation)


    2.05 Implementing Computable Knowledge


## [Section 01: CPG Knowledge Architecture](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-conceptual-knowledge-architecture.html) (Conceptual Perspective)

_This section provides an overview and approach for how key domain concepts and their separations are expressed as a “domain model” and realized as computable knowledge assets or artifacts.  It explains how expressions of patient disease (clinical and physiological) processes that describe the state of a patient at a given point in time (Case) are to be separated from expressions of clinician decision-making or care processes that describe what to do for a patient given their state (Plan) and how both are to be separated from expressions of how that care is to be delivered in a given setting at a given point in time (Workflow).  _

_This section further describes how these separations interact with one another and provide the basis for the requirements of the explicit, computable knowledge assets/artifacts as expressed in the CPG Profiles.  Understanding these separations, their characteristics and attributes, the nature of each type of process, and the relationship between them is essential for the knowledge engineer to comprehend and apply to each Clinical Practice Guideline in making it computable.  Furthermore, these separations ensure appropriately sophisticated logic to fully express the domain and intent of the guideline without conflation of distinct logic and the correlated creation of value-diminishing complexity._



*   [Separation of Concerns in the CPG](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-01-separations-of-concerns-in-the-cpg.html)
*   [Separating and Defining Case, Plan, and Workflow](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html)
*   [Plan](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-03-cpg-plan.html)
*   [Case](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-04-cpg-case.html)
*   [Care Plan](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-05-cpg-careplan.html)
*   [Workflow and Common Pathway](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-06-cpg-common-pathway.html)
*   [Derivative & Related Assets](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-07-cpg-derivative-and-related-assets.html)


## [Section 02: Guideline Development](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-04-guideline-development.html)

This section provides a basic description of the Guideline Development Process, its participants, the processes, tools, and frameworks which they use. It further describes the role of the (computable) Clinical Practice Guideline (CPG) in the “Evidence Ecosystem” and Learning Health System.  Lastly, it covers the various computable CPG artifacts that express the guideline and its derivatives (e.g., Measures) as well as their value to various stakeholders impacted by the development of computable Clinical Practice Guidelines (CPGs).



*   **Overview of the Guideline Development process**
*   **[Description of the Guideline Development Group (GDG) and Scoping](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-04-01-guideline-development-group.html)**
*   **[Guideline Development Frameworks](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-04-02-guideline-development-frameworks.html)**
*   **[6S Evidence Pyramid and Learning Health System(s)](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html)**
*   **[Development of Computable Clinical Guideline Artifacts](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-04-05-computable-guideline-artifacts.html)**


## [Section 03: Knowledge Engineering](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-05-knowledge-engineering-overview.html)

This section provides a basic description of the Knowledge Engineering activities, processes, techniques, and tools that specialized informaticians known as knowledge engineers apply to translate the domain-oriented content of a Clinical Practice Guideline into its faithful computable representation using the Conceptual Knowledge Architecture described above and its concretion in the FHIR Profiles defined in another section.  It  presents the Agile Approach to CPG Development, which describes using Agile principles and techniques and characteristics of the computable CPG itself (e.g., composite artifacts) to more rapidly develop high quality computable artifacts as an integrated, cross-functional team.



*   **An Overview of Knowledge Engineering (KE)**
*   **Key Phases of the Knowledge Lifecycle**
    *   **[Knowledge Acquisition](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-05-01-knowledge-acquisition.html)**
    *   **[Knowledge Translation](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-05-02-knowledge-translation.html)**
    *   **[Knowledge Representation (as relates to KE)](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-05-03-knowledge-representation.html)**
    *   **[Knowledge Execution and Validation](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-05-04-knowledge-execution-and-validation.html)**
    *   **[Knowledge Implementation](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-05-05-knowledge-implementation.html)**
*   **[Introduce the Agile CPG Development Approach](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-05-06-agile-cpg-development-approach.html)**


## [Section 04: Knowledge Representation](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-06-knowledge-representation.html)

This section provides a basic description of the knowledge assets and artifacts that express the Clinical Practice Guideline in various levels of representation from narrative content to semi-structured representations, to computer-interpretable artifacts, and as implemented in a real-world setting.  Knowledge representation results from Knowledge Engineers  translating the clinical intent of the narrative guideline into computer-interpretable representationsfaithful to intent of narrative guideline. Along the translation path, intermediate representations are created as work products to serve both as a validation between clinical domain SMEs and technical knowledge engineers, and these work products are used to inform downstream implementers.  Lastly, this section describes the approach taken to design and defines the computable knowledge assets and their relationship(s) to one another.



*   [Levels of Representation Framework (degrees of formalism/ computability)](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-06-01-levels-of-knowledge-representation.html)
*   **[Tiers of Functionality](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-07-tiers-of-functionality.html)**
*   **[Levels of Representation by Tiers of Functionality](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html)**
*   [Knowledge Assets (discrete representations with a purpose)](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-06-02-knowledge-assets.html)
    *   Asset Metadata (information about the assets and knowledge base)
*   [Knowledge Architecture (designing and defining the types and nature of assets)](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-06-03-knowledge-architecture.html)


## [Section 05: Approaches to Implementing Computable Knowledge](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-09-methods-of-implementation.html)

This section provides an overview of the methods through which computable logic expressions may be implemented: as a specification, or translated computationally, or computed natively. It details the mechanisms by which the computed inferences and insights may be integrated into various clinical information systems; and how the various workflow enablements through which these computable expressions and their inferences may be manifested to enable guideline-informed clinical workflows and related healthcare activities.   This section also provides an overview of the conformance required to ensure compliance with the standards-based specifications described in this Implementation Guide.



*   **[Methods of Implementing Knowledge](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-09-methods-of-implementation.html)<span style="text-decoration:underline;"> Expressions and Artifacts</span>**
*   **Mechanisms of Integration with Clinical Information Systems**
*   **[Levels of Workflow Enablement](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-03-conformance-levels.html)**
*   **[Levels of Conformance](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-03-conformance-levels.html)**