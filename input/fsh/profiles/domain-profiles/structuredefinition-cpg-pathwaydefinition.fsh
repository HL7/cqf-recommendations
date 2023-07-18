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
* action.title 1..1 MS
* action.description 1..1 MS
* action.code 1..1 MS
* action.code from $cpg-common-process-valueset (extensible)
* action.code ^binding.description = "High-level processes identified in guideline-based care"
* action.input 0..0
* action.output 0..0
* action.relatedAction 0..0
* action.type 0..0 MS
* action.groupingBehavior 0..0
* action.selectionBehavior 0..0
* action.requiredBehavior 0..0
* action.precheckBehavior 0..0
* action.cardinalityBehavior 0..0
* action.definition[x] only canonical
* action.definition[x] MS
* action.definition[x] ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/PlanDefinition"
* action.transform 0..0 MS
* action.dynamicValue 0..0 MS

// Mapping: rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGPathwayDefinition
// Target: "http://hl7.org/v3"

// Mapping: workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGPathwayDefinition
// Target: "http://hl7.org/fhir/workflow"

// Mapping: w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGPathwayDefinition
// Target: "http://hl7.org/fhir/fivews"

// Mapping: objimpl
// Id: objimpl
// Title: "Object Implementation Information"
// Source: CPGPathwayDefinition
// Target: "http://hl7.org/fhir/object-implementation"