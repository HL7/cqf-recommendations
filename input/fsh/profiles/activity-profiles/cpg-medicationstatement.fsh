Profile: CPGMedicationStatement
Parent: MedicationStatement
Id: cpg-medicationstatement
Title: "CPG Medication Statement"
Description: "Documentation of the use of a particular medication as an activity within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-medicationstatement)
* extension contains
  CPGInstantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  CPGCaseFeatureType named caseFeatureType 0..1 MS and
  CPGCaseFeaturePertinence named caseFeaturePertinence 0..1 MS and
  CPGPertinent named pertinent 0..* MS
* identifier MS
* basedOn MS
* status MS
* statusReason MS
* category MS
* medication[x] MS
* subject MS
* context MS
* informationSource MS
* derivedFrom MS
* reasonCode MS
* reasonReference MS