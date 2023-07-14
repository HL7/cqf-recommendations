Extension: CPGReviewer
Id: cpg-reviewer
Title: "CPG Reviewer"
Description: "Specifies the reviewer of the content."
* insert ExtensionMetadata(cpg-reviewer, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "Who reviewed the content"
  * ^definition = "Specifies the reviewer of the content."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reviewer" (exactly)
* value[x] only ContactDetail