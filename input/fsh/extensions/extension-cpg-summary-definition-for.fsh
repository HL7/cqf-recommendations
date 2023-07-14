Extension: CPGSummaryDefinitionFor
Id: cpg-summaryDefinitionFor
Title: "CPG Summary Definition For"
Description: "Specifies which clinical practice guideline, pathway, strategy, or recommendation this is a summary definition for."
* insert ExtensionMetadata(cpg-summaryDefinitionFor, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "Which guideline, pathway, strategy, or recommendation?"
  * ^definition = "Specifies which clinical practice guideline, pathway, strategy, or recommendation this is a summary definition for."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-summaryDefinitionFor" (exactly)
* value[x] only canonical