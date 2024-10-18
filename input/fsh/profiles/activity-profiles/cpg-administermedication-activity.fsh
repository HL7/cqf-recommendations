Profile: CPGAdministerMedicationActivity
Parent: CPGComputableActivityDefinition
Id: cpg-administermedicationactivity
Title: "CPG Administer Medication Activity"
Description: "Definition of a proposal to administer a medication as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-administermedicationactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-administermedicationtask (exactly)
  * ^short = "At least a CPG Administer Medication Task"
  * ^definition = "The profile that the resulting task must conform to; at least a CPGAdministerMedicationTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#administer-medication
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



