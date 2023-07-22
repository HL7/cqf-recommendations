Profile: CPGFlag
Parent: Flag
Id: cpg-flag
Title: "CPG Flag"
Description: "Represents a flag on a patient record within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-flag)
* extension contains
  CPGInstantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  CPGCaseFeatureType named caseFeatureType 0..1 MS and
  CPGCaseFeaturePertinence named caseFeaturePertinence 0..1 MS and
  CPGPertinent named pertinent 0..* MS
* identifier MS
* status MS
* category 1..1 MS
* code MS
* subject only Reference(CPGPatient)
* subject MS
* period MS
* encounter only Reference(CPGEncounter)
* encounter MS
* author MS