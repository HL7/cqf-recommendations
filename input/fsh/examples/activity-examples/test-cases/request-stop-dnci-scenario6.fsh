Instance: request-stop-dnci-scenario6
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case - Do Not Collect Infomration - Scenario 6 - Questionnaire Task"
* meta.profile = Canonical(CPGTask)
* modifierExtension[request-doNotPerform].valueBoolean = true
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #rejected
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario6-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)