**Methodology:** [Overview](methodology.html) · [Next: Represent](methodology-represent.html)

<a id="select"></a>

### Select Step {#select-step}

Select a bounded clinical decision and an achievable delivery approach. Assess value, effort, data availability, workflow fit, and maintenance needs with clinical, informatics, terminology, and representative implementation expertise.

| Question | Record |
| --- | --- |
| Who? | Patient/caregiver and professional personas; who reviews and acts |
| What? | Proposed clinical activity and relevant exceptions |
| When? | Clinical process, trigger, timing, and re-evaluation conditions |
| Where? | Care setting and target system capabilities |
| Why? | Source recommendation, evidence, ratings, and patient-specific supporting information |
{:.grid}

#### Personas

Describe roles before choosing codes. The [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system uses ISCO codes where available, WHO-derived categories prefixed with `W`, and IG-introduced categories prefixed with `C`. Patient and care-partner roles also need consideration.

Content conforming to this implementation guide MAY identify personas using the [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system.

#### Activities {#activities}

Use the [Activity Type](CodeSystem-cpg-activity-type-cs.html) code system to distinguish messaging, information collection, medication prescribing/dispensing/administration/documentation, immunization recommendations, service requests, enrollment, diagnosis proposals, detected issues, inferences, and flags. These distinctions determine which definition, request, and event profiles are appropriate; they do not imply that a recommended activity has occurred.

#### Processes {#processes}

Locate the recommendation in the [common care pathway](common-care-pathway.html), then document its actual local trigger and fulfillment needs. A conceptual care process is not a guarantee that an EHR offers a matching CDS Hooks event.

Content conforming to this implementation guide MAY identify processes using the [Common Processes](CodeSystem-cpg-common-process-cs.html) code system.

#### Settings

Describe where the activity occurs and which data and actions are available there.

Content conforming to this implementation guide MAY identify settings using the [HL7 V3 ServiceDeliveryLocationRoleType](https://hl7.org/fhir/R4/v3/ServiceDeliveryLocationRoleType/vs.html) value set.

#### Support

##### Guideline Supporting Information

Preserve the connection to the source recommendation and the rating system chosen by its authors. Evidence certainty, recommendation strength, and recommendation direction answer different questions; do not infer one from another.

Content conforming to this implementation guide SHALL provide references to supporting documentation for a recommendation in the form of a `relatedArtifact` element specifying a citation to the guideline.

Due to the variability in rating systems among guideline content, this implementation is not prescriptive about what grading system should be used, and the example bindings from the base specification apply. However, content conforming to this implementation guide SHALL identify a rating system and use that to provide rating information for recommendations and guidance, and provide documentation on what rating system was selected and how it is communicated through the content.

Content conforming to this implementation guide SHALL provide the strength of a recommendation using the [strengthOfRecommendation](http://hl7.org/fhir/R4/extension-cqf-strengthofrecommendation.html) extension.

Content conforming to this implementation guide SHALL provide the quality of evidence for a recommendation using the [qualityOfEvidence](http://hl7.org/fhir/R4/extension-cqf-qualityofevidence.html) extension.

Content conforming to this implementation guide MAY provide the directionality of a recommendation using the [directionOfRecommendation](StructureDefinition-cpg-directionOfRecommendation.html) extension.

[CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html) provides these rating extensions on `PlanDefinition.action`. The selected system and its communication remain documented even though this IG does not nominate one mandatory grading system. See [evidence and recommendation reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html).

##### Pertinent Information

Identify the patient-specific facts that explain applicability and support the proposed action. In R4, `PlanDefinition.action.input` and `.output` describe relevant data requirements. Missing data, an explicit negative, and a derived result retain different meanings.

**Methodology:** [Overview](methodology.html) · [Next: Represent](methodology-represent.html)
