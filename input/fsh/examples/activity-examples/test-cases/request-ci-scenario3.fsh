Instance: request-ci-scenario3
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case - Collect Information - Scenario 3 - Questionnaire Task"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #rejected
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(ci-scenario3-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)