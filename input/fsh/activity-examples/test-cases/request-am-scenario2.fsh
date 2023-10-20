Instance: request-am-scenario2
InstanceOf: cpg-administermedicationtask
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-administermedication-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* for = Reference(am-scenario2-patient)
* input
  * type = $cpg-activity-type-cs#administer-medication "Administer a medication"
  * valueReference = Reference(am-scenario2)