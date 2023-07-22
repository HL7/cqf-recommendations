Extension: CPGCaseFeatureType
Id: cpg-caseFeatureType
Title: "CPG Case Feature Type Extension"
Description: "Describes whether the case feature is asserted or inferred."
* insert StructureDefinitionMetadata(cpg-caseFeatureType)
* value[x] only code
* valueCode from $cpg-casefeature-type-valueset (required)
  * ^binding.description = "Whether the case feature is asserted or inferred"