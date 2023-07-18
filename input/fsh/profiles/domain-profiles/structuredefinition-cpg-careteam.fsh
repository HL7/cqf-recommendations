Profile: CPGCareTeam
Parent: CareTeam
Id: cpg-careteam
Description: "CPG care team represents a care team for a specific patient"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^mustSupport = false
* identifier MS
* status 1..1 MS
* name 1..1 MS
* subject 1..1 MS
* subject only Reference($cpg-patient)
// * encounter only Reference($cpg-encounter)
* encounter MS
* period MS
* participant MS
* participant.role MS
// * participant.member only Reference($cpg-practitioner or $cpg-practitionerrole or $cpg-organization or $cpg-relatedperson or $cpg-patient or CPGCareTeam)
* participant.member MS
* managingOrganization only Reference($cpg-organization)
* managingOrganization MS