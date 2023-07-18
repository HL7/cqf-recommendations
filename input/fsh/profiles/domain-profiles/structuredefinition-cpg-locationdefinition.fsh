Profile: CPGLocationDefinition
Parent: Location
Id: cpg-locationdefinition
Title: "CPG Location Definition"
Description: "CPG location represents the minimum expectations for communicating a definitional location as part of computable guideline content"
* insert StructureDefinitionMetadata(cpg-locationdefinition)
* identifier 0..0
* status 0..0 MS
* name 1..1 MS
* mode 1..1 MS
* mode only code
* mode = #kind (exactly)
* type 1..* MS
* telecom 0..0
* address 0..0
* position 0..0
* managingOrganization 0..0
* partOf 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0
* endpoint 0..0