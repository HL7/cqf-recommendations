Profile: CPGGoal
Parent: Goal
Id: cpg-goal
Description: "Defines the expectations for the representation of goals used in computable guidelines"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^mustSupport = false
* extension contains $cpg-goalFor named goalFor 0..* MS
* identifier MS
* lifecycleStatus MS
* achievementStatus MS
* category MS
* priority MS
* description MS
* subject MS
* start[x] MS
* target MS
* target.measure MS
* target.detail[x] MS