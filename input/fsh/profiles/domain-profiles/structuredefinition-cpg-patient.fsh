Profile: CPGPatient
Parent: Patient
Id: cpg-patient
Description: "Profile of Patient for use with CPG Implementation Guide"
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
* active MS
* name 1..* MS
* name.use MS
* name.text MS