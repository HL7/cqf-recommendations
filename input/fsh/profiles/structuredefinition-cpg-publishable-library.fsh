Profile: CPGPublishableLibrary
Parent: $cpg-shareablelibrary
Id: cpg-publishablelibrary
Title: "CPG Publishable Library"
Description: "The publishable library defines the must support elements that are important for implementers to use and understand a library"
* insert DefinitionMetadata(cpg-publishablelibrary, StructureDefinition)
* title 1..1 MS
* type 1..1
* type ^mustSupport = false
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
* relatedArtifact.display MS
* relatedArtifact.url MS
* relatedArtifact.resource MS

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: CPGPublishableLibrary
Target: "http://hl7.org/v3"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGPublishableLibrary
Target: "http://hl7.org/fhir/workflow"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGPublishableLibrary
Target: "http://hl7.org/fhir/fivews"

Mapping: objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGPublishableLibrary
Target: "http://hl7.org/fhir/object-implementation"