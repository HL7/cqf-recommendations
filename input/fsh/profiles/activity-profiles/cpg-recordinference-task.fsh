Profile: CPGRecordInferenceTask
Parent: CPGTask
Id: cpg-recordinferencetask
Title: "CPG Record Inference Task"
Description: "Recommendation to record a particular inference as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-recordinferencetask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#record-inference
* code MS
* input 0..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains inference 1..1 MS
* input[inference]
  * ^short = "Inference to record"
  * ^definition = "The inference to be recorded."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#record-inference
  * type MS
  * value[x] only Reference(CPGObservation)
  * value[x] MS



