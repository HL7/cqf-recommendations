Instance: request-dnci-scenario2
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case"
* meta.profile = Canonical(CPGTask)
* modifierExtension
  * url = "http://hl7.org/fhir/StructureDefinition/request-doNotPerform"
  * valueBoolean = true
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #rejected
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario2-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)