Instance: request-am-scenario5
InstanceOf: cpg-administermedicationtask
Usage: #example
Description: "Example test case - Administer Medication - Scenario 5 - Administer Medication Task"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-administermedication-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* for = Reference(am-scenario5-patient)
* input
  * type = $cpg-activity-type-cs#administer-medication "Administer a medication"
  * valueReference = Reference(am-scenario5-mr)