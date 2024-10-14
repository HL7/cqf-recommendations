Extension: CPGRating
Id: cpg-rating
Title: "CPG Rating Extension"
Description: "A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing."
* insert StructureDefinitionMetadata(cpg-rating)
* insert ExtensionContext(Resource)
* insert ExtensionContext(PlanDefinition.action)
* value[x] only Quantity or Range or Ratio