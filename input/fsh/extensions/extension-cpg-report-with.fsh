Extension: CPGReportWith
Id: cpg-reportWith
Title: "CPG Report With Extension"
Description: "The URL of the artifact that describes the report to be sent, a metric or measure, case report, or profile that describes the data to be reported."
* insert DefinitionMetadata(cpg-reportWith, StructureDefinition)
* insert ExtensionContext(ActivityDefinition)
* value[x] only canonical
  * ^type.targetProfile[+] = $shareablemeasure
  * ^type.targetProfile[+] = $cpg-shareablegraphdefinition
  * ^type.targetProfile[+] = $cpg-shareablestructuredef