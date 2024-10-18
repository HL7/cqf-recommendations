Instance: event-ci-scenario4
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case - Collect Information - Scenario 4 - Questionnaire Task"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnsm-scenario4-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)
* output
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference = Reference(ci-scenario4)