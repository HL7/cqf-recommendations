Profile: CPGEnrollmentTask
Parent: CPGTask
Id: cpg-enrollmenttask
Title: "CPG Enrollment Task"
Description: "Proposal to enroll the patient in a strategy or pathway as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-enrollmenttask)
* modifierExtension contains CPGIsUnenrollment named isUnenrollment 0..1 MS
* code only CodeableConcept
* code = $cpg-activity-type-cs#enrollment
* code MS
* input 0..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains pathway 1..1 MS
* input[pathway]
  * ^short = "Pathway or Strategy"
  * ^definition = "The Pathway or Strategy in which the patient is to be enrolled."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#enrollment
  * type MS
  * value[x] only Canonical(CPGShareablePlanDefinition)
  * value[x] MS
* output ..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* output contains case 0..1 MS
* output[case]
  * ^short = "Response"
  * ^definition = "The QuestionnaireResponse that is the result of completing the task."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#enrollment
  * type MS
  * value[x] only Reference(CPGCase)
  * value[x] MS



