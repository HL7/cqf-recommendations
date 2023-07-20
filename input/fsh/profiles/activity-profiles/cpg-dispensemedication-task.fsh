Profile: CPGDispenseMedicationTask
Parent: CPGTask
Id: cpg-dispensemedicationtask
Title: "CPG Dispense Medication Task"
Description: "Recommendation to dispense a specific medication as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-dispensemedicationtask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#dispense-medication
* code MS
* input 0..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains medicationRequest 1..1 MS
* input[medicationRequest]
  * ^short = "Medication to dispense"
  * ^definition = "A MedicationRequest detailing the specific medication to be dispensed."
  * ^comment = "Note that this may be an existing MedicationRequest that is recommended to be dispensed, or it may be a proposed MedicationRequest provided as part of the dispense recommendation."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#order-medication
  * type MS
  * value[x] only Reference(CPGMedicationRequest)
  * value[x] MS
* output ..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* output contains medicationDispense 0..1 MS
* output[medicationDispense]
  * ^short = "Medication that was dispensed"
  * ^definition = "A MedicationDispense that is the result of completing this task."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#dispense-medication
  * type MS
  * value[x] only Reference(CPGMedicationDispense)
  * value[x] MS



