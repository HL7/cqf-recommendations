Profile: CPGPublishableQuestionnaire
Parent: $cpg-shareablequestionnaire
Id: cpg-publishablequestionnaire
Title: "CPG Publishable Questionnaire"
Description: "Profile of Questionnaire to represent the minimum expectations for a publishable questionnaire used in a clinical practice guideline"
* insert DefinitionMetadata(cpg-publishablequestionnaire, StructureDefinition)
* extension contains
  $cpg-topic named topic 0..* and
  $cpg-author named author 0..* and
  $cpg-editor named editor 0..* and
  $cpg-reviewer named reviewer 0..* and
  $cpg-endorser named endorser 0..* and
  $cpg-relatedArtifact named relatedArtifact 0..* MS
* title 1..1 MS
* date 1..1 MS
* copyright MS
* approvalDate MS
* lastReviewDate MS
* effectivePeriod MS
* code MS

// Mapping: workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGPublishableQuestionnaire
// Target: "http://hl7.org/fhir/workflow"

// Mapping: rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGPublishableQuestionnaire
// Target: "http://hl7.org/v3"

// Mapping: w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGPublishableQuestionnaire
// Target: "http://hl7.org/fhir/fivews"

// Mapping: objimpl
// Id: objimpl
// Title: "Object Implementation Information"
// Source: CPGPublishableQuestionnaire
// Target: "http://hl7.org/fhir/object-implementation"

// Mapping: v2
// Id: v2
// Title: "HL7 v2 Mapping"
// Source: CPGPublishableQuestionnaire
// Target: "http://hl7.org/v2"