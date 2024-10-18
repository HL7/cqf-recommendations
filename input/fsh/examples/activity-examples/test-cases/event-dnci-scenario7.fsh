Instance: event-dnci-scenario7
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case - Do Not Collect Information - Scenario 7 - Questionnaire Task"
* meta.profile = Canonical(CPGTask)
* modifierExtension[request-doNotPerform].valueBoolean = true
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario7-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)