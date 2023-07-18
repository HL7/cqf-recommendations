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
  * input
    * ^short = "Pertinent positives and negatives relevant to determining applicability"
    * ^definition = "For recommendation definitions, the input information for an action identifies pertinent positive and negative information relevant to determining the applicability of the recommendation."
    * ^comment = "Note that it may be possible to infer this information directly from the logic involved."
  * output
    * ^short = "Pertinent or relevant information that should be included with the recommendation"
    * ^definition = "For recommendation definitions, the output element is used to specify what information should be included as patient-specific supporting evidence for the recommendation."
    * ^comment = "If output elements are specified, implementations SHOULD support attaching content matching the output data requirements to the recommendation instances as appropriate for the recommendation resource type, typically a supportingInformation element."
* action
  * definition[x] only Canonical(ActivityDefinition)
  * definitionCanonical MS