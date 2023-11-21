Instance: event-pd-scenario4
InstanceOf: Task
Usage: #example
Description: "Example test case"
* contained = proposed-diagnosis
* instantiatesCanonical = Canonical(activity-example-proposediagnosis-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(pd-scenario4-patient)
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference = Reference(proposed-diagnosis)
* output
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference = Reference(pd-scenario4)

Instance: proposed-diagnosis
InstanceOf: CPGCondition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code = $sct#422504002 "Ischemic stroke (disorder)"
  * text = "Stroke"
* subject = Reference(pd-scenario4-patient)
* onsetDateTime = "2020-01-15"