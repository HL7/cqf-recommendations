Profile: CPGMetricReport
Parent: MeasureReport
Id: cpg-metricreport
Title: "CPG Metric Report"
Description: "Records a contextualized metric as calculated within the context of the implementation of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-metricreport)
* extension contains
  CPGInstantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  CPGCaseFeatureType named caseFeatureType 0..1 MS and
  CPGCaseFeaturePertinence named caseFeaturePertinence 0..1 MS
* identifier MS
* status MS
* type MS
* measure only Canonical(CPGComputableMetric)
* measure MS
  * ^short = "Source"
  * ^definition = "A link back to the definition that ultimately produced this MeasureReport. This is typically a Plan or Activity Definition."
* subject 1..1 MS
* date 1..1 MS
  * ^short = "Pertinent information"
  * ^definition = "The pertinent positive or negative information relative to this event."
* period 1..1 MS
* improvementNotation 1..1 MS
* group 1..* MS
  * population 1..* MS
* evaluatedResource MS