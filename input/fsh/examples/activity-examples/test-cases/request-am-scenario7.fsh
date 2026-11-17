Instance: request-am-scenario7
InstanceOf: cpg-administermedicationtask
Usage: #example
Description: "Example test case - Administer Medication - Scenario 7 - Administer Medication Task"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The ordered task to administer the medication specified by the example patient's medication request is in progress.</p></div>"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-administermedication-ad)
* status = #in-progress
* intent = #order
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* for = Reference(am-scenario7-patient)
* input
  * type = $cpg-activity-type-cs#administer-medication "Administer a medication"
  * valueReference = Reference(am-scenario7-mr)
