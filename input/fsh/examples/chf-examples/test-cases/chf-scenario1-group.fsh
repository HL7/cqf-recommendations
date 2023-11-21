Instance: chf-scenario1-group
InstanceOf: cpg-group
Usage: #example
Description: "CHF Scenario One"
* active = true
* type = #person
* actual = true
* code = $sct#42343007 "Congestive heart failure (disorder)"
* name = "Congestive Heart Failure Patients"
* member.entity = Reference(chf-scenario1-patient)