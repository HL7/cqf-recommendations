---
layout: default
title: Approach
---

# Approach

The approach taken by this implementation guide is to consider three broad aspects of the problem of clinical guideline implementation:

1. _Levels_ of knowledge representation
2. _Tiers_ of functionality
3. _Methods_ of implementation

## Levels of Knowledge Representation

This implementation guide utilizes an established clinical decision support (CDS) implementation model to represent narrative and semi-structured clinical practice guidelines as fully structured, computable content.

<div>
  <img src="assets/images/knowledge-levels.png" alt="Knowledge Levels" width="750" height="325"/>
</div>

_Figure 2.1_

<!--
| Level | Name | Description |
| --- | --- | --- |
| L1 | Narrative | Published guideline for a specific disease that is written in the format of a peer-reviewed journal article |
| L2 | Semi-structured | Flow diagrams, decision trees, or other similar formats that describe recommendations for implementation |
| L3 | Structured | Standards-compliant specification encoding logic with data model(s), terminology/code sets, and value sets that is ready to be implemented |
| L4 | Executable | CDS that is implemented and used in a local execution environment (e.g. CDS that is live in an electronic health record (EHR) production system) |
-->

### Narrative
Level 1 (L1) is the clinical guideline, generally a narrative, often in Portable Document Format (PDF), and includes:

* Clinical Focus
* Scope
* Setting(s)
* Recommendations
* Who / what is included (inclusions)
* Who / what is excluded (exclusions)
* Policy considerations (e.g. privacy, access, regulations)

For example, one such guideline is the [Guideline for Prescribing Opioids for Chronic Pain](https://www.cdc.gov/mmwr/volumes/65/rr/rr6501e1.htm) (2016) published by the Centers for Disease Control (CDC).

### Semi-structured
Level 2 (L2) is semi-structured, and generally consists of explicit narrative data definitions (for inputs and inferences) of Clinical Concepts, Decision-flow, process, workflow diagrams, user stories, and personas that provide contextual and descriptive information about the steps involved in each recommendation of the guideline. This level generally includes:

* Personas - Who are the actors involved
* Concepts - What are the concepts involved including definitions/ descriptions
* User Stories - Functional descriptions of what happens from the perspective of each persona
* Processes - Diagrams depicting the processes involved
* Triggers - When do the processes happen (what are the _entry points_ for the processes)
* Interventions and associated actions (targeted to appropriate actor)
* Measures – key performance measures of Care Process as well as CDS impact (clinical end and intermediate outcomes, process measures [recommendation compliance], CDS performance measures)

The examples included in this implementation guide illustrate some of the types of content and approaches that can be used for this level.

### Structured
Level 3 (L3) is a computable representation of the content in the guideline and can be shared across health systems and implementation settings. This level is the primary focus of this implementation guide, and generally consists of:

* Complete value sets specified using standard terminologies
* Data element definitions describing the information involved
* Computable logic describing at least the inclusion/exclusion criteria
* Structured recommendations in the form of _event-condition-action_ rules
* Structured process definitions describing how the recommendations fit into a clinical workflow
* Structured form definitions providing a conceptual description of the user-interfaces involved

### Executable
Level 4 (L4) is executable software running in a clinical system. This is the local implementation and generally involves:

* Mapping of terms (value sets) to local terms
* Adjustment of workflow for site-specific factors
* Interpretation of computable content in the site-specific environment

## Tiers of Functionality

This implementation guide defines three (3) tiers of functionality, very roughly analogous to the tiers of architecture in software engineering:

<div>
  <img src="assets/images/functionality-tiers.png" alt="Tiers of Functionality" width="687" height="213"/>
</div>

_Figure 2.2_

<!--
| Tier | Name | Description |
| ---- | ---- | ---- |
| T1 | Data Elements | Formal description of the data involved in the recommendations |
| T2 | Clinical Logic | Computable representation of the logic used in the recommendations |
| T3 | Forms Description | Conceptual description of the collection instruments involved |
-->

To illustrate these tiers of functionality, consider the following excerpt from a recommendation statement in the CDC Opioid Prescribing Guideline:

**When prescribing opioids for chronic pain, providers should use urine drug testing before starting opioid therapy**

The data elements in this recommendation statement are the concepts involved, such as _medication prescriptions_, _opioids_, _chronic pain_, _urine drug testing_, and _opioid therapy_.

The clinical logic then describes the behaviors in terms of the data elements, such as _when prescribing opioids for chronic pain_, and _use urine drug testing before starting opioid therapy_.

And finally, the forms descriptions are the user interfaces involved in the implementation of the recommendation such as an order entry form.

Note carefully that these tiers each have different manifestations at different knowledge levels. At L3, these tiers are formal, but still conceptual representations of the content, whereas at L4, these tiers are concretely implemented in software systems. For example, a form at L3 is intentionally silent on the actual presentation layer details, whereas a form at L4 necessarily includes them.

### Data Elements
The Data Elements provide a computable representation of the concepts and information involved in the clinical guideline. The artifacts at this level are represented in FHIR using the following resources:

* StructureDefinition - Specifically, _profiles_ and _extensions_
* CodeSystem
* ValueSet

Expressing the data elements in a clinical guideline enables the description and exchange of the data involved in the guideline; roughly, the data tier in a traditional 3-tier architecture.

### Clinical Logic
The Clinical Logic in a computable guideline provides a formal representation of the behavior involved in the recommendation statements in terms of the Data Elements. This includes items such as inclusion/exclusion criteria, calculations such as risk scores, public health indicators, or average daily dosage, as well as rules that describe how and when a recommendation applies such as event-condition-action rules. The artifacts at this level are represented in FHIR using the following resources:

* Library
* ActivityDefinition
* PlanDefinition
* Measure

Expressing the clinical logic for a guideline enables application functionality; roughly, the application tier in a traditional 3-tier architecture.

### Forms Description
The Forms Description in a computable guideline describes user interactions and uses both the Data Elements and Clinical Logic. The artifacts at this level are represented in FHIR using the following resources:

* Questionnaire
* PlanDefinition

Expressing the forms description for a guideline provides a more complete description of the recommendations in a guideline; roughly, the presentation tier in a traditional 3-tier architecture. This level involves specifying a conceptual description of the processes involved, as well as the user-interfaces that capture the user's interactions with the system.

## Methods of Implementation

With these computable artifacts, there are three (3) methods of implementation that broadly describe different approaches to moving from the computable representation (L3) of guideline content to the executable representation (L4):

<div>
  <img src="assets/images/methods-of-implementation.png" alt="Methods of Implementation"/>
</div>

_Figure 2.3_

<!--
| Method | Name | Description |
| ---- | ---- | ---- |
| M1 | Manual | The content is used as a requirements specification, and development is done manually |
| M2 | Automatic | A translation layer is used to convert the content to a format suitable for the target environment |
| M3 | Native | The implementation can natively ingest and execute the L3 content |
-->

Note that there are numerous factors that must be considered as part of the local implementation of guideline content. The intent of the L3 artifacts that are the focus of this implementation guide is to ensure that these factors can be appropriately considered and addressed as part of implementation, while still providing useful content that can accelerate the process.

### Manual
Manual implementation involves development of clinical guideline functionality using the computer interpretable (L3) content as a set of rigorously specified requirements for the implementation. In the absence of (L3) content, this is the only method.

### Automatic
Automatic implementation involves programmatic translation of the L3 content into an appropriate L4 format. For example, a CQL query may be translated into an equivalent SQL query for execution, or a PlanDefinition may be transformed into a production rule, or the CQL may be interpreted directly into an execution environment. This approach involves potentially significant effort to build the appropriate tooling, but can pay dividends at scale once the tooling is in place.

### Native
Native implementation involves direct execution of L3 content. For example, a CQL query may be run directly on a native CQL engine. As with the automatic approach, this approach may involve significant initial tooling effort, but can dramatically reduce implementation time thereafter. In addition, there are open source reference implementations that support the use of the FHIR Clinical Reasoning module resources. In particular:

* CQL Engine - A java-based native engine for Clinical Quality Language
* HAPI FHIR - A java-based reference implementation of a FHIR Server and Client
* CQF Ruler - A java-based plug-in for the HAPI FHIR server that enables Clinical Reasoning use cases

## References

[^1]: Adapted from: Boxwala, AA, et al. A multi-layered framework for disseminating knowledge for computer-based decision support. _J Am Med Inform Assoc_ 2011 (18) i132-i139
