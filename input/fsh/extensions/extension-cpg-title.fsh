Extension: CPGTitle
Id: cpg-title
Title: "CPG Title"
Description: "A short, descriptive, user-friendly name for the artifact."
* insert DefinitionMetadata(cpg-title, StructureDefinition)
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..1
  * ^short = "Name for this artifact (human friendly)"
  * ^definition = "A short, descriptive, user-friendly name for the artifact."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-title" (exactly)
* value[x] only string