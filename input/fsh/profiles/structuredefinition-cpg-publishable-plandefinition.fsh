Profile: CPGPublishablePlanDefinition
Parent: $cpg-shareableplandefinition
Id: cpg-publishableplandefinition
Title: "CPG Publishable Plan Definition"
Description: "Profile of PlanDefinition that defines the minimum expectations for a publishable plan definition"
* insert DefinitionMetadata(cpg-publishableplandefinition, StructureDefinition)
* title 1..1 MS
* date 1..1 MS
* purpose ^mustSupport = false
* usage ^mustSupport = false
* copyright MS
* approvalDate MS
* lastReviewDate MS
* effectivePeriod MS
* topic from $definition-topic (preferred)
* topic ^mustSupport = false
* topic ^binding.description = "Topics for categorization and searching of artifacts"
* author ^mustSupport = false
* editor ^mustSupport = false
* reviewer ^mustSupport = false
* endorser ^mustSupport = false
* relatedArtifact MS
* relatedArtifact.display 1..1 MS
* relatedArtifact.url MS
* relatedArtifact.resource MS

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: CPGPublishablePlanDefinition
Target: "http://hl7.org/v3"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGPublishablePlanDefinition
Target: "http://hl7.org/fhir/workflow"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGPublishablePlanDefinition
Target: "http://hl7.org/fhir/fivews"

Mapping: objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGPublishablePlanDefinition
Target: "http://hl7.org/fhir/object-implementation"