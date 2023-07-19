Profile: CPGCareTeamDefinition
Parent: CareTeam
Id: cpg-careteamdefinition
Title: "CPG Care Team Definition"
Description: "Defines the minimum expectations for a definitional care team for use with computable guideline content"
* insert StructureDefinitionMetadata(cpg-careteamdefinition)
* identifier MS
* status 0..0
* name 1..1 MS
* subject 0..0
* encounter 0..0
* period 0..0
* participant MS
* participant
  * role MS
  * member only Reference($cpg-practitionerroledefinition or CPGCareTeamDefinition)
  * member MS
* managingOrganization 0..0
* telecom 0..0