Instance: request-dnci-scenario5
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case - Do Not Collect Information - Scenario 5 - Questionnaire Task"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #ready
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario5-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)