Extension: CPGEnrollIn
Id: cpg-enrollIn
Title: "CPG Enroll In Extension"
Description: "The URL of the PlanDefinition (Strategy or Pathway) in which the patient should be enrolled."
* insert DefinitionMetadata(cpg-enrollIn, StructureDefinition)
* insert ExtensionContext(ActivityDefinition)
* value[x] only canonical
  * ^type.targetProfile = $cpg-shareableplandefinition