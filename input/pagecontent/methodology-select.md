<a id="select"></a>

### Select Step {#select-step}

Start with the authoritative guideline and its version. Identify a specific recommendation, the clinical decision it informs, and where it could be used. The guideline group owns the interpretation and clinical scope. Representatives from the intended care setting assess whether the necessary data and workflow support are available. The content steward weighs the expected value, implementation effort, and maintenance burden before committing to the scope.

| Scope question | What to capture |
| --- | --- |
| [Who is involved?](#personas) | The patient population and the people who receive, review, or act on the recommendation. |
| [What is proposed?](#activities) | The clinical activity and any exceptions identified by the guideline group. |
| [When does it matter?](#processes) | The point in care when the decision arises and when it may need reevaluation. |
| [Where will it be used?](#settings) | The care setting and available data, actions, and system capabilities. |
| [What supports the recommendation?](#support) | The guideline citation, rationale and ratings, and the patient facts that can explain a proposed action. |
{:.grid}

#### Identify who receives and acts {#personas}

Describe what each person does before choosing role codes. Identify who sees the recommendation, who can act on it, and who follows up. Include patients and care partners when they receive information, provide it, or take part in the decision. The [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system uses ISCO codes where available, WHO-derived categories prefixed with `W`, and IG-introduced categories prefixed with `C`.

Content conforming to this implementation guide MAY identify personas using the [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system.

#### Identify the proposed activity {#activities}

Describe the intended action and what would count as carrying it out. For example, ordering, dispensing, administering, and documenting medication are distinct activities. The [Activity Type](CodeSystem-cpg-activity-type-cs.html) code system also distinguishes messaging, information collection, immunization recommendations, service requests, enrollment, diagnosis proposals, detected issues, inferences, and flags. These distinctions help the artifact author choose the appropriate [definition, request, and event profiles](methodology-translate.html#activities-1).

#### Locate the decision in care {#processes}

Use the [common care pathway](common-care-pathway.html) to identify where the recommendation fits. Then ask the local workflow and integration owners what can trigger evaluation, whether the necessary information is available at that point, and how the proposed action would be fulfilled. Record the clinical timing alongside the actual system event. Some clinical decision points have no corresponding CDS Hooks event in a given system.

Content conforming to this implementation guide MAY identify processes using the [Common Processes](CodeSystem-cpg-common-process-cs.html) code system.

#### Check what the setting supports {#settings}

Record where the activity takes place and which systems and people can support it. If a key fact or action is unavailable, document the limitation and take any change to the intended scope back to the guideline group and local owner.

Content conforming to this implementation guide MAY identify settings using the [HL7 V3 ServiceDeliveryLocationRoleType](https://hl7.org/fhir/R4/v3/ServiceDeliveryLocationRoleType/vs.html) value set.

#### Record why the recommendation applies {#support}

##### Guideline supporting information {#guideline-supporting-information}

Capture the source version, citation, and the rating system used by the guideline authors. Ask clinical and evidence reviewers to confirm which ratings belong to the selected recommendation. Record evidence certainty, recommendation strength, and recommendation direction separately.

§rec-1^^recommendation:Content conforming to this implementation guide **SHALL** provide references to supporting documentation for a recommendation in the form of a `relatedArtifact` element specifying a citation to the guideline.§

Due to the variability in rating systems among guideline content, this implementation is not prescriptive about what grading system should be used, and the example bindings from the base specification apply. However, §rec-2^^recommendation,documentation:content conforming to this implementation guide **SHALL** identify a rating system and use that to provide rating information for recommendations and guidance, and provide documentation on what rating system was selected and how it is communicated through the content.§

§rec-3^^recommendation:Content conforming to this implementation guide **SHALL** provide the strength of a recommendation using the [strengthOfRecommendation](http://hl7.org/fhir/R4/extension-cqf-strengthofrecommendation.html) extension.§

§rec-4^^recommendation:Content conforming to this implementation guide **SHALL** provide the quality of evidence for a recommendation using the [qualityOfEvidence](http://hl7.org/fhir/R4/extension-cqf-qualityofevidence.html) extension.§

Content conforming to this implementation guide MAY provide the directionality of a recommendation using the [directionOfRecommendation](StructureDefinition-cpg-directionOfRecommendation.html) extension.

[CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html) provides these rating extensions on `PlanDefinition.action`. See how the guideline group's judgments carry into the computable specification. [Evidence and recommendation reporting](approach-development.html#evidence-and-recommendations)

##### Pertinent information {#pertinent-information}

Identify the patient facts that explain why a recommendation applies or support the proposed action. In R4, `PlanDefinition.action.input` and `.output` describe relevant data requirements. Capture when a fact is needed and whether it is recorded or derived. In the next step, reviewers can use these facts to specify how the decision handles missing data, explicit negative findings, and derived results.

#### Hand off the selected scope {#selected-scope}

Take the source passage, selected decision, proposed activity, intended audience and setting, and delivery assumptions into Represent. Record any unresolved clinical or workflow question with the person responsible for deciding it.

{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" next="methodology-represent.html" next_title="Represent" %}
