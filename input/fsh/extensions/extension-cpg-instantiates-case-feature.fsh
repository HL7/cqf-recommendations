Extension: CPGInstantiatesCaseFeature
Id: cpg-instantiatesCaseFeature
Title: "CPG Instantiates Case Feature Extension"
Description: "References the definition for this case feature."
* insert DefinitionMetadata(cpg-instantiatesCaseFeature, StructureDefinition)
* . 0..1
* value[x] only canonical
  * ^type.targetProfile = $structureDefinition