Instance: request-am-scenario7
InstanceOf: Task
Usage: #example
* instantiatesCanonical = Canonical(activity-example-administermedication-ad)
* status = #in-progress
* intent = #order
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* for = Reference(am-scenario7-patient)
* input
  * type = $cpg-activity-type-cs#administer-medication "Administer a medication"
  * valueReference = Reference(am-scenario7-mr)