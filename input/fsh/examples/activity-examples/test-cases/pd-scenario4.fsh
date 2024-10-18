Instance: pd-scenario4
InstanceOf: CPGCondition
Usage: #example
Description: "Example test case - Propose Diagnosis - Scenario 4 - Condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $sct#422504002 "Ischemic stroke (disorder)"
  * text = "Stroke"
* subject = Reference(pd-scenario4-patient)
* onsetDateTime = "2020-01-15"