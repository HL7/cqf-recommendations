---
layout: default
title: Documentation
---
# Overview

This implementation guide is a multi-stakeholder effort to use FHIR resources to build computable representations of the content of clinical care guidelines.

The process of guideline implementation is a significant challenge that is currently complicated by the lack of computable guideline content. Health systems and vendors implement evidence-based guidance, but almost always independently, leading to signficant duplicate effort, as well as inconsistent implementation. This implementation guide will build on experience from multiple guideline representation projects to establish the patterns and practices that support development and implementation of shareable computable guideline recommendations.

The initial ballot combines experience gained from multiple guideline representation projects, including Opioid Prescribing Support, Chronic Kidney Disease Management, Antenatal Care, HIV/HBV Screening, Prevention, and Treatment, and Immunization Decision Support.

# Approach

The approach taken by this implementation guide is to consider three broad aspects of the problem of clinical guideline implementation:

1. _Levels_ of knowledge representation
2. _Tiers_ of functionality
3. _Methods_ of implementation

## Levels of Knowledge Representation

This implementation guide utilizes an established clinical decision support (CDS) implementation model to move from a clinical guideline to computable content[^1]. This model defines four (4) levels of knowledge representation:

![Knowledge Levels](assets/images/knowledge-levels.png)

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
Level 2 (L2) is semi-structured, and generally consists of process and workflow diagrams, user stories, and personas that provide contextual and descriptive information about the steps involved in each recommendation of the guideline. This level generally includes:

* Personas - Who are the actors involved
* Concepts - What are the concepts involved
* User Stories - Functioanl descriptions of what happens from the perspective of each persona
* Processes - Diagrams depicting the processes involved
* Triggers - When do the processes happen (what are the _entry points_ for the processes)

The examples included in this implementation guide illustrate some of the types of content and approaches that can be used for this level.

### Structured
Level 3 (L3) is a computable representation of the content in the guideline and can be shared across health systems and implementation settings. This level is the primary focus of this implementation guide, and generally consists of:

* Complete value sets specified using standard terminologies
* Data element definitions describing the information involved
* Computable logic describing at least the inclusion/exclusion criteria
* Structured recommendations in the form of _event-condition-action_ rules

### Executable
Level 4 (L4) is executable software running in a clinical system. This is the local implementation and generally involves:

* Mapping of terms (value sets) to local terms
* Adjustment of workflow for site-specific factors
* Interpretation of computable content in the site-specific environment

## Tiers of Functionality

This implementation guide defines three (3) tiers of functionality, very roughly analogous to the tiers of architecture in software engineering:

<br/>
![Tiers of Functionality](assets/images/functionality-tiers.png)
<br/>
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

Expressing the forms description for a guideline provides a more complete description of the recommendations in a guideline; roughly, the presentation tier in a traditional 3-tier architecture.

## Methods of Implementation

This implementation guide defines three (3) methods of implementation that broadly describe different approaches to moving from the computable representation (L3) of guideline content to the executable representation (L4):

<br/>
![Methods of Implementation](assets/images/methods-of-implementation.png)
<br/>
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
Manual implementation involves ground-up development of clinical guideline functionality. In the absence of computable (L3) content, this is the only method. But note that even with L3 content, manual implementation can still be used, and the L3 content serves as well-specified requirements.

### Automatic
Automatic implementation involves programmatic translation of the L3 content into an appropriate L4 format. For example, a CQL query may be translated into an equivalent SQL query for execution, or a PlanDefinition may be transformed into a production rule. This approach involves potentially significant effort to build the appropriate tooling, but can pay dividends at scale once the tooling is in place.

### Native
Native implementation involves direct execution of L3 content. For example, a CQL query may be run directly on a native CQL engine. As with the automatic approach, this approach may involve significant initial tooling effort, but can dramatically reduce implementation time thereafter.

# Structuring Recommendations

To support computable representation of a recommendation, this implementation guide describes the following components of a recommendation:

* **Personas**: Who are the participants in the recommendation and what roles do they play?
* **Settings**: Where do the activities in the recommendation occur?
* **Processes**: What are the common processes involved in delivering guideline-based care?

By establishing common patterns for these aspects of recommendations, specific guidelines can better share common aspects such as workflow insertion points.

## Personas

The personas identified in this implementation guide are defined based on the WHO recommendation for [Classifying health workers](https://www.who.int/hrh/statistics/Health_workers_classification.pdf). This recommendation uses codes from the [International Standard Classification for Occupations](http://www.ilo.org/public/english/bureau/stat/isco/index.htm) but defines several additional categories of workers. In addition, the codes in that recommendation are focused on health workers, so codes for patient and care partner personas need to be considered as well.

Where a code from the ISCO exists, it is used. Where a WHO recommended health worker category is used, a code is constructed beginning with a W. Where a code is introduced by this implementation guide, it is constructed beginning with a C.

## Settings

For settings, this implementation guide uses the [HL7 V3 ServiceDeliveryLocationRoleType](http://hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html) value set, as it contains generally applicable, broadly standardized settings for use in the computable representation of guideline recommendations.

## Processes

The common processes identified in this implementation guide are based on surveys of guideline content, both in the examples used in this guide, as well as other guideline content from various clinical domains and guideline authors. The result is the definition of a _common pathway_ that is intended to be applicable in any guideline-based care content. 

# Using Terminology

# Inclusion/Exclusion Criteria

# Structuring Order Sets

# Evidence-Based Care Planning

## Using Goals

## Using Recommendations

## Using Order Sets

# Applying to Patients in Context

## References

[^1]: Adapted from: Boxwala, AA, et al. A multi-layered framework for disseminating knowledge for computer-based decision support. _J Am Med Inform Assoc_ 2011 (18) i132-i139