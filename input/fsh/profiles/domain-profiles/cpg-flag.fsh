Profile: CPGFlag
Parent: Flag
Id: cpg-flag
Title: "CPG Flag"
Description: "Represents a flag on a patient record within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-flag)
* extension contains
  $cpg-instantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  $cpg-caseFeatureType named caseFeatureType 0..1 MS and
  $cpg-caseFeaturePertinence named caseFeaturePertinence 0..1 MS and
  $cpg-pertinent named pertinent 0..* MS
* identifier MS
* status MS
* category 1..1 MS
* code MS
* subject only Reference($cpg-patient)
* subject MS
* period MS
* encounter only Reference($cpg-encounter)
* encounter MS
* author MS