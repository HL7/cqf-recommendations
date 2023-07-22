Profile: CPGGenerateReportTask
Parent: CPGTask
Id: cpg-generatereporttask
Title: "CPG Generate Report Task"
Description: "Proposal to generate a metric, measure, or case report as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-generatereporttask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#generate-report
* code MS
* input 0..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains definition 1..1 MS
* input[definition]
  * ^short = "Pathway or Strategy"
  * ^definition = "The definition of the metric, measure, case report, or profile that is to be used to generate the report."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#generate-report
  * type MS
  * value[x] only Canonical(shareablemeasure or CPGShareableGraphDefinition or CPGShareableStructureDefinition)
  * value[x] MS
* output ..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* output contains report 0..1 MS
* output[report]
  * ^short = "Response"
  * ^definition = "The generated report, such as a MeasureReport, Composition, or case feature."
  * ^comment = "If the definition is a Measure, the result SHALL be a MeasureReport. If the definition is a GraphDefinition, the result SHALL be a Composition. If the definition is a StructureDefinition, the result SHALL be a resource of the type defined by the profile."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#generate-report
  * type MS
  * value[x] only Reference
  * value[x] MS



