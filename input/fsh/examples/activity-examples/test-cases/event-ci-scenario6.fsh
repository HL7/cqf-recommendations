Instance: event-ci-scenario6
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #cancelled
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(ci-scenario6-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)