Extension: CPGReportWith
Id: cpg-reportWith
Title: "CPG Report With Extension"
Description: "The URL of the artifact that describes the report to be sent, a metric or measure, case report, or profile that describes the data to be reported."
* insert StructureDefinitionMetadata(cpg-reportWith)
* insert ExtensionContext(ActivityDefinition)
* value[x] only Canonical(shareablemeasure or CPGShareableGraphDefinition or CPGShareableStructureDefinition)