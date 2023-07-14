Extension: CPGUsageWarning
Id: cpg-usageWarning
Title: "CPG Usage Warning"
Description: "An extra warning about the correct use of the value set."
* insert DefinitionMetadata(cpg-usageWarning, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "ValueSet"
* . 0..1
  * ^short = "warning"
  * ^definition = "An extra warning about the correct use of the value set."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-usageWarning" (exactly)
* value[x] only string