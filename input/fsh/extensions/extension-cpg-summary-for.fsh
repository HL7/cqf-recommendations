Extension: CPGSummaryFor
Id: cpg-summaryFor
Title: "CPG Summary For Extension"
Description: "Specifies a case (episode of care), pathway, strategy, or recommendation which this summary is for."
* insert StructureDefinitionMetadata(cpg-summaryFor)
* insert ExtensionContext(Composition)
// * value[x] only Reference($cpg-case or $cpg-careplan or $cpg-strategy or $cpg-communicationrequest or $cpg-immunizationrecommendation or $cpg-proposediagnosistask or $cpg-questionnairetask or $cpg-recorddetectedissuetask or $cpg-recordinferencetask or $cpg-medicationrequest or $cpg-reportflagtask or $cpg-servicerequest)