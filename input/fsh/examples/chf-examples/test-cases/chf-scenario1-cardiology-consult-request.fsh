Instance: chf-scenario1-cardiology-consult-request
InstanceOf: chf-cardiology-consult-request
Usage: #example
Description: "CHF Scenario One"
* instantiatesCanonical = Canonical(chf-cardiology-consultation)
* status = #active
* intent = #plan
* category = $sct#386053000 "Evaluation procedure (procedure)"
  * text = "Evaluation"
* doNotPerform = false
* code = $chf-example-codes#cardiology-consultation "Cardiology Consultation"
  * text = "Cardiology Consultation"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* occurrencePeriod
  * start = "2019-02-03T11:00:00Z"
  * end = "2019-02-04T11:00:00Z"
* authoredOn = "2019-02-03"