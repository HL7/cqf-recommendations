Profile: CPGDetectedIssue
Parent: DetectedIssue
Id: cpg-detectedissue
Title: "CPG Detected Issue"
Description: "Documents a detected issue within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-detectedissue)
* extension contains
  $cpg-instantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  $cpg-caseFeatureType named caseFeatureType 0..1 MS and
  $cpg-caseFeaturePertinence named caseFeaturePertinence 0..1 MS
* status MS
* code 1..1
* patient only Reference($cpg-patient)
* patient MS
* evidence MS
  * code MS
  * detail MS