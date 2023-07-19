Profile: CPGPractitionerRoleDefinition
Parent: PractitionerRole
Id: cpg-practitionerroledefinition
Title: "CPG Practitioner Role Definition"
Description: "Profile of PractitionerRole to establish definitional practitioner roles with the CPG Implementation Guide"
* insert StructureDefinitionMetadata(cpg-practitionerroledefinition)
* identifier 0..0
* active 0..0
* period 0..0
* practitioner 0..0
* organization 0..0
* code 0..* MS
* code from $cpg-common-persona-valueset (preferred)
  * ^binding.description = "Common personas for use with computable guideline content"
* specialty 0..* MS
* location 0..* MS
* location only Reference($cpg-locationdefinition)
* telecom 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0