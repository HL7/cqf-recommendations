Instance: res-scenario2-request
InstanceOf: cpg-resumetask
Usage: #example
Description: "Example test case - Resume Medication - Scenario 2 - Resume Task"
* meta.profile = Canonical(CPGResumeTask)
* instantiatesCanonical = Canonical(activity-example-resumemedication-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#resume-activity "Resume activity"
* for = Reference(res-scenario2-patient)
* focus = Reference(res-scenario2)