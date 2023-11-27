Instance: chf-scenario1-encounter
InstanceOf: Encounter
Usage: #example
Description: "CHF Scenario One"
* status = #in-progress
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $sct#183807002 "Inpatient stay 9 days"
* priority = $sct#394849002 "High priority"
* subject = Reference(chf-scenario1-patient)
* episodeOfCare = Reference(chf-scenario1-eoc)
* participant
  * type = $v3-ParticipationType#PPRF "primary performer"
  * individual = Reference(chf-scenario1-practitionerrole)
* period.start = "2019-01-31T05:03:00Z"
* diagnosis
  * condition = Reference(chf-scenario1-condition)
  * use = $diagnosis-role#AD "Admission diagnosis"
* location
  * location = Reference(chf-scenario1-location)
  * status = #active
  * period.start = "2019-01-31T05:03:00Z"