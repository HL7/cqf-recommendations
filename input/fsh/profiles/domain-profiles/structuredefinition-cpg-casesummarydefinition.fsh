// Profile: CPGCaseSummaryDefinition
// Parent: $cpg-computablegraphdefinition
// Id: cpg-casesummarydefinition
// Title: "CPG Case Summary Definition"
// Description: "CPG Case Summary Definition provides a computable definition for all the case features and feature groups relevant to a clinical practice guideline"
// * insert StructureDefinitionMetadata(cpg-casesummarydefinition)
// * extension contains $cpg-summaryDefinitionFor named summaryDefinitionFor 0..1 MS
// * extension[summaryDefinitionFor] ^short = "Which guideline?"
// * extension[summaryDefinitionFor] ^definition = "Specifies which clinical practice guideline this is a summary definition for."

// Mapping: rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGCaseSummaryDefinition
// Target: "http://hl7.org/v3"

// Mapping: workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGCaseSummaryDefinition
// Target: "http://hl7.org/fhir/workflow"

// Mapping: w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGCaseSummaryDefinition
// Target: "http://hl7.org/fhir/fivews"

// Mapping: objimpl
// Id: objimpl
// Title: "Object Implementation Information"
// Source: CPGCaseSummaryDefinition
// Target: "http://hl7.org/fhir/object-implementation"