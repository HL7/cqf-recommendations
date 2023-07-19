Profile: CPGPathwayDefinition
Parent: $cpg-computableplandefinition
Id: cpg-pathwaydefinition
Title: "CPG Pathway Definition"
Description: "Profile of PlanDefinition as a Clinical Pathway for use with CPG Implementation Guide. A pathway provides groupings of strategies to provide a longitudinal view of the guideline"
* insert StructureDefinitionMetadata(cpg-pathwaydefinition)
* type only CodeableConcept
* type = $plan-definition-type#clinical-protocol
* type MS
* action MS
  * title 1..1 MS
  * description 1..1 MS
  * code 1..1 MS
  * code from $cpg-common-process-valueset (extensible)
    * ^binding.description = "High-level processes identified in guideline-based care"
  * input 0..0
  * output 0..0
  * relatedAction 0..0
  * type 0..0 MS
  * groupingBehavior 0..0
  * selectionBehavior 0..0
  * requiredBehavior 0..0
  * precheckBehavior 0..0
  * cardinalityBehavior 0..0
  * definition[x] only Canonical(PlanDefinition)
  * definitionCanonical MS
  * transform 0..0 MS
  * dynamicValue 0..0 MS