Instance: event-dnci-scenario2
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #in-progress
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario2-patient)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)