Instance: stp-scenario3-request
InstanceOf: cpg-stoptask
Usage: #example
Description: "Example test case - Stop Medication - Scenario 3 - Stop Task"
* meta.profile = Canonical(CPGStopTask)
* instantiatesCanonical = Canonical(activity-example-stopmedication-ad)
* status = #rejected
* intent = #order
* code = $cpg-activity-type-cs#stop-activity "Stop (discontinue) an activity in progress"
* for = Reference(stp-scenario3-patient)
* focus = Reference(stp-scenario3)