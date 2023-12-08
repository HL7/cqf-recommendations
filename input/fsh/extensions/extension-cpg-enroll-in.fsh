Extension: CPGEnrollIn
Id: cpg-enrollIn
Title: "CPG Enroll In Extension"
Description: "The URL of the PlanDefinition (Strategy or Pathway) in which the patient should be enrolled."
* insert StructureDefinitionMetadata(cpg-enrollIn)
* insert ExtensionContext(ActivityDefinition)
* value[x] only Canonical(CPGComputablePlanDefinition)