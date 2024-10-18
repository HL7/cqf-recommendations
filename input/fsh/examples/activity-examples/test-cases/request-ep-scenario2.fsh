Instance: request-ep-scenario2
InstanceOf: cpg-enrollmenttask
Usage: #example
Description: "Example test case - Enroll Patient - Scenario 2 - Enrollment Task"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-enrollment-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
* for = Reference(ep-scenario2-patient)
* input[pathway]
  * type = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
  * valueCanonical = Canonical(activity-example-pathway-pd)