Instance: hol-scenario2-request
InstanceOf: cpg-holdtask
Usage: #example
Description: "Example test case - Hold Medication - Scenario 2 - Hold Task"
* meta.profile = Canonical(CPGHoldTask)
* instantiatesCanonical = Canonical(activity-example-holdmedication-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#hold-activity "Hold an activity in progress"
* for = Reference(hol-scenario2-patient)
* focus = Reference(hol-scenario2)