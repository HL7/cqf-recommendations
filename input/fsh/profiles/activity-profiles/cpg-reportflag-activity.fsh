Profile: CPGReportFlagActivity
Parent: CPGComputableActivityDefinition
Id: cpg-reportflagactivity
Title: "CPG Report Flag Activity"
Description: "Definition of a recommendation to report a particular flag as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-reportflagactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-reportflagtask (exactly)
  * ^short = "At least a CPG Report Flag Task"
  * ^definition = "The profile that the resulting communication request must conform to; at least a CPGReportFlagTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#report-flag
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



