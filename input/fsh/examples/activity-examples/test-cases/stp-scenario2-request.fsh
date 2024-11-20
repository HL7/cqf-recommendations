Instance: stp-scenario2-request
InstanceOf: cpg-stoptask
Usage: #example
Description: "Example test case - Stop Medication - Scenario 2 - Stop Activity"
* meta.profile = Canonical(CPGStopTask)
* instantiatesCanonical = Canonical(activity-example-stopmedication-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#stop-activity "Stop (discontinue) an activity in progress"
* for = Reference(stp-scenario2-patient)
* focus = Reference(stp-scenario2)