Profile: CPGOrderSetDefinition
Parent: $cpg-computableplandefinition
Id: cpg-ordersetdefinition
Title: "CPG Order Set Definition"
Description: "Profile of PlanDefinition as a Order Set for use with CPG Implementation Guide"
* insert StructureDefinitionMetadata(cpg-ordersetdefinition)
* type = $plan-definition-type#order-set
* type MS
* action MS
  * title 1..1 MS
  * input 0..0
  * output 0..0
  * groupingBehavior MS
  * selectionBehavior MS
  * requiredBehavior MS
  * precheckBehavior MS
  * cardinalityBehavior MS