Profile: CPGTask
Parent: Task
Id: cpg-task
Title: "CPG Task"
Description: "Defines the expectations common to tasks that represent activities used in computable guidelines"
* insert StructureDefinitionMetadata(cpg-task)
* extension contains
  CPGRationale named rationale 0..1 MS and
  CPGPertinent named pertinent 0..* MS and
  CPGRating named rating 0..1 MS
* modifierExtension contains $request-doNotPerform named doNotPerform 0..1 MS
* identifier MS
* instantiatesCanonical MS
  * ^short = "Source"
  * ^definition = "A link back to the definition that produced this recommendation. Typically a Plan or Activity Definition."
* basedOn MS
* status MS
* statusReason MS
* intent MS
* priority MS
* code MS
* code from $cpg-activity-type-vs (extensible)
  * ^binding.description = "Activity types for use in computable guidelines"
* description MS
* for only Reference(CPGPatient)
* for MS
* encounter only Reference(CPGEncounter)
* encounter MS
* executionPeriod MS
* authoredOn MS
* output MS