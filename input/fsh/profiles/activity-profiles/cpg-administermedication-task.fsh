Profile: CPGAdministerMedicationTask
Parent: CPGTask
Id: cpg-administermedicationtask
Title: "CPG Administer Medication Task"
Description: "Recommendation to administer a specific medication as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-administermedicationtask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#administer-medication
* code MS
* input ..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains
  medicationRequest 0..1 MS and
  medicationDispense 0..1 MS
* input[medicationRequest]
  * ^short = "Medication to dispense"
  * ^definition = "A MedicationRequest detailing the specific medication to be dispensed."
  * ^comment = "Note that this may be an existing MedicationRequest that is recommended to be administered, or it may be a proposed MedicationRequest provided as part of the administer recommendation."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#order-medication
  * type MS
  * value[x] only Reference(CPGMedicationRequest)
  * value[x] MS
* input[medicationDispense]
  * ^short = "Medication to dispense"
  * ^definition = "A MedicationDispense detailing the specific medication to be dispensed."
  * ^comment = "Note that this may be an existing MedicationDispense that is recommended to be administered, or it may be a proposed MedicationDispense provided as part of the administer recommendation."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#dispense-medication
  * type MS
  * value[x] only Reference(CPGMedicationDispense)
  * value[x] MS
* output ..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* output contains medicationAdministration 0..1 MS
* output[medicationAdministration]
  * ^short = "Medication that was administered"
  * ^definition = "A MedicationAdministration that is the result of completing this task."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#administer-medication
  * type MS
  * value[x] only Reference(CPGMedicationAdministration)
  * value[x] MS