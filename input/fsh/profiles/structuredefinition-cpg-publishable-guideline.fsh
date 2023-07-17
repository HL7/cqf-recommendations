Profile: CPGPublishableGuideline
Parent: $cpg-shareableig
Id: cpg-publishableguideline
Title: "CPG Publishable Guideline"
Description: "Profile of ImplementationGuide to describe the minimum expectations for a publishable Clinical Practice Guideline"
* insert DefinitionMetadata(cpg-publishableguideline, StructureDefinition)
* extension contains
    $resource-approvalDate named approvalDate 0..1 MS and
    $resource-effectivePeriod named effectivePeriod 0..1 MS and
    $resource-lastReviewDate named lastReviewDate 0..1 MS and
    $cpg-topic named topic 0..* and
    $cpg-author named author 0..* and
    $cpg-editor named editor 0..* and
    $cpg-reviewer named reviewer 0..* and
    $cpg-endorser named endorser 0..* and
    $cpg-relatedArtifact named relatedArtifact 0..* MS
* extension[topic] ^mustSupport = false
* extension[author] ^mustSupport = false
* extension[editor] ^mustSupport = false
* extension[reviewer] ^mustSupport = false
* extension[endorser] ^mustSupport = false
* copyright MS
* license MS

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: CPGPublishableGuideline
Target: "http://hl7.org/v3"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGPublishableGuideline
Target: "http://hl7.org/fhir/workflow"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGPublishableGuideline
Target: "http://hl7.org/fhir/fivews"

Mapping: objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGPublishableGuideline
Target: "http://hl7.org/fhir/object-implementation"