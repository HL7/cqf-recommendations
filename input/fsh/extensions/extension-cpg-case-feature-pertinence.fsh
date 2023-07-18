Extension: CPGCaseFeaturePertinence
Id: cpg-caseFeaturePertinence
Title: "CPG Case Feature Pertinence Extension"
Description: "Describes the pertinence of the case feature."
* insert StructureDefinitionMetadata(cpg-caseFeaturePertinence)
* value[x] only code
* valueCode from $cpg-casefeature-pertinence-valueset (required)
  * ^binding.description = "Describes the pertinence of a case feature"