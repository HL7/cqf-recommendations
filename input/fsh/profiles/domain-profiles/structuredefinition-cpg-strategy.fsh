Profile: CPGStrategy
Parent: RequestGroup
Id: cpg-strategy
Title: "CPG Strategy"
Description: "Profile of RequestGroup as a Strategy for use with the CPG Implementation Guide. Strategies are patient-specific realiziations of strategy definitions and are used to represent aspects of a care plan that still contain optionality among related patient-specific recommendations, typically focused on a particular condition or state within the overall guideline or pathway"
* insert StructureDefinitionMetadata(cpg-strategy)
* instantiatesCanonical 1..1
* instantiatesCanonical only Canonical(PlanDefinition)
* priority MS
* subject 1..1
* subject only Reference(Patient)
* encounter MS
* action
  * title 1..1
  * description 1..1
  * code 1..1
  * code from $cpg-common-process-valueset (extensible)
    * ^binding.description = "High-level processes identified in guideline-based care"
  * relatedAction MS
  * type 0..0
  * groupingBehavior 0..0
  * selectionBehavior 0..1 MS
  * requiredBehavior 0..0
  * precheckBehavior 0..0
  * cardinalityBehavior 0..0
  * resource MS