Profile: CPGPublishableGuideline
Parent: $cpg-shareableig
Id: cpg-publishableguideline
Title: "CPG Publishable Guideline"
Description: "Profile of ImplementationGuide to describe the minimum expectations for a publishable Clinical Practice Guideline"
* insert StructureDefinitionMetadata(cpg-publishableguideline)
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
* copyright MS
* license MS