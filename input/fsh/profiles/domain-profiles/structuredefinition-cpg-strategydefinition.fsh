Profile: CPGStrategyDefinition
Parent: $cpg-computableplandefinition
Id: cpg-strategydefinition
Title: "CPG Strategy Definition"
Description: "Profile of PlanDefinition as a Strategy Definition for use with CPG Implementation Guide. Strategies are used to group recommendations together, typically focused on a particular condition or state within the overall guideline or pathway"
* insert StructureDefinitionMetadata(cpg-strategydefinition)
* type only CodeableConcept
* type = $plan-definition-type#workflow-definition
* type MS
* action MS
* action.title 1..1 MS
* action.description 1..1 MS
* action.code 1..1 MS
* action.code from $cpg-common-process-valueset (extensible)
* action.code ^binding.description = "High-level processes identified in guideline-based care"
* action.input MS
* action.output MS
* action.relatedAction MS
* action.type 0..0 MS
* action.groupingBehavior 0..0
* action.selectionBehavior 0..1 MS
* action.requiredBehavior 0..0
* action.precheckBehavior 0..0
* action.cardinalityBehavior 0..0
* action.definition[x] only canonical
* action.definition[x] MS
* action.definition[x] ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/PlanDefinition"
* action.transform 0..0
* action.dynamicValue 0..0 MS

// Mapping: rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGStrategyDefinition
// Target: "http://hl7.org/v3"

// Mapping: workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGStrategyDefinition
// Target: "http://hl7.org/fhir/workflow"

// Mapping: w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGStrategyDefinition
// Target: "http://hl7.org/fhir/fivews"

// Mapping: objimpl
// Id: objimpl
// Title: "Object Implementation Information"
// Source: CPGStrategyDefinition
// Target: "http://hl7.org/fhir/object-implementation"