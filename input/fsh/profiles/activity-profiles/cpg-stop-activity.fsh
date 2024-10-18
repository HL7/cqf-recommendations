Profile: CPGStopActivity
Parent: CPGComputableActivityDefinition
Id: cpg-stopactivity
Title: "CPG Stop Activity"
Description: "Definition of a recommendation to stop an activity that is currently in progress as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-stopactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-stoptask (exactly)
  * ^short = "At least a CPG Stop Task"
  * ^definition = "The profile that the resulting task must conform to; at least a CPGStopTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#stop-activity
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



