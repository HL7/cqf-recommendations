Profile: CPGProposeDiagnosisTask
Parent: CPGTask
Id: cpg-proposediagnosistask
Title: "CPG Propose Diagnosis Task"
Description: "Recommendation to propose a specific diagnosis as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-proposediagnosistask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#propose-diagnosis
* code MS
* input 0..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains diagnosis 1..1 MS
* input[diagnosis]
  * ^short = "Proposed diagnosis"
  * ^definition = "The diagnosis being proposed."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#propose-diagnosis
  * type MS
  * value[x] only Reference(Condition)
  * value[x] MS



