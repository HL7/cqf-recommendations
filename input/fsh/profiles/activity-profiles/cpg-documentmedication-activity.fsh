Profile: CPGDocumentMedicationActivity
Parent: CPGComputableActivityDefinition
Id: cpg-documentmedicationactivity
Title: "CPG Document Medication Activity"
Description: "Definition of an activity to document a specific medication as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-documentmedicationactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-documentmedicationtask (exactly)
  * ^short = "At least a CPG Document Medication Task"
  * ^definition = "The profile that the resulting Task must conform to; at least a CPGDocumentMedicationTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#document-medication
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



