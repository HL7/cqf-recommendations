Profile: CPGMetricReport
Parent: MeasureReport
Id: cpg-metricreport
Description: "Records a contextualized metric as calculated within the context of the implementation of a computable clinical practice guideline"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^mustSupport = false
* extension contains
    $cpg-instantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
    $cpg-caseFeatureType named caseFeatureType 0..1 MS and
    $cpg-caseFeaturePertinence named caseFeaturePertinence 0..1 MS
* identifier MS
* status MS
* type MS
* measure only canonical
* measure MS
* measure ^short = "Source"
* measure ^definition = "A link back to the definition that ultimately produced this MeasureReport. This is typically a Plan or Activity Definition."
* measure ^type.targetProfile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-shareablemetric"
* subject 1..1 MS
* date 1..1 MS
* date ^short = "Pertinent information"
* date ^definition = "The pertinent positive or negative information relative to this event."
* period 1..1 MS
* improvementNotation 1..1 MS
* group 1..* MS
* group.population 1..* MS
* evaluatedResource MS