Instance: hol-scenario3-request
InstanceOf: cpg-holdtask
Usage: #example
Description: "Example test case - Hold Medication - Scenario 3 - Hold Task"
* meta.profile = Canonical(CPGHoldTask)
* instantiatesCanonical = Canonical(activity-example-holdmedication-ad)
* status = #rejected
* intent = #order
* code = $cpg-activity-type-cs#hold-activity "Hold an activity in progress"
* for = Reference(hol-scenario3-patient)
* focus = Reference(hol-scenario3)