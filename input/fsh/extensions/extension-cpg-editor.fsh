Extension: CPGEditor
Id: cpg-editor
Title: "CPG Editor"
Description: "Specified the editor of the content."
* insert ExtensionMetadata(cpg-editor, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "Who edited the content"
  * ^definition = "Specified the editor of the content."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-editor" (exactly)
* value[x] only ContactDetail