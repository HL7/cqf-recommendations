Profile: CPGDocumentMedicationTask
Parent: CPGTask
Id: cpg-documentmedicationtask
Title: "CPG Document Medication Task"
Description: "Recommendation to document the use of a specific medication as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-documentmedicationtask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#document-medication
* code MS
* input 0..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains medicationRequest 1..1 MS
* input[medicationRequest]
  * ^short = "Medication to dispense"
  * ^definition = "A MedicationRequest detailing the specific medication to be dispensed."
  * ^comment = "Note that this may be an existing MedicationRequest that is recommended to be documented, or it may be a proposed MedicationRequest provided as part of the document recommendation."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#order-medication
  * type MS
  * value[x] only Reference(CPGMedicationRequest)
  * value[x] MS
* output ..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* output contains medicationStatement 0..1 MS
* output[medicationStatement]
  * ^short = "Medication that was documented"
  * ^definition = "A MedicationStatement that is the result of completing this task."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#document-medication
  * type MS
  * value[x] only Reference(CPGMedicationStatement)
  * value[x] MS



