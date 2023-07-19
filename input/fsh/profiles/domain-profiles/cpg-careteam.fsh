Profile: CPGCareTeam
Parent: CareTeam
Id: cpg-careteam
Title: "CPG Care Team"
Description: "CPG care team represents a care team for a specific patient"
* insert StructureDefinitionMetadata(cpg-careteam)
* identifier MS
* status 1..1 MS
* name 1..1 MS
* subject 1..1 MS
* subject only Reference($cpg-patient)
* encounter only Reference($cpg-encounter)
* encounter MS
* period MS
* participant MS
* participant
  * role MS
  * member only Reference($cpg-practitioner or $cpg-practitionerrole or $cpg-organization or $cpg-relatedperson or $cpg-patient or $cpg-careteam)
  * member MS
* managingOrganization only Reference($cpg-organization)
* managingOrganization MS