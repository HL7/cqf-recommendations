Profile: CPGResumeActivity
Parent: CPGComputableActivityDefinition
Id: cpg-resumeactivity
Title: "CPG Resume Activity"
Description: "Definition of a recommendation to resume an activity that is currently on hold as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-resumeactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-resumetask (exactly)
  * ^short = "At least a CPG Resume Task"
  * ^definition = "The profile that the resulting task must conform to; at least a CPGResumeTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#resume-activity
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



