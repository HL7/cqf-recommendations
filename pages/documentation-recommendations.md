---
layout: default
title: Recommendations
---

# Structuring Recommendations

This guidance builds on the content defined in the base FHIR Clinical Reasoning module. Specifically, the [Representing Knowledge Artifacts](http://hl7.org/fhir/R4/clinicalreasoning-knowledge-artifact-representation.html) topic.

This guide considers two aspects of structuring a clinical practice guideline recommendation:

1. The _definition_ of the recommendation, independent of any particular patient or setting in which it applies
2. The _instance_ of the recommendation, as applied to a particular patient at a specific time

## Recommendation Definitions

In addition to the components identified for knowledge artifacts, to support computable representation of a recommendation definition, this implementation guide describes the following components of a recommendation:

* **Personas**: Who are the participants in the recommendation and what roles do they play?
* **Activities**: What needs to happen?
* **Processes**: When does it happen?
* **Settings**: Where do the activities in the recommendation occur?
* **Support**: Why should it happen?

By establishing common patterns for these aspects of recommendations, specific guidelines can better share common aspects such as workflow insertion points.

### Personas

The personas identified in this implementation guide are defined based on the WHO recommendation for [Classifying health workers](https://www.who.int/hrh/statistics/Health_workers_classification.pdf). This recommendation uses codes from the [International Standard Classification for Occupations](http://www.ilo.org/public/english/bureau/stat/isco/index.htm) but defines several additional categories of workers. In addition, the codes in that recommendation are focused on health workers, so codes for patient and care partner personas need to be considered as well.

Where a code from the ISCO exists, it is used. Where a WHO recommended health worker category is used, a code is constructed beginning with a `W`. Where a code is introduced by this implementation guide, it is constructed beginning with a `C`.

Content conforming to this implementation guide SHALL identify personas using the [Common Personas](CodeSystem-cpg-common-persona.html) code system.

### Activities

Content conforming to this implementation guide SHALL use the [CPG Activity Definition](StructureDefinition-cpg-activitydefinition.html) profile when specifying activity definitions.

### Processes

The common processes identified in this implementation guide are based on surveys of guideline content, both in the examples used in this guide, as well as other guideline content from various clinical domains and guideline authors. The result is the definition of a [_common pathway_](common-pathway.html) that is intended to be applicable in any guideline-based care content.

Using this common pathway, content can indicate where in the overall process of care delivery a given recommendation or intervention should occur.

Content conforming to this implementation guide SHALL identify processes using the [Common Processes](CodeSystem-cpg-common-process.html) code system.

### Settings

For settings, this implementation guide uses the [HL7 V3 ServiceDeliveryLocationRoleType](http://hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html) value set, as it contains generally applicable, broadly standardized settings for use in the computable representation of guideline recommendations.

Content conforming to this implementation guide SHALL identify settings using the [HL7 V3 ServiceDeliveryLocationRoleType](http://hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html) value set.

### Support

Supporting documentation for a recommendation is critical to ensuring the definition can be traced back to reliable and credible sources. The [Supporting Documentation](http://hl7.org/fhir/R4/clinicalreasoning-topics-supporting-documentation.html) topic in the base FHIR specification describes the basic mechanism for achieving this with the Clinical Reasoning resources.

Content conforming to this implementation guide SHALL provide references to supporting documentation for a recommendation in the form of a `relatedArtifact` element specifying a citation to the guideline.

Content conforming to this implementation guide SHALL provide the strength of a recommendation using the [strengthOfRecommendation](http://hl7.org/fhir/R4/extension-cqf-strengthofrecommendation.html) extension.

Content conforming to this implementation guide SHALL provide the quality of evidence for a recommendation using the [qualityOfEvidence](http://hl7.org/fhir/R4/extension-cqf-qualityofevidence.html) extension.

### Representing Recommendations

This implementation guide defines 3 broad categories of artifacts related to defining recommendations:

1. **Clinical Protocols**: Sequences of steps to be taken over time
2. **Workflow Definitions**: Specific series of actions taken at a specific time
3. **Recommendations**: An event-condition-action rule that captures a specific recommendation

In the simplest case, the recommendations in a guideline can all be represented as event-condition-action rules associated with well-known triggering points in an existing clinical workflow (e.g. when prescribing a medication).

However, guideline-based care often involves tracking changes over time, as well as modeling specific processes that should occur. The PlanDefinition supports each of these use cases, and this implementation guide defines the [cpg-plandefinition](StructureDefinition-cpg-plandefinition.html) profile to define additional constraints and requirements for building computable guideline content, as well as three specific profiles derived from cpg-palndefinition, one for each of these three cases.

#### Clinical Protocols

Content conforming to this implementation guide SHALL use the [cpg-protocoldefinition](StructureDefinition-cpg-protocoldefinition.html) profile to represent clinical protocol definitions.

#### Workflow Definitions

Readers of this implementation guide should refer to the [Workflow](http://hl7.org/fhir/R4/workflow.html) topic in the base FHIR specification. This implementation builds on the guidance there, providing some specific patterns for describing common activities as part of workflows. Specifically:

* **Form Filling**: A specific user interacting with a specific form, as specified by a Questionnaire
* **Service Calls**: The system calling a specific service, as specified by a CapabilityStatement and an operation URI

Content conforming to this implementation guide SHALL use the [cpg-workflowdefinition](StructureDefinition-cpg-workflowdefinition.html) profile to represent workflow definitions.

#### Recommendations

Content conforming to this implementation guide SHALL use the [cpg-recommendationdefinition](StructureDefinition-cpg-recommendationdefinition.html) profile to represent recommendation definitions.

## Recommendation Instances

Across guideline-based care, there are many different types of recommendations that may be given, such as the recommendation to conduct a specific test, to prescribe a specific medication, recommendation for a particular procedure, and many others. In general though, these recommendations should provide at least:

* **Support**: A link back to the guideline, and ultimately the evidence, that supports the recommendation
* **Strength**: The _strength_ of the recommendation
* **Evidence Quality**: The _quality_ of the evidence supporting the recommendation

Within FHIR, a recommendation is typically represented using a [Request](http://hl7.org/fhir/request.html) patterned resource (such as ServiceRequest or MedicationRequest) with an [intent](http://hl7.org/fhir/codesystem-request-intent.html#request-intent-proposal) status. Note that some implementations may go further and use the `plan` or even `order` statuses of a request, depending on the capabilities of the systems involved.

This implementation guide defines profiles for each of the request resources to be used as recommendation instances:

* [Appointment](StructureDefinition-cpg-appointment.html)
* [CommunicationRequest](StructureDefinition-cpg-communicationrequest.html)
* [DeviceRequest](StructureDefinition-cpg-devicerequest.html)
* [ImmunizationRecommendation](StructureDefinition-cpg-immunizationrecommendation.html)
* [MedicationRequest](StructureDefinition-cpg-medicationrequest.html)
* [NutritionOrder](StructureDefinition-cpg-nutritionorder.html)
* [ServiceRequest](StructureDefinition-cpg-servicerequest.html)

Specific guideline content will typically define derived profiles for recommendation instances establishing additional constraints.

