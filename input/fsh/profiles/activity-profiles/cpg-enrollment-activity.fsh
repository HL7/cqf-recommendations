Profile: CPGEnrollmentActivity
Parent: CPGComputableActivityDefinition
Id: cpg-enrollmentactivity
Title: "CPG Enrollment Activity"
Description: "Definition of an activity to enroll or unenroll a patient in a strategy or pathway as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-enrollmentactivity)
* extension contains
  CPGEnrollIn named enrollIn 0..1 MS
* modifierExtension contains
  CPGIsUnenrollment named isUnenrollment 0..1 MS
* modifierExtension[isUnenrollment] ^comment = "If isUnenrollment is not specified, the default is false (meaning the activity is an enrollment activity)."
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-enrollmenttask (exactly)
  * ^short = "At least a CPG Enrollment Task"
  * ^definition = "The profile that the resulting task must conform to; at least a CPGEnrollmentTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#enrollment
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



