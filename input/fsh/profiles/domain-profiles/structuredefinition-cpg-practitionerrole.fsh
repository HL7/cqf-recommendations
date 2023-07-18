Profile: CPGPractitionerRole
Parent: PractitionerRole
Id: cpg-practitionerrole
Description: "Profile of PractitionerRole for use with CPG Implementation Guide"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-20"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^mustSupport = false
* identifier MS
* identifier.use MS
* identifier.value MS
* practitioner 1..1
* practitioner only Reference($cpg-practitioner)
* practitioner ^mustSupport = false
* code 0..* MS
* code from $cpg-common-persona-valueset (preferred)
* code ^binding.description = "Common personas for use with computable guideline content"