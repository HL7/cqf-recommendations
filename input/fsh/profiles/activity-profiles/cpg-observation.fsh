Profile: CPGObservation
Parent: Observation
Id: cpg-observation
Title: "CPG Observation"
Description: "Documents a specific observation as an activity within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-observation)
* extension contains
  CPGInstantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  CPGCaseFeatureType named caseFeatureType 0..1 MS and
  CPGCaseFeaturePertinence named caseFeaturePertinence 0..1 MS and
  CPGPertinent named pertinent 0..* MS
* identifier MS
* basedOn MS
* status MS
* category MS
* code MS
* subject MS
* encounter MS