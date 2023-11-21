Instance: request-dnci-scenario4
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #ready
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario4-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)