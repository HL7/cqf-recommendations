Extension: CPGReportWith
Id: cpg-reportWith
Title: "CPG Report With"
Description: "The URL of the artifact that describes the report to be sent, a metric or measure, case report, or profile that describes the data to be reported."
* insert DefinitionMetadata(cpg-reportWith, StructureDefinition)
* ^date = "2018-06-06"
* ^context.type = #element
* ^context.expression = "ActivityDefinition"
* . 0..*
  * ^short = "Report with?"
  * ^definition = "The URL of the artifact that describes the report to be sent, a metric or measure, case report, or profile that describes the data to be reported."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportWith" (exactly)
* value[x] only canonical
  * ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/shareablemeasure"
  * ^type.targetProfile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-shareablegraphdefinition"
  * ^type.targetProfile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-shareablestructuredef"