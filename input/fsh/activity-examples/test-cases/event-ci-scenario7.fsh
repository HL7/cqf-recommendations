Instance: event-ci-scenario7
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #cancelled
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(ci-scenario7-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)