

Instance: activity-example-donotcollectinformation
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation not to collect information"
* insert ActivityDefinitionMetadata(activity-example-donotcollectinformation)
* extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith"
* extension[=].valueCanonical = "http://hl7.org/fhir/uv/cpg/Questionnaire/activity-example-collectinformation"
* name = "ActivityExampleDoNotCollectInformation"
* title = "Activity Example Do Not Collect Information"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* code = $cpg-activity-type-cs#collect-information "Collect information"
* doNotPerform = true
* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value"