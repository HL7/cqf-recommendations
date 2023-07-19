Profile: CPGLocation
Parent: Location
Id: cpg-location
Title: "CPG Location"
Description: "CPG location represents the minimum expectations for communicating location information as part of a CPG case"
* insert StructureDefinitionMetadata(cpg-location)
* status 1..1 MS
* name 1..1 MS
* mode 1..1 MS
* mode only code
* mode = #instance (exactly)
* type 1..* MS
* managingOrganization only Reference($cpg-organization)
* managingOrganization MS