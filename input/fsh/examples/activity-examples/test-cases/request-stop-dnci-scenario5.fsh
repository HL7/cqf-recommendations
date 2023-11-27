Instance: request-stop-dnci-scenario5
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case"
* meta.profile = Canonical(CPGTask)
* modifierExtension[request-doNotPerform].valueBoolean = true
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #accepted
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario5-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)