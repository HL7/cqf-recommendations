Profile: CPGPublishableLibrary
Parent: CPGShareableLibrary
Id: cpg-publishablelibrary
Title: "CPG Publishable Library"
Description: "The publishable library defines the must support elements that are important for implementers to use and understand a library"
* insert StructureDefinitionMetadata(cpg-publishablelibrary)
* title 1..1 MS
* type 1..1
* date 1..1 MS
* copyright MS
* approvalDate MS
* lastReviewDate MS
* effectivePeriod MS
* topic from $definition-topic (preferred)
* topic ^binding.description = "Topics for categorization and searching of artifacts"
* relatedArtifact MS
* relatedArtifact
  * display MS
  * url MS
  * resource MS