---
layout: default
title: Tiers of Functionality
---
# Tiers of Functionality

This implementation guide defines three (3) tiers of functionality, very roughly analogous to the tiers of architecture in software engineering:



*   **Data**  (Data Elements)
*   **Logic**  (Clinical Logic)
*   **Forms**  (UI Description and Behavior)

<img src="assets/images/functionality-tiers.png" alt="image_tooltip" width="750" hight="237"/>



FIG. 57. Tiers of Functionality

To illustrate these tiers of functionality, consider the following excerpt from a recommendation statement in the CDC Opioid Prescribing Guideline:

**_When prescribing opioids for chronic pain, providers should use urine drug testing before starting opioid therapy_**

The data elements in this recommendation statement are the concepts involved, such as medication prescriptions, opioids, chronic pain, urine drug testing, and opioid therapy.

The clinical logic then describes the behaviors in terms of the data elements, such as “when prescribing opioids for chronic pain”, and “use urine drug testing before starting opioid therapy.”

And finally, the forms descriptions are the user interfaces involved in the implementation of the recommendation, such as an order entry form.

Note that these tiers each have different manifestations at different knowledge levels. At L3, these tiers are formal but still conceptual representations of the content, whereas at L4, these tiers are concretely implemented in software systems. For example, a form at L3 is intentionally silent on the actual presentation layer details, whereas a form at L4 necessarily includes them.  See section on Levels of Representation by Tiers of Functionality



1. Data Elements

The data elements provide a computable representation of the concepts and information within  the clinical guideline. The artifacts at this level are represented in FHIR using the following resources:



*   StructureDefinition - Specifically, profiles and extensions
*   CodeSystem
*   ValueSet

Expressing the data elements in a clinical guideline enables the description and exchange of the within the guideline; roughly, the data tier in a traditional 3-tier architecture.  While much logic at the data level is abstracted away behind interfaces (a key benefit of FHIR), one much be careful not to conflate data transformation and clinical business logic, particularly in the case of inferred and/or enriched data elements (e.g. inferred CPGCaseFeatures).  The inference belongs in the Clinical Logic layer.



2. Clinical Logic

The clinical logic in a computable guideline provides a formal representation of the behavior involved in the recommendation statements in terms of the data elements. This includes inclusion/exclusion criteria, calculations such as risk scores, public health indicators, or average daily dosage, as well as rules that describe how and when a recommendation applies such as event-condition-action rules. The artifacts at this level are represented in FHIR using the following resources:



*   Library
*   ActivityDefinition
*   PlanDefinition
*   Measure

Expressing the clinical logic for a guideline enables application functionality; roughly, the application tier in a traditional 3-tier architecture.

Note to the Knowledge Engineer not to conflate Clinical (business) Logic with either Data (transformation) logic or Forms (user interaction) logic.  Business logic should only be about describing the things that occur in the domain- describing patients (CPGCaseFeatures), formalizing clinician decision logic (CPGRecommendations), orchestrating either of the two, etc. (see Table above).  These are critical separations of concerns to keep in mind as their conflation can cause significant challenges, particularly in a knowledge-based approach- though all Tiers can take advantage of knowledge-based approaches.



3. Forms Description

The forms description in a computable guideline describes user interactions and uses both the data elements and clinical logic. The artifacts at this level are represented in FHIR using the following resources:



*   Questionnaire
*   PlanDefinition

This level involves specifying a conceptual description of the processes involved, as well as the user-interfaces that capture the user’s interactions with the system. Expressing the forms description for a guideline provides a more complete description of the recommendations in a guideline; roughly, the presentation tier in a traditional 3-tier architecture.  Note to the Knowledge Engineer not to conflate Forms logic with Business Logic.  Forms logic should only be about the behavior of the user interaction, though it can and almost always does reuse Business Logic.  This is a critical separation of concerns to keep in mind.
