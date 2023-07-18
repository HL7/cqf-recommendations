Profile: CPGStrategy
Parent: RequestGroup
Id: cpg-strategy
Description: "Profile of RequestGroup as a Strategy for use with the CPG Implementation Guide. Strategies are patient-specific realiziations of strategy definitions and are used to represent aspects of a care plan that still contain optionality among related patient-specific recommendations, typically focused on a particular condition or state within the overall guideline or pathway"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^mustSupport = false
* instantiatesCanonical 1..1
* instantiatesCanonical only canonical
* instantiatesCanonical ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/PlanDefinition"
* instantiatesCanonical ^mustSupport = false
* priority MS
* subject 1..1
* subject only Reference(Patient)
* subject ^mustSupport = false
* encounter MS
* action ^mustSupport = false
* action.title 1..1
* action.title ^mustSupport = false
* action.description 1..1
* action.description ^mustSupport = false
* action.code 1..1
* action.code from $cpg-common-process-valueset (extensible)
* action.code ^mustSupport = false
* action.code ^binding.description = "High-level processes identified in guideline-based care"
* action.relatedAction MS
* action.type 0..0
* action.type ^mustSupport = false
* action.groupingBehavior 0..0
* action.groupingBehavior ^mustSupport = false
* action.selectionBehavior 0..1 MS
* action.requiredBehavior 0..0
* action.requiredBehavior ^mustSupport = false
* action.precheckBehavior 0..0
* action.precheckBehavior ^mustSupport = false
* action.cardinalityBehavior 0..0
* action.cardinalityBehavior ^mustSupport = false
* action.resource MS