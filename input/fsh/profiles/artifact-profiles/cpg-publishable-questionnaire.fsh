Profile: CPGPublishableQuestionnaire
Parent: CPGShareableQuestionnaire
Id: cpg-publishablequestionnaire
Title: "CPG Publishable Questionnaire"
Description: "Profile of Questionnaire to represent the minimum expectations for a publishable questionnaire used in a clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-publishablequestionnaire)
* extension contains
  $cpg-topic named topic 0..* and
  $cpg-author named author 0..* and
  $cpg-editor named editor 0..* and
  $cpg-reviewer named reviewer 0..* and
  $cpg-endorser named endorser 0..* and
  $cpg-relatedArtifact named relatedArtifact 0..* MS
* title 1..1 MS
* date 1..1 MS
* copyright MS
* approvalDate MS
* lastReviewDate MS
* effectivePeriod MS
* code MS