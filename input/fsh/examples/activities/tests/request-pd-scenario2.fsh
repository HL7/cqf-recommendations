Instance: request-pd-scenario2
InstanceOf: Task
Usage: #example
* contained = Inline-Instance-for-request-pd-scenario2
* instantiatesCanonical = Canonical(activity-example-proposediagnosis-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(pd-scenario2-patient)
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference = Reference(proposed-diagnosis)

Instance: Inline-Instance-for-request-pd-scenario2
InstanceOf: Condition
Usage: #inline
* id = "proposed-diagnosis"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code = $sct#422504002 "Ischemic stroke (disorder)"
  * text = "Stroke"
* subject = Reference(pd-scenario2-patient)
* onsetDateTime = "2020-01-15"