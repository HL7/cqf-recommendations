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
* subject only Reference(CPGPatient)
* encounter only Reference(CPGEncounter)
* encounter MS
* period MS
* participant MS
* participant
  * role MS
  * member only Reference(CPGPractitioner or CPGPractitionerRole or $cpg-organization or CPGRelatedPerson or CPGPatient or $cpg-careteam)
  * member MS
* managingOrganization only Reference($cpg-organization)
* managingOrganization MS