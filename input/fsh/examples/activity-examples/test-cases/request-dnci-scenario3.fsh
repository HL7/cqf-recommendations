Instance: request-dnci-scenario3
InstanceOf: cpg-questionnairetask
Usage: #example
Description: "Example test case - Do Not Collect Information - Scenario 3 - Questionnaire Task"
* meta.profile = Canonical(CPGTask)
* modifierExtension
  * url = "http://hl7.org/fhir/StructureDefinition/request-doNotPerform"
  * valueBoolean = true
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #accepted
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario3-patient)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)