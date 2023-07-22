Profile: CPGMedicationDispense
Parent: MedicationDispense
Id: cpg-medicationdispense
Title: "CPG Medication Dispense"
Description: "Documents the dispensing of a particular medication as an activity within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-medicationdispense)
* extension contains
  CPGInstantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  CPGCaseFeatureType named caseFeatureType 0..1 MS and
  CPGCaseFeaturePertinence named caseFeaturePertinence 0..1 MS
* identifier MS
* status MS
* statusReason[x] MS
* category MS
* medication[x] MS
* subject MS
* context MS
* supportingInformation MS
  * ^short = "Pertinent information"
  * ^definition = "The pertinent positive or negative information relative to this event."
* authorizingPrescription MS