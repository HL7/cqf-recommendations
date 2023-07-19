Profile: CPGPublishableMetric
Parent: $cpg-shareablemetric
Id: cpg-publishablemetric
Title: "CPG Publishable Metric"
Description: "Defines the minimum expectations for a publishable metric for use with computable content"
* insert StructureDefinitionMetadata(cpg-publishablemetric)
* title 1..1 MS
* date 1..1 MS
* copyright MS
* approvalDate MS
* lastReviewDate MS
* topic from $definition-topic (preferred)
* topic ^binding.description = "Topics for categorization and searching of artifacts"
* relatedArtifact MS
* relatedArtifact
  * display 1..1 MS
  * url MS
  * resource MS