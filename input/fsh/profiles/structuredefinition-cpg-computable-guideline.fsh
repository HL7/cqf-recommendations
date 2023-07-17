Profile: CPGComputableGuideline
Parent: $cpg-shareableig
Id: cpg-computableguideline
Title: "CPG Computable Guideline"
Description: "Profile of ImplementationGuide to describe a computable Clinical Practice Guideline"
* insert DefinitionMetadata(cpg-computableguideline, StructureDefinition)
* dependsOn MS
* definition MS

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: CPGComputableGuideline
Target: "http://hl7.org/v3"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGComputableGuideline
Target: "http://hl7.org/fhir/workflow"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGComputableGuideline
Target: "http://hl7.org/fhir/fivews"

Mapping: objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGComputableGuideline
Target: "http://hl7.org/fhir/object-implementation"