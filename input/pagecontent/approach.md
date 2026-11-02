The Approach section describes how guideline developers, knowledge engineers (and other informaticists), and implementers can work together across the lifecycle of a computable Clinical Practice Guideline (CPG). That lifecycle covers more than the guideline itself. It includes the activities that follow from it, such as clinical decision support, quality measurement, case reporting, and continuous improvement, all built on existing standards.

The approach has three parts:

1. A **conceptual knowledge architecture** that names the key domain concepts in clinical guidance and separates them into distinct concerns ([Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case), [Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-plan), and Workflow).
2. A **framework for describing knowledge artifacts**: how formal they are (levels of representation), what they do (tiers of functionality), and how they are implemented and integrated.
3. An **agile, cross-functional development process** in which guideline development, knowledge engineering, and implementation happen together and repeat, not one after another (see [Figure 1.1](index.html#introduction)).

This section is not a step-by-step guide to particular tools. It gives each contributor enough context to understand their role and how it connects to the others. It also explains the reasoning behind the [Profiles](profiles.html) and [Conformance](documentation-conformance.html) requirements in this guide. The [Methodology](methodology.html) page applies this approach in a concrete process (Select, Represent, Translate, Validate).

### Where to Start

| If you are a... | Start with |
|---|---|
| Guideline developer or clinical subject matter expert | [Guideline Development](#guideline-development), then [Conceptual Knowledge Architecture](#conceptual-knowledge-architecture) |
| Knowledge engineer | [Conceptual Knowledge Architecture](#conceptual-knowledge-architecture), [Knowledge Engineering](#knowledge-engineering), and [Knowledge Representation](#knowledge-representation) |
| Implementer (EHR, CDS, or analytics developer) | [Implementing Computable Knowledge](#implementing-computable-knowledge), then [Conceptual Knowledge Architecture](#conceptual-knowledge-architecture) |
{: .grid}

### Conceptual Knowledge Architecture

This section describes how guideline concepts become computable knowledge artifacts. Its core idea is to keep three concerns apart:

* **Case**: the patient's state at a point in time, meaning their clinical and physiological condition
* **Plan**: what to do for a patient in that state, based on clinical decision-making
* **Workflow**: how that care is delivered in a particular setting

Keeping these concerns apart lets each be expressed at the right level of detail, without mixing logic that belongs to different concerns or adding complexity that has no value. The separation is the basis for the CPG profiles, such as [CPGCase](StructureDefinition-cpg-case.html), [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html), and [CPGCarePlan](StructureDefinition-cpg-careplan.html).

* [Knowledge Architecture - Conceptual Perspective](documentation-approach-12-conceptual-knowledge-architecture.html)
    * [Separations of Concerns](documentation-approach-12-01-separations-of-concerns-in-the-cpg.html)
    * [Separating and Defining Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html)
    * [Plan](documentation-approach-12-03-cpg-plan.html)
    * [Case](documentation-approach-12-04-cpg-case.html)
    * [Care Plan](documentation-approach-12-05-cpg-careplan.html)
    * [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html)
    * [Guideline, Derivative, and Related Assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html)
    * [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html)

### Guideline Development

This section describes how guidelines are developed: who takes part, and the processes, tools, and frameworks they use. It explains where a computable CPG fits in the evidence ecosystem and in a Learning Health System. It also covers the computable artifacts that express a guideline and the artifacts derived from it (for example, quality measures), along with their value to stakeholders.

* [Guideline Development](documentation-approach-04-guideline-development.html)
    * [Guideline Development Frameworks](documentation-approach-04-02-guideline-development-frameworks.html)
    * [6S Evidence Pyramid and Learning Health Systems](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html)
    * [Analysis of Evidence, Recommendations, and Reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html)
    * [Development of Computable Clinical Guideline Artifacts](documentation-approach-04-05-computable-guideline-artifacts.html)

### Knowledge Engineering

This section describes the activities, techniques, and tools that knowledge engineers use to turn a guideline's narrative content into a faithful computable representation. That representation uses the [conceptual knowledge architecture](#conceptual-knowledge-architecture) and the [CPG profiles](profiles.html). The section also describes an agile approach to CPG development, in which an integrated, cross-functional team uses composite artifacts and test-driven techniques to produce high-quality artifacts quickly.

* [Knowledge Engineering Overview](documentation-approach-05-knowledge-engineering-overview.html)
    * [Knowledge Acquisition](documentation-approach-05-01-knowledge-acquisition.html)
    * [Knowledge Translation](documentation-approach-05-02-knowledge-translation.html)
    * [Knowledge Representation and Expression](documentation-approach-05-03-knowledge-representation.html)
    * [Knowledge Execution and Validation](documentation-approach-05-04-knowledge-execution-and-validation.html)
    * [Knowledge Implementation](documentation-approach-05-05-knowledge-implementation.html)
    * [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html)

### Knowledge Representation

This section describes the levels of representation a guideline passes through: narrative (L1), semi-structured (L2), structured and computable (L3), and executable in a real-world system (L4). It also describes the tiers of functionality (data, logic, and user interface) found at each level. Representations at the intermediate levels are useful work products in their own right. Clinical experts and knowledge engineers use them to check each other's understanding, and they give downstream implementers guidance. The section also covers knowledge assets, their metadata, and the architecture that defines how assets relate to one another.

* [Knowledge Representation Overview](documentation-approach-02-04-knowledge-representation.html)
    * [Levels of Knowledge Representation](documentation-approach-06-01-levels-of-knowledge-representation.html)
    * [Tiers of Functionality](documentation-approach-07-tiers-of-functionality.html)
    * [Levels of Representation by Tiers of Functionality](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html)
    * [Knowledge Assets](documentation-approach-06-02-knowledge-assets.html)
    * [Knowledge Architecture](documentation-approach-06-03-knowledge-architecture.html)

### Implementing Computable Knowledge

This section describes three ways to implement computable knowledge: as a specification that is built by hand, by automatic translation, or by native execution. It also describes how the resulting inferences can be integrated with clinical information systems, and how they can support guideline-informed workflows. The section closes with the levels of enablement and the conformance requirements for implementations of this guide.

* [Implementing Computable Knowledge](documentation-approach-02-05-knowledge-implementation.html)
    * [Methods of Implementation](documentation-approach-09-methods-of-implementation.html)
        * [Activity Flow](activityflow.html)
        * [Evidence-Based Care Planning](documentation-careplanning.html)
        * [Interactive Clinical Decision Support](interactive-cds.html)
    * [Mechanisms of Integration](documentation-approach-10-mechanisms-of-integration.html)
    * [Levels of Enablement](documentation-approach-03-conformance-levels.html)
    * [Conformance](documentation-conformance.html)
