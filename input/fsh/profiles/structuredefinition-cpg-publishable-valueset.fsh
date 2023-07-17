Profile: CPGPublishableValueSet
Parent: $cpg-shareablevalueset
Id: cpg-publishablevalueset
Title: "CPG Publishable Value Set"
Description: "Defines the expectations for publishable value sets used in computable content."
* insert DefinitionMetadata(cpg-publishablevalueset, StructureDefinition)
* extension contains
    $resource-approvalDate named approvalDate 0..1 MS and
    $valueset-effectiveDate named effectiveDate 0..1 MS and
    $valueset-expirationDate named expirationDate 0..1 MS and
    $resource-lastReviewDate named lastReviewDate 0..1 MS and
    $cpg-topic named topic 0..* and
    $valueset-author named author 0..* and
    $cpg-editor named editor 0..* and
    $cpg-reviewer named reviewer 0..* and
    $cpg-endorser named endorser 0..* and
    $cpg-relatedArtifact named relatedArtifact 0..* MS and
    $valueset-keyWord named keyWord 0..* and
    $valueset-sourceReference named sourceReference 0..*
* extension[topic] ^mustSupport = false
* extension[author] ^mustSupport = false
* extension[editor] ^mustSupport = false
* extension[reviewer] ^mustSupport = false
* extension[endorser] ^mustSupport = false
* extension[keyWord] ^mustSupport = false
* extension[sourceReference] ^mustSupport = false
* title 1..1
* title ^mustSupport = false
* date 1..1
* date ^mustSupport = false
* purpose ^mustSupport = false
* copyright MS

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: CPGPublishableValueSet
Target: "http://hl7.org/v3"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGPublishableValueSet
Target: "http://hl7.org/fhir/workflow"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGPublishableValueSet
Target: "http://hl7.org/fhir/fivews"

Mapping: objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGPublishableValueSet
Target: "http://hl7.org/fhir/object-implementation"