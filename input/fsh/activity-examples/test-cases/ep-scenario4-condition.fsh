Instance: ep-scenario4-condition
InstanceOf: CPGCondition
Usage: #example
Description: "Example test case"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $sct#422504002 "Ischemic stroke (disorder)"
  * text = "Stroke"
* subject = Reference(ep-scenario4-patient)
* encounter = Reference(ep-scenario4-encounter)
* onsetDateTime = "2020-01-15"