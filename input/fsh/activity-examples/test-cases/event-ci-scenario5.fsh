Instance: event-ci-scenario5
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* basedOn = Reference(request-ci-scenario5)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(ci-scenario5-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)
* output
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference = Reference(ci-scenario5)