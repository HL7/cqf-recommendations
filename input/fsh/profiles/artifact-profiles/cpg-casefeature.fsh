Profile: CPGCaseFeatureDefinition
Parent: StructureDefinition
Id: cpg-casefeaturedefinition
Title: "CPG Case Feature Definition"
Description: "Profile of StructureDefinition to represent a case feature of a clinical practice guideline, optionally specifying formal computational semantics, as well as relationships to other case features and specific aspects of the guideline"
* insert StructureDefinitionMetadata(cpg-casefeaturedefinition)
* extension contains
  $cpg-inferenceExpression named inferenceExpression 0..1 MS and
  $cpg-assertionExpression named assertionExpression 0..1 MS and
  $cpg-featureExpression named featureExpression 0..1 MS and
  $cpg-caseFeatureOf named caseFeatureOf 0..* MS
* kind = #resource (exactly)
* abstract = false (exactly)
* derivation 1..1
* derivation = #constraint (exactly)