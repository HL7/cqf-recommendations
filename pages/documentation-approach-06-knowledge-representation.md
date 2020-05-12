---
layout: default
title: Knowledge Representation
---

# Knowledge Representation

Knowledge representation is a surrogate, a substitute for the thing itself, that allows for reasoning (human and computational) about the “thing”.  A knowledge representation may be thought of on a continuum of successive degrees of readability, of ability to reason over, and formalism (e.g., to compute).


In this section we will cover:

*   “Levels of Representation” Framework (degrees of formalism/ computability)
*   Knowledge Assets (discrete representations with a purpose)
    *   Asset Metadata (information about the assets and knowledge base)
*   Knowledge Architecture (designing and defining the types and nature of assets)

**“Levels” of Knowledge Representation Framing:** <!-- Link to 06.01 !-->

## **Approach**

The approach taken by this implementation guide is to consider three broad challenges of clinical guideline implementation:

Note that the levels of knowledge representation are a continuum, with discrete categories introduced in the methodology to help inform discussions and communicate the concepts involved. Typically, the initial guideline content is published in narrative form (L1), but guidelines will often contain diagrams, charts, and other depictions that lean towards semi-structured (L2) representation.

This implementation guide utilizes a previously established clinical decision support (CDS) implementation model to move from a narrative clinical guideline to computable content. This model defines four (4) ‘levels’ of knowledge representation:

![alt_text](assets/images/knowledge-levels.png "image_tooltip")

FIG. 45. Knowledge Levels

As will be discussed further in the Agile CPG development approach (see section on Knowledge Engineering),<!-- Link to ... !--> these levels of representation may begin to overlap or blur and may not follow an entirely linear or successive progression for sequential development maturation.  Furthermore, tooling capabilities may afford translation across levels of representation and some levels may not be entirely expressed as the tools user interface and internal translation capabilities facilitate traversing these levels.  This will become more evident and described in more detail in the section on the Agile CPG development approach.

![alt_text](assets/images/CPG-05.06-01.png "image_tooltip")

FIG. 46. Levels of Representation in historical CDS sense and as may be adapted for Agile approaches.

**Knowledge Assets** <!-- Link to 06.01 !-->

Knowledge assets or artifacts as they are often referred to in FHIR, where an artifact is an instance of an asset.  Assets provide the ability to keep domain logic separated and distinct from other system logic in complex systems.  In this implementation guide we often refer to knowledge assets and knowledge artifacts interchangeably, though the distinction is very relevant the knowledge engineer.

*   Asset Metamodel- its structure- requirements and constraints
*   Content- what goes into the asset “container”
*   Metadata- for detailed section on Knowledge Assets
*   Composite and Derived- see section on Knowledge Assets

**Asset Metamodel**

The asset meta-model is a model that essentially describes what is required and/or allowed for a given class of knowledge assets.  In FHIR, the means of defining asset metamodels is the FHIR [StructureDefinition Resource](https://www.hl7.org/fhir/structuredefinition.html) (though it is also used for definitions of resources other than knowledge assets including all request (e.g. orders) and event (e.g. clinical data element) resources).  Furthermore, the [PlanDefinition Resource](https://www.hl7.org/fhir/plandefinition.html) (based on the HL-7 Knowledge Artifact Specification) is a base, or more generic, asset meta-model definition that may be profiled using StructureDefinition to further define additional asset metamodels.  The [Knowledge Artifact Representation in FHIR](https://www.hl7.org/fhir/clinicalreasoning-knowledge-artifact-representation.html), from the FHIR Clinical Reasoning Module, describes how the asset metamodels are realized as FHIR Profiles, but details of its applications to the CPG are described in further detail in this section of the implementation guide.

**Content**

Knowledge asset content refers to that which is contained within a specific knowledge asset.  This includes the scoped values or expressions for a specific asset’s metadata, attributes, and other formalisms used to express the knowledge contained within the asset.

**Asset Metadata**

Metadata is data that provides information about the knowledge asset.  This may include disk active metadata, structural metadata, administrative metadata, and situating or relational metadata.  The section on [Metadata](https://www.hl7.org/fhir/clinicalreasoning-knowledge-artifact-representation.html#metadata) of the Clinical Reasoning Module on Knowledge Artifact Representation provides a description of how metadata is routinely addressed in FHIR Knowledge Artifact Representations, but details of its applications to the CPG are described in further detail in this section of the implementation guide.

**Expressions (and/or Languages)**

An expression is a computable language for creating a computer-interpretable representation of specific knowledge.  In HL-7 and for the scope of this implementation guide, the expression language used (where it’s able to sufficiently express the intended logic behavior) is the Clinical Quality Language (CQL).

**Declarations**

A declaration is an expression of the structural elements of computable logic (e.g. values for attributes and parameters of a knowledge asset) that does not describe how to compute the logic, rather what the logic is.  These are often expressed as static values on the definitional assets as opposed to be buried deep in the expressions.  Expressions (or languages) can then evaluate and/or set these declarations.

**Composite Assets**

No single representation or expression can sufficiently and/or appropriately describe the nature and behavior of many domain concepts using computable formalism.  A CPGPathway, CPGStrategy, and CPGRecommendation are examples of composite assets in this implementation guide.

**Derived Assets**

Many knowledge assets may be derived from other knowledge assets (in part or in whole) as a means to reuse and repurpose the content of the knowledge asset from which they were derived.  For example, a CPGMetric may derive much of its content from a CPGRecommendation.  Derived knowledge assets may be wholly or partially derived from other assets.  

**Translation Within and Between Knowledge Representations**

Some knowledge assets may be represented using multiple alternative formalisms (expressions and declarations), yet express the same meaning and intent resulting in identical behavior when reasoning over identical inputs (data elements).  This equivalence in computational intent and behavior is known as isopragmatism.

**Curating and Managing Knowledge Assets in a Large Corpus (Knowledge Base)**

For more on Curating and Managing Knowledge Assets (and their respective knowledge architecture), see sections on Knowledge Representation in Knowledge Engineering, <!-- Link to 05.03 !--> and Leveraging a Knowledge Base (Knowledge Content Management System) in the Agile CPG Development Approach. <!-- Link to -05.06- Leveraging a Knowledge Base (Knowledge Content Management System) !-->

**Knowledge Architecture:** <!-- Link to 06.03 !-->

This section addresses the principles and best practices of knowledge architecture as well as the approach through which the CPG Knowledge Architecture was and continues to be developed including an overview of the Conceptual Perspective on the CPG Knowledge Architecture and the means through which it is realized and concretized in FHIR Profiles elsewhere in this implementation guide.  This implementation guide includes this approach to knowledge architecture as its through it, direct interactions with various stakeholders, and through real-world use cases that it will continue to evolve.

Covered in this section:

*   Key Challenges for Knowledge Architecture
*   Best Practices and Needs to be addressed
*   Key Principles and consideration
*   Knowledge Architecture Principles as applied to the CPG
*   Developing the CPG Knowledge Architecture
*   **Conceptual Perspective on the CPG Knowledge Architecture**
*   **Knowledge Architecture in FHIR for the CPG-IG**
*   Boundary Issues at the Separations of Concerns
*   Knowledge Architecture and Knowledge Content Management System

Knowledge architecture is the discipline of information system architecture (Industry, Enterprise, Solution) with a focus on the principles, best practices, means, and mechanisms by which the knowledge assets for the architecture's given domain are managed including: acquiring, representing, stored, and organized.  Knowledge architecture includes defining the types and scopes of the various assets, their metadata, as well as their relations.  In FHIR, this is done through profiling of definitional resources (e.g. plan definition, activity definition) using the StructureDefinition Resource to define metamodels and is enforced largely through a compliance framework and a common approach in tooling to creating these asset type profiles.
