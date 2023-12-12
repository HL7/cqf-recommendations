Instance: activity-example-enrollment-ad
InstanceOf: CPGEnrollmentActivity
Usage: #example
* title = "Activity Example Enrollment AD"
* insert ExampleActivityDefinitionMetadata(activity-example-enrollment-ad)
* description = "Example Activity Definition for a recommendation to enroll a patient in a pathway"
* extension[+]
  * url = $cpg-enrollIn
  * valueCanonical = Canonical(activity-example-pathway-pd)
* modifierExtension[$cpg-isUnenrollment].valueBoolean = false
* name = "ActivityExampleEnrollmentAD"
* kind = #Task
* profile = Canonical(CPGEnrollmentTask)
* code = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql
    * expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollIn').value"