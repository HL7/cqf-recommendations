Profile: CPGPublishableCodeSystem
Parent: CPGShareableCodeSystem
Id: cpg-publishablecodesystem
Title: "CPG Publishable Code System"
Description: "Defines the expectations for publishable code systems used in computable content"
* insert StructureDefinitionMetadata(cpg-publishablecodesystem)
* extension contains
  $resource-approvalDate named approvalDate 0..1 MS and
  $codesystem-effectiveDate named effectiveDate 0..1 MS and
  $codesystem-expirationDate named expirationDate 0..1 MS and
  $resource-lastReviewDate named lastReviewDate 0..1 MS and
  $cpg-topic named topic 0..* and
  $codesystem-author named author 0..* and
  $cpg-editor named editor 0..* and
  $cpg-reviewer named reviewer 0..* and
  $cpg-endorser named endorser 0..* and
  $cpg-relatedArtifact named relatedArtifact 0..* MS and
  $codesystem-keyWord named keyWord 0..* and
  $codesystem-sourceReference named sourceReference 0..* MS
* title 1..1
* date 1..1
* useContext MS
* jurisdiction MS
* copyright MS
* caseSensitive 1..1