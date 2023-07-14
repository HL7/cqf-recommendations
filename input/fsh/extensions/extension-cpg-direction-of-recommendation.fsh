Extension: CPGDirectionOfRecommendation
Id: cpg-directionOfRecommendation
Title: "CPG Direction Of Recommendation"
Description: "Specifies whether the recommendation is \"for\" or \"against\" a particular activity. For example, the recommendation to prescribe a particular medication, versus the recommendation not to perform a particular procedure."
* insert DefinitionMetadata(cpg-directionOfRecommendation, StructureDefinition)
* ^date = "2019-06-06"
* ^purpose = "Need to be able to clearly identify whether a recommendation is positive or negative."
* ^context.type = #element
* ^context.expression = "PlanDefinition.action"
* . 0..1
  * ^short = "Recommendation for or against?"
  * ^definition = "Specifies whether the recommendation is \"for\" or \"against\" a particular activity. For example, the recommendation to prescribe a particular medication, versus the recommendation not to perform a particular procedure."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-directionOfRecommendation" (exactly)
* value[x] only CodeableConcept
* value[x] from $cpg-recommendation-direction-valueset (required)
  * ^binding.description = "The direction of the recommendation, for or against"