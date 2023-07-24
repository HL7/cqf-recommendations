

Instance: activity-example-enrollment
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to enroll a patient in a pathway"
* insert ActivityDefinitionMetadata(activity-example-enrollment)
* extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollIn"
* extension[=].valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/activity-example-pathway"
* modifierExtension.url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-isUnenrollment"
* modifierExtension.valueBoolean = false
* name = "ActivityExampleEnrollment"
* title = "Activity Example Enrollment"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollmenttask"
* code = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
* doNotPerform = false
* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollIn').value"