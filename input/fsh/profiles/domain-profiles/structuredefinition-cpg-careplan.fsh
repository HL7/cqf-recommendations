Profile: CPGCarePlan
Parent: CarePlan
Id: cpg-careplan
Title: "CPG Care Plan"
Description: "CPG care plan represents the care plan for a specific patient. The care plan may be associated with management of a specific condition, and instantiated based on a particular pathway or strategy, or it may be a combined care plan, focused on the patient, and managing treatment for multiple conditions, instantiated based on multiple pathways and strategies"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^mustSupport = false
* extension contains $cpg-planFor named planFor 0..* MS
* identifier MS
* instantiatesCanonical MS
* status MS
* intent MS
* category 1..* MS
* title 1..1 MS
* description MS
* subject only Reference($cpg-patient)
* subject MS
// * encounter only Reference($cpg-encounter)
* encounter MS
* period MS
* created MS
* careTeam only Reference($cpg-careteam)
* careTeam MS
// * addresses only Reference($cpg-condition)
* addresses MS
* goal MS
* activity MS
* activity.outcomeReference MS
// * activity.reference only Reference(Appointment or $cpg-communicationrequest or $cpg-medicationrequest or $cpg-task or $cpg-servicerequest or $cpg-strategy)
* activity.reference MS
* activity.detail MS
* activity.detail.kind 1..1 MS
* activity.detail.instantiatesCanonical MS
* activity.detail.code 1..1 MS
* activity.detail.reasonCode MS
* activity.detail.status MS
* activity.detail.doNotPerform MS
* activity.detail.scheduled[x] only Timing or Period
* activity.detail.scheduled[x] MS
* activity.detail.location only Reference($cpg-location)
* activity.detail.location MS
// * activity.detail.performer only Reference($cpg-practitioner or $cpg-practitionerrole or $cpg-organization or $cpg-relatedperson or $cpg-patient or $cpg-careteam)
* activity.detail.performer MS
* activity.detail.description 1..1 MS