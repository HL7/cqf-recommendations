Instance: activity-example-enrollment-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to enroll a patient in a pathway"
* insert ActivityDefinitionMetadata(activity-example-enrollment-ad)
* extension[$cpg-enrollIn].valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/activity-example-pathway"
* modifierExtension[$cpg-isUnenrollment].valueBoolean = false
* name = "ActivityExampleEnrollmentAD"
* title = "Activity Example Enrollment AD"
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