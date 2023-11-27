Instance: chf-scenario1-cardiology-consult
InstanceOf: chf-cardiology-consult
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-cardiology-consult)
* basedOn = Reference(chf-scenario1-cardiology-consultation)
* status = #preparation
* category = $sct#386053000 "Evaluation procedure (procedure)"
  * text = "Evaluation"
* code = $chf-codes#cardiology-consultation "Cardiology Consultation"
  * text = "Cardiology Consultation"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performedPeriod.start = "2019-02-03T11:00:00Z"