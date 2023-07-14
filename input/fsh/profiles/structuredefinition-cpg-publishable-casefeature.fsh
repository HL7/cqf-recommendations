Profile: CPGPublishableCaseFeatureDefinition
Parent: $cpg-shareablestructuredef
Id: cpg-publishablecasefeature
Title: "CPG Publishable Case Feature Definition"
Description: "Profile of StructureDefinition to represent the minimum expectations for a publishable case feature of a clinical practice guideline"
* insert DefinitionMetadata(cpg-publishablecasefeature, StructureDefinition)
* ^date = "2019-06-06"
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
* extension[topic]
* extension[author]
* extension[editor]
* extension[reviewer]
* extension[endorser]
* title 1..1 MS
* date 1..1 MS
* purpose
* copyright MS
* keyword

Mapping: publishable-casefeature-rim
Id: rim
Title: "RIM Mapping"
Source: CPGPublishableCaseFeatureDefinition
Target: "http://hl7.org/v3"

Mapping: publishable-casefeature-workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGPublishableCaseFeatureDefinition
Target: "http://hl7.org/fhir/workflow"

Mapping: publishable-casefeature-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGPublishableCaseFeatureDefinition
Target: "http://hl7.org/fhir/fivews"

Mapping: publishable-casefeature-iso11179
Id: iso11179
Title: "ISO 11179"
Source: CPGPublishableCaseFeatureDefinition
Target: "http://metadata-standards.org/11179/"

Mapping: publishable-casefeature-objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGPublishableCaseFeatureDefinition
Target: "http://hl7.org/fhir/object-implementation"