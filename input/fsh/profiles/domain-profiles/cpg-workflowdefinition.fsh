Profile: CPGWorkflowDefinition
Parent: $cpg-computableplandefinition
Id: cpg-workflowdefinition
Description: "Profile of PlanDefinition as a Workflow Definition for use with CPG Implementation Guide"
* insert StructureDefinitionMetadata(cpg-workflowdefinition)
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
  * participant MS
    * extension contains $cpg-participantCapabilityStatement named participantCapabilityStatement 0..1 MS
  * type 0..0 MS
  * groupingBehavior 0..0
  * selectionBehavior 0..0
  * requiredBehavior 0..0
  * precheckBehavior 0..0
  * cardinalityBehavior 0..0
  * definition[x] MS
  * transform 0..0
  * dynamicValue 0..0 MS