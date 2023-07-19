Profile: CPGPublishableActivityDefinition
Parent: $cpg-shareableactivitydefinition
Id: cpg-publishableactivity
Title: "CPG Publishable Activity Definition"
Description: "Defines the minimum expectations for a publishable activity definition"
* insert StructureDefinitionMetadata(cpg-publishableactivity)
* title 1..1 MS
* date 1..1 MS
* copyright MS
* approvalDate MS
* lastReviewDate MS
* effectivePeriod MS
* topic from $definition-topic (preferred)
  * ^binding.description = "Topics for categorization and searching of artifacts"
* relatedArtifact MS
  * display 1..1 MS
  * url MS
  * resource MS