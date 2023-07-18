Profile: CPGOrganization
Parent: Organization
Id: cpg-organization
Description: "CPG organization represents the minimum expectations for communicating organization information as part of a CPG case"
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
* active 1..1 MS
* name 1..1 MS