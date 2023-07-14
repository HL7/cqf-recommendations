Extension: CPGCollectWith
Id: cpg-collectWith
Title: "CPG Collect With"
Description: "The URL of the questionnaire to be used to collect the information. If this information is not supplied as part of the activity definition, it is expected to be determined dynamically as part of realizing the activity."
* insert ExtensionMetadata(cpg-collectWith, StructureDefinition)
* ^date = "2018-06-06"
* ^context.type = #element
* ^context.expression = "ActivityDefinition"
* . 0..*
  * ^short = "Collect with?"
  * ^definition = "The URL of the questionnaire to be used to collect the information. If this information is not supplied as part of the activity definition, it is expected to be determined dynamically as part of realizing the activity."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith" (exactly)
* value[x] only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-shareablequestionnaire"