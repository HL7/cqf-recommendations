Extension: CPGDirectionOfRecommendation
Id: cpg-directionOfRecommendation
Title: "CPG Direction Of Recommendation Extension"
Description: """
Specifies whether the recommendation is "for" or "against" a particular activity. For example, the recommendation to prescribe a particular medication, versus the recommendation not to perform a particular procedure.
"""
* insert StructureDefinitionMetadata(cpg-directionOfRecommendation)
* insert ExtensionContext(PlanDefinition.action)
* value[x] only CodeableConcept
* valueCodeableConcept from $cpg-recommendation-direction-valueset (required)
  * ^binding.description = "The direction of the recommendation, for or against"