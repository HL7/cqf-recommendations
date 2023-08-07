Instance: request-ci-scenario3
InstanceOf: Task
Usage: #example
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #rejected
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(ci-scenario3-patient)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)