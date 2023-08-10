Instance: event-dnci-scenario8
InstanceOf: Task
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario8-patient)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)
* output
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference = Reference(dnci-scenario8)