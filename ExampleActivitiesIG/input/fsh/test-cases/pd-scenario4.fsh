Instance: pd-scenario4
InstanceOf: Condition
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $sct#422504002 "Ischemic stroke (disorder)"
  * text = "Stroke"
* subject = Reference(pd-scenario4-patient)
* onsetDateTime = "2020-01-15"