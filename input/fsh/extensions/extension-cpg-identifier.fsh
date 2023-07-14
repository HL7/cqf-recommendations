Extension: CPGIdentifier
Id: cpg-identifier
Title: "CPG Identifier"
Description: "Provides a business identifier for the artifact."
* insert DefinitionMetadata(cpg-identifier, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "Business identifier"
  * ^definition = "Provides a business identifier for the artifact."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-identifier" (exactly)
* value[x] only Identifier