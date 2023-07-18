Profile: CPGCondition
Parent: Condition
Id: cpg-condition
Title: "CPG Condition"
Description: "CPG condition represents the minimum expectations for communicating condition/problem information as part of a CPG case"
* insert StructureDefinitionMetadata(cpg-condition)
* extension contains
  $cpg-instantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  $cpg-caseFeatureType named caseFeatureType 0..1 MS and
  $cpg-caseFeaturePertinence named caseFeaturePertinence 0..1 MS
* clinicalStatus MS
* verificationStatus MS
* category 1..*
* code 1..1
* subject only Reference($cpg-patient)
* subject MS
* encounter only Reference($cpg-encounter)
* encounter MS
* onset[x] only dateTime or Age or Period or Range
* onset[x] MS
* abatement[x] only dateTime or Age or Period or Range
* abatement[x] MS
* evidence MS
* evidence
  * code MS
  * detail MS