Instance: ep-scenario4-encounter
InstanceOf: Encounter
Usage: #example
Description: "Example test case"
* status = #in-progress
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $sct#183807002 "Inpatient stay 9 days"
* priority = $sct#394849002 "High priority"
* subject = Reference(ep-scenario4-patient)
* episodeOfCare = Reference(ep-scenario4-eoc)