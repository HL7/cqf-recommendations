Profile: CPGPublishableGraphDefinition
Parent: CPGShareableGraphDefinition
Id: cpg-publishablegraphdefinition
Title: "CPG Publishable Graph Definition"
Description: "Profile of GraphDefinition to describe the minimum expectations for a publishable Graph Definition"
* insert StructureDefinitionMetadata(cpg-publishablegraphdefinition)
* extension contains
  $resource-approvalDate named approvalDate 0..1 MS and
  $resource-effectivePeriod named effectivePeriod 0..1 MS and
  $resource-lastReviewDate named lastReviewDate 0..1 MS and
  $cpg-topic named topic 0..* and
  $cpg-author named author 0..* and
  $cpg-editor named editor 0..* and
  $cpg-reviewer named reviewer 0..* and
  $cpg-endorser named endorser 0..* and
  $cpg-relatedArtifact named relatedArtifact 0..* MS and
  $cpg-copyright named copyright 0..1 MS