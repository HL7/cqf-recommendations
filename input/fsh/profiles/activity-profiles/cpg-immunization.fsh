Profile: CPGImmunization
Parent: Immunization
Id: cpg-immunization
Title: "CPG Immunization"
Description: "Documents a particular immunization as an activity within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-immunization)
* extension contains
  CPGInstantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  CPGCaseFeatureType named caseFeatureType 0..1 MS and
  CPGCaseFeaturePertinence named caseFeaturePertinence 0..1 MS and
  basedOn named basedOn 0..1 MS and
  CPGPertinent named pertinent 0..* MS
* identifier MS
* statusReason MS
* patient MS
* encounter MS
* reasonCode MS
* reasonReference MS