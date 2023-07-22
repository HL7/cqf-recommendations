Profile: CPGCaseSummaryDefinition
Parent: CPGCommutableGraphDefinition
Id: cpg-casesummarydefinition
Title: "CPG Case Summary Definition"
Description: "CPG Case Summary Definition provides a computable definition for all the case features and feature groups relevant to a clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-casesummarydefinition)
* extension contains $cpg-summaryDefinitionFor named summaryDefinitionFor 0..1 MS
* extension[summaryDefinitionFor]
  * ^short = "Which guideline?"
  * ^definition = "Specifies which clinical practice guideline this is a summary definition for."