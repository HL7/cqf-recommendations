Profile: CPGComputableMetric
Parent: $cpg-shareablemetric
Id: cpg-computablemetric
Title: "CPG Computable Metric"
Description: "Defines the minimum expectations and behavior for a computable metric for use with content conforming to the CPG implementation guide"
* insert DefinitionMetadata(cpg-computablemetric, StructureDefinition)
* subject[x] MS
* library 0..1 MS
* library only canonical
* library ^type.targetProfile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computablelibrary"
* scoring 1..1 MS
* compositeScoring 0..1 MS
* type MS
* improvementNotation 1..1 MS
* group 1..* MS
* group.population 1..* MS

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: CPGComputableMetric
Target: "http://hl7.org/v3"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGComputableMetric
Target: "http://hl7.org/fhir/workflow"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGComputableMetric
Target: "http://hl7.org/fhir/fivews"

Mapping: objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGComputableMetric
Target: "http://hl7.org/fhir/object-implementation"