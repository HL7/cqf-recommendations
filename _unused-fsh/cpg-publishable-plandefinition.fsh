Profile: CPGPublishablePlanDefinition
Parent: CPGShareablePlanDefinition
Id: cpg-publishableplandefinition
Title: "CPG Publishable Plan Definition"
Description: "Profile of PlanDefinition that defines the minimum expectations for a publishable plan definition"
* insert StructureDefinitionMetadata(cpg-publishableplandefinition)
* title 1..1 MS
* date 1..1 MS
* copyright MS
* approvalDate MS
* lastReviewDate MS
* effectivePeriod MS
* topic from $definition-topic (preferred)
* topic ^binding.description = "Topics for categorization and searching of artifacts"
* relatedArtifact MS
* relatedArtifact
  * display 1..1 MS
  * url MS
  * resource MS