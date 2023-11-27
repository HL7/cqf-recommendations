Instance: chf-scenario1-o2-sat
InstanceOf: chf-o2-sat-request
Usage: #example
Description: "CHF Scenario One"
* instantiatesCanonical = Canonical(chf-o2-sat-ad)
* status = #completed
* intent = #order
* category = $sct#386053000 "Evaluation procedure (procedure)"
  * text = "Evaluation"
* doNotPerform = false
* code = $sct#104847001 "Oxygen saturation measurement (procedure)"
  * text = "Oxygen saturation measurement"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* occurrenceDateTime = "2019-02-03T13:00:00Z"
* authoredOn = "2019-02-03"