Profile: CPGPublishableCodeSystem
Parent: $cpg-shareablecodesystem
Id: cpg-publishablecodesystem
Description: "Defines the expectations for publishable code systems used in computable content"
* insert DefinitionMetadata(cpg-publishablecodesystem, StructureDefinition)
* extension contains
    $resource-approvalDate named approvalDate 0..1 MS and
    $codesystem-effectiveDate named effectiveDate 0..1 MS and
    $codesystem-expirationDate named expirationDate 0..1 MS and
    $resource-lastReviewDate named lastReviewDate 0..1 MS and
    $cpg-topic named topic 0..* and
    $codesystem-author named author 0..* and
    $cpg-editor named editor 0..* and
    $cpg-reviewer named reviewer 0..* and
    $cpg-endorser named endorser 0..* and
    $cpg-relatedArtifact named relatedArtifact 0..* MS and
    $codesystem-keyWord named keyWord 0..* and
    $codesystem-sourceReference named sourceReference 0..* MS
* extension[topic]
* extension[author]
* extension[editor]
* extension[reviewer]
* extension[endorser]
* extension[keyWord]
* identifier
* title 1..1
* date 1..1
* contact
* useContext MS
* jurisdiction MS
* purpose
* copyright MS
* caseSensitive 1..1


Mapping: publishablecodesystem-rim
Id: rim
Title: "RIM Mapping"
Source: CPGPublishableCodeSystem
Target: "http://hl7.org/v3"

Mapping: publishablecodesystem-workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGPublishableCodeSystem
Target: "http://hl7.org/fhir/workflow"

Mapping: publishablecodesystem-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGPublishableCodeSystem
Target: "http://hl7.org/fhir/fivews"

Mapping: publishablecodesystem-objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGPublishableCodeSystem
Target: "http://hl7.org/fhir/object-implementation"