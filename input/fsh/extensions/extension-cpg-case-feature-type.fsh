Extension: CPGCaseFeatureType
Id: cpg-caseFeatureType
Title: "CPG Case Feature Type Extension"
Description: "Describes whether the case feature is asserted or inferred."
* insert DefinitionMetadata(cpg-caseFeatureType, StructureDefinition)
* . 0..1
* value[x] only code
* value[x] from $cpg-casefeature-type-valueset (required)
  * ^binding.description = "Whether the case feature is asserted or inferred"