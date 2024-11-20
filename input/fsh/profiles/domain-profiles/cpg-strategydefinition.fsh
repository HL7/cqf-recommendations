Profile: CPGStrategyDefinition
Parent: CPGComputablePlanDefinition
Id: cpg-strategydefinition
Title: "CPG Strategy Definition"
Description: "Profile of PlanDefinition as a Strategy Definition for use with CPG Implementation Guide. Strategies are used to group recommendations together, typically focused on a particular condition or state within the overall guideline or pathway"
* insert StructureDefinitionMetadata(cpg-strategydefinition)
* type only CodeableConcept
* type = $plan-definition-type#workflow-definition
* type MS
* action MS
  * title 1..1 MS
  * description 1..1 MS
  * code 1..1 MS
  * code from $cpg-common-process-valueset (extensible)
    * ^binding.description = "High-level processes identified in guideline-based care"
  * input MS
  * output MS
  * relatedAction MS
  * type 0..0 MS
  * groupingBehavior 0..0
  * selectionBehavior 0..1 MS
  * requiredBehavior 0..0
  * precheckBehavior 0..0
  * cardinalityBehavior 0..0
  * definition[x] only Canonical(CPGRecommendationDefinition)
  * definitionCanonical MS
  * transform 0..0
  * dynamicValue 0..0 MS