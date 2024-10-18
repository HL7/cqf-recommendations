Instance: request-am-scenario3
InstanceOf: cpg-administermedicationtask
Usage: #example
Description: "Example test case - Administer Medication - Scenario 3 - Administer Medication Task"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-administermedication-ad)
* status = #in-progress
* intent = #order
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* for = Reference(am-scenario3-patient)
* input
  * type = $cpg-activity-type-cs#administer-medication "Administer a medication"
  * valueReference = Reference(am-scenario3)