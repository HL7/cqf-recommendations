Profile: CPGGenerateReportActivity
Parent: CPGComputableActivityDefinition
Id: cpg-generatereportactivity
Title: "CPG Generate Report Activity"
Description: "Definition of an activity to generate a metric, measure, or case report as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-generatereportactivity)
* extension contains $cpg-reportWith named reportWith 0..1 MS
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-generatereporttask (exactly)
  * ^short = "At least a CPG Generate Report Task"
  * ^definition = "The profile that the resulting task must conform to; at least a CPGGenerateReportTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#generate-report
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



