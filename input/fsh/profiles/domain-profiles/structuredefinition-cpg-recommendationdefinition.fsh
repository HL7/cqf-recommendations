Profile: CPGRecommendationDefinition
Parent: $cpg-computableplandefinition
Id: cpg-recommendationdefinition
Title: "CPG Recommendation Definition"
Description: "Profile of PlanDefinition as a Recommendation Definition for use with CPG Implementation Guide"
* insert StructureDefinitionMetadata(cpg-recommendationdefinition)
* type only CodeableConcept
* type = $plan-definition-type#eca-rule
* type MS
* action MS
* action.input ^short = "Pertinent positives and negatives relevant to determining applicability"
* action.input ^definition = "For recommendation definitions, the input information for an action identifies pertinent positive and negative information relevant to determining the applicability of the recommendation."
* action.input ^comment = "Note that it may be possible to infer this information directly from the logic involved."
* action.output ^short = "Pertinent or relevant information that should be included with the recommendation"
* action.output ^definition = "For recommendation definitions, the output element is used to specify what information should be included as patient-specific supporting evidence for the recommendation."
* action.output ^comment = "If output elements are specified, implementations SHOULD support attaching content matching the output data requirements to the recommendation instances as appropriate for the recommendation resource type, typically a supportingInformation element."
* action.definition[x] only canonical
* action.definition[x] MS
* action.definition[x] ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/ActivityDefinition"

// Mapping: rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGRecommendationDefinition
// Target: "http://hl7.org/v3"

// Mapping: workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGRecommendationDefinition
// Target: "http://hl7.org/fhir/workflow"

// Mapping: w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGRecommendationDefinition
// Target: "http://hl7.org/fhir/fivews"

// Mapping: objimpl
// Id: objimpl
// Title: "Object Implementation Information"
// Source: CPGRecommendationDefinition
// Target: "http://hl7.org/fhir/object-implementation"