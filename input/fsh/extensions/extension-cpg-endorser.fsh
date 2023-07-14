Extension: CPGEndorser
Id: cpg-endorser
Title: "CPG Endorser"
Description: "Specifies the endorser of the content."
* insert DefinitionMetadata(cpg-endorser, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "Who endorsed the content"
  * ^definition = "Specifies the endorser of the content."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-endorser" (exactly)
* value[x] only ContactDetail