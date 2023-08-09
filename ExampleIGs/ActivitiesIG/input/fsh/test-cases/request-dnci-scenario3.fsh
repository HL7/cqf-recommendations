Instance: request-dnci-scenario3
InstanceOf: Task
Usage: #example
Description: "Example test case"
* modifierExtension
  * url = "http://hl7.org/fhir/StructureDefinition/request-doNotPerform"
  * valueBoolean = true
* instantiatesCanonical = Canonical(activity-example-collectinformation-ad)
* status = #accepted
* intent = #order
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(dnci-scenario3-patient)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)