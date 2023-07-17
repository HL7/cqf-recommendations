Profile: CPGCaseFeatureDefinition
Parent: $cpg-shareablestructuredef
Id: cpg-casefeaturedefinition
Title: "CPG Case Feature Definition"
Description: "Profile of StructureDefinition to represent a case feature of a clinical practice guideline, optionally specifying formal computational semantics, as well as relationships to other case features and specific aspects of the guideline"
* insert DefinitionMetadata(cpg-casefeaturedefinition, StructureDefinition)
* extension contains
    $cpg-inferenceExpression named inferenceExpression 0..1 MS and
    $cpg-assertionExpression named assertionExpression 0..1 MS and
    $cpg-featureExpression named featureExpression 0..1 MS and
    $cpg-caseFeatureOf named caseFeatureOf 0..* MS
* kind = #resource (exactly)
* abstract = false (exactly)
* derivation 1..1
* derivation = #constraint (exactly)

Mapping: casefeature-rim
Id: rim
Title: "RIM Mapping"
Source: CPGCaseFeatureDefinition
Target: "http://hl7.org/v3"

Mapping: casefeature-workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGCaseFeatureDefinition
Target: "http://hl7.org/fhir/workflow"

Mapping: casefeature-w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGCaseFeatureDefinition
Target: "http://hl7.org/fhir/fivews"

Mapping: casefeature-iso11179
Id: iso11179
Title: "ISO 11179"
Source: CPGCaseFeatureDefinition
Target: "http://metadata-standards.org/11179/"

Mapping: casefeature-objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGCaseFeatureDefinition
Target: "http://hl7.org/fhir/object-implementation"