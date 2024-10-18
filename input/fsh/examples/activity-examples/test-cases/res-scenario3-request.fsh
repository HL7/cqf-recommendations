Instance: res-scenario3-request
InstanceOf: cpg-resumetask
Usage: #example
Description: "Example test case - Resume Medication - Scenario 3 - Resume Task"
* meta.profile = Canonical(CPGResumeTask)
* instantiatesCanonical = Canonical(activity-example-resumemedication-ad)
* status = #rejected
* intent = #order
* code = $cpg-activity-type-cs#resume-activity "Resume activity"
* for = Reference(res-scenario3-patient)
* focus = Reference(res-scenario3)