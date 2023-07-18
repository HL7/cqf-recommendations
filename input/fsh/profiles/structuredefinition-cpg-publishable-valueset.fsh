Profile: CPGPublishableValueSet
Parent: $cpg-shareablevalueset
Id: cpg-publishablevalueset
Title: "CPG Publishable Value Set"
Description: "Defines the expectations for publishable value sets used in computable content."
* insert StructureDefinitionMetadata(cpg-publishablevalueset)
* extension contains
  $resource-approvalDate named approvalDate 0..1 MS and
  $valueset-effectiveDate named effectiveDate 0..1 MS and
  $valueset-expirationDate named expirationDate 0..1 MS and
  $resource-lastReviewDate named lastReviewDate 0..1 MS and
  $cpg-topic named topic 0..* and
  $valueset-author named author 0..* and
  $cpg-editor named editor 0..* and
  $cpg-reviewer named reviewer 0..* and
  $cpg-endorser named endorser 0..* and
  $cpg-relatedArtifact named relatedArtifact 0..* MS and
  $valueset-keyWord named keyWord 0..* and
  $valueset-sourceReference named sourceReference 0..*
* title 1..1
* date 1..1
* copyright MS