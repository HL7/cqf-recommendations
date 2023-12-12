Profile: CPGCaseSummary
Parent: Composition
Id: cpg-casesummary
Title: "CPG Case Summary"
Description: "CPG Case Summary is the set of case features and feature groups that completely represent the case data scoped by the clinical practice guideline. This expresses the complete patient state at any given point in time."
* insert StructureDefinitionMetadata(cpg-casesummary)
* extension contains
  $cpg-generatedFrom named generatedFrom 0..1 MS and
  $cpg-summaryFor named summaryFor 0..1 MS
* extension[generatedFrom]
  * ^short = "Definition"
  * ^definition = "A link back to the definition that produced this summary. Typically a CPGCaseSummaryDefinition."
* extension[summaryFor]
  * ^short = "Which case?"
  * ^definition = "Specifies which case (episode of care) this summary is for."
* identifier MS
* status MS
* type MS
* category MS
* subject only Reference(CPGPatient)
* subject MS
* encounter only Reference(CPGEncounter)
* encounter MS
* date MS
* author only Reference(CPGPractitioner or CPGPractitionerRole)
* author MS