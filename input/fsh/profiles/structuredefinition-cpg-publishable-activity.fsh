Profile: CPGPublishableActivityDefinition
Parent: $cpg-shareableactivitydefinition
Id: cpg-publishableactivity
Description: "Defines the minimum expectations for a publishable activity definition"
* insert DefinitionMetadata(cpg-publishableactivity, StructureDefinition)
* title 1..1 MS
* date 1..1 MS
* purpose
* usage
* copyright MS
* approvalDate MS
* lastReviewDate MS
* effectivePeriod MS
* topic from $definition-topic (preferred)
  * ^binding.description = "Topics for categorization and searching of artifacts"
* author
* editor
* reviewer
* endorser
* relatedArtifact MS
  * display 1..1 MS
  * url MS
  * resource MS

Mapping: publishableactivity-rim
Id: rim
Title: "RIM Mapping"
Source: CPGPublishableActivityDefinition
Target: "http://hl7.org/v3"

Mapping: publishableactivity-workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGPublishableActivityDefinition
Target: "http://hl7.org/fhir/workflow"

Mapping: publishableactivity-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGPublishableActivityDefinition
Target: "http://hl7.org/fhir/fivews"

Mapping: publishableactivity-objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGPublishableActivityDefinition
Target: "http://hl7.org/fhir/object-implementation"