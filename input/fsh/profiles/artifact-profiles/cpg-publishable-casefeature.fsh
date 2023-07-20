Profile: CPGPublishableCaseFeatureDefinition
Parent: CPGShareableStructureDefinition
Id: cpg-publishablecasefeature
Title: "CPG Publishable Case Feature Definition"
Description: "Profile of StructureDefinition to represent the minimum expectations for a publishable case feature of a clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-publishablecasefeature)
* extension contains
  $resource-approvalDate named approvalDate 0..1 MS and
  $resource-effectivePeriod named effectivePeriod 0..1 MS and
  $resource-lastReviewDate named lastReviewDate 0..1 MS and
  $cpg-topic named topic 0..* and
  $cpg-author named author 0..* and
  $cpg-editor named editor 0..* and
  $cpg-reviewer named reviewer 0..* and
  $cpg-endorser named endorser 0..* and
  $cpg-relatedArtifact named relatedArtifact 0..* MS
* title 1..1 MS
* date 1..1 MS
* copyright MS