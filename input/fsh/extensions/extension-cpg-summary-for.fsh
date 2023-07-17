Extension: CPGSummaryFor
Id: cpg-summaryFor
Title: "CPG Summary For"
Description: "Specifies a case (episode of care), pathway, strategy, or recommendation which this summary is for."
* insert DefinitionMetadata(cpg-summaryFor, StructureDefinition)
* ^context.type = #element
* ^context.expression = "Composition"
* . 0..*
  * ^short = "Which case, pathway, strategy, or recommendation?"
  * ^definition = "Specifies a case (episode of care), pathway, strategy, or recommendation which this summary is for."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-summaryFor" (exactly)
// * value[x] only Reference($cpg-case or $cpg-careplan or $cpg-strategy or $cpg-communicationrequest or $cpg-immunizationrecommendation or $cpg-proposediagnosistask or $cpg-questionnairetask or $cpg-recorddetectedissuetask or $cpg-recordinferencetask or $cpg-medicationrequest or $cpg-reportflagtask or $cpg-servicerequest)