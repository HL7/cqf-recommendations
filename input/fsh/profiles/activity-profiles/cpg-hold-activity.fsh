Profile: CPGHoldActivity
Parent: CPGComputableActivityDefinition
Id: cpg-holdactivity
Title: "CPG Hold Activity"
Description: "Definition of a recommendation to hold an activity that is currently in progress as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-holdactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-holdtask (exactly)
  * ^short = "At least a CPG Hold Task"
  * ^definition = "The profile that the resulting task must conform to; at least a CPGHoldTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#hold-activity
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



