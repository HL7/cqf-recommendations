Profile: CPGImmunizationActivity
Parent: CPGComputableActivityDefinition
Id: cpg-immunizationactivity
Title: "CPG Immunization Activity"
Description: "Definition of a recommendation for a particular immunization as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-immunizationactivity)
* kind 1..1 MS
* kind only code
* kind = #ImmunizationRecommendation (exactly)
* profile 1..1 MS
* profile only canonical
* profile = CPGImmunizationrecommendation (exactly)
  * ^short = "At least a CPG ImmunizationRecommendation"
  * ^definition = "The profile that the resulting immunization recommendation must conform to; at least a CPGImmunizationRecommendation, though the activity definition may introduce further constraints."
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



