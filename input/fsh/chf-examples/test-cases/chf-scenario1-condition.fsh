Instance: chf-scenario1-condition
InstanceOf: Condition
Usage: #example
Description: "CHF Scenario One"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $sct#42343007 "Congestive heart failure (disorder)"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* onsetDateTime = "2019-01-31T05:03:00Z"