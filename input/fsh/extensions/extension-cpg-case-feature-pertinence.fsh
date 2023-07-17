Extension: CPGCaseFeaturePertinence
Id: cpg-caseFeaturePertinence
Title: "CPG Case Feature Pertinence Extension"
Description: "Describes the pertinence of the case feature."
* insert DefinitionMetadata(cpg-caseFeaturePertinence, StructureDefinition)
* . 0..1
* value[x] only code
* value[x] from $cpg-casefeature-pertinence-valueset (required)
  * ^binding.description = "Describes the pertinence of a case feature"