Instance: request-ci-scenario2
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(ci-scenario2-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)