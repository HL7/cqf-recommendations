Instance: ep-scenario4-encounter
InstanceOf: CPGEncounter
Usage: #example
Description: "Example test case - Enroll Patient - Scenario 4 - Encounter"
* status = #in-progress
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $sct#183807002 "Inpatient stay 9 days"
* priority = $sct#394849002 "High priority"
* subject = Reference(ep-scenario4-patient)
* episodeOfCare = Reference(ep-scenario4-eoc)