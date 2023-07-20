Profile: CPGMedicationAdministration
Parent: MedicationAdministration
Id: cpg-medicationadministration
Title: "CPG Medication Administration"
Description: "Documents the administration of a particular medication as an activity within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-medicationadministration)
* extension contains
  CPGInstantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  CPGCaseFeatureType named caseFeatureType 0..1 MS and
  CPGCaseFeaturePertinence named caseFeaturePertinence 0..1 MS and
  $event-basedOn named basedOn 0..1 MS
* identifier MS
* instantiates MS
  * ^short = "Source"
  * ^definition = "A link back to the definition that ultimately produced this communication. This is typically a Plan or Activity Definition."
* status MS
* statusReason MS
* category MS
* medication[x] MS
* subject MS
* context MS
* supportingInformation MS
  * ^short = "Pertinent information"
  * ^definition = "The pertinent positive or negative information relative to this event."
* reasonCode MS
* reasonReference MS
* request MS