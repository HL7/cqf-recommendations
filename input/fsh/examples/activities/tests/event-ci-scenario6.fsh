Instance: event-ci-scenario6
InstanceOf: Task
Usage: #example
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #cancelled
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(ci-scenario6-patient)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)