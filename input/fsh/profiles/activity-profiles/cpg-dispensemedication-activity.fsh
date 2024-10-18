Profile: CPGDispenseMedicationActivity
Parent: CPGComputableActivityDefinition
Id: cpg-dispensemedicationactivity
Title: "CPG Dispense Medication Activity"
Description: "Definition of an activity to dispense a specific medication as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-dispensemedicationactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-dispensemedicationtask (exactly)
  * ^short = "At least a CPG Dispense Medication Task"
  * ^definition = "The profile that the resulting Task must conform to; at least a CPGDispenseMedicationTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#dispense-medication
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



