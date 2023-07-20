Profile: CPGCommunication
Parent: Communication
Id: cpg-communication
Title: "CPG Communication"
Description: "Documents a communication with a patient or other participant as an activity within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-communication)
* extension contains
  CPGInstantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  CPGCaseFeatureType named caseFeatureType 0..1 MS and
  CPGCaseFeaturePertinence named caseFeaturePertinence 0..1 MS
* identifier MS
* instantiatesCanonical MS
  * ^short = "Source"
  * ^definition = "A link back to the definition that ultimately produced this communication. This is typically a Plan or Activity Definition."
* basedOn only Reference(CPGCommunicationRequest)
* basedOn MS
* status MS
* statusReason MS
* category MS
* priority MS
* subject MS
* about MS
  * ^short = "Pertinent information"
  * ^definition = "The pertinent positive or negative information relative to this event."
* encounter MS
* sent MS
* received MS
* recipient MS
* sender MS