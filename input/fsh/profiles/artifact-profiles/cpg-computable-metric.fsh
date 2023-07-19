Profile: CPGComputableMetric
Parent: $cpg-shareablemetric
Id: cpg-computablemetric
Title: "CPG Computable Metric"
Description: "Defines the minimum expectations and behavior for a computable metric for use with content conforming to the CPG implementation guide"
* insert StructureDefinitionMetadata(cpg-computablemetric)
* subject[x] MS
* library 0..1 MS
* library only Canonical(CPGComputableLibrary)
* scoring 1..1 MS
* compositeScoring 0..1 MS
* type MS
* improvementNotation 1..1 MS
* group 1..* MS
  * population 1..* MS