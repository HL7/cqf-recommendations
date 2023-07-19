Profile: CPGDocumentMedicationActivity
Parent: $cpg-computableactivity
Id: cpg-documentmedicationactivity
Title: "CPG Document Medication Activity"
Description: "Definition of an activity to document a specific medication as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-documentmedicationactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-dispensemedicationtask" (exactly)
  * ^short = "At least a CPG Document Medication Task"
  * ^definition = "The profile that the resulting Task must conform to; at least a CPGDocumentMedicationTask, though the activity definition may introduce further constraints."
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



