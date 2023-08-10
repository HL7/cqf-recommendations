Instance: request-am-scenario3
InstanceOf: Task
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-administermedication-ad)
* status = #in-progress
* intent = #order
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* for = Reference(am-scenario3-patient)
* input
  * type = $cpg-activity-type-cs#administer-medication "Administer a medication"
  * valueReference = Reference(am-scenario3)