Extension: CPGInstantiatesCaseFeature
Id: cpg-instantiatesCaseFeature
Title: "CPG Instantiates Case Feature"
Description: "References the definition for this case feature."
* insert DefinitionMetadata(cpg-instantiatesCaseFeature, StructureDefinition)
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..1
  * ^short = "Definition of this case feature"
  * ^definition = "References the definition for this case feature."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-instantiatesCaseFeature" (exactly)
* value[x] only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/StructureDefinition"