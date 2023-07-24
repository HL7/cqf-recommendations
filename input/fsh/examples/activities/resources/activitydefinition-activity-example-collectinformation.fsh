Instance: activity-example-collectinformation
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to collect information"
* insert ActivityDefinitionMetadata(activity-example-collectinformation)
* extension[CPGCollectWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Questionnaire/activity-example-collectinformation"
* name = "ActivityExampleCollectInformation"
* title = "Activity Example Collect Information"
* kind = #Task
* profile = $cpg-questionnairetask
* code = $cpg-activity-type-cs#collect-information "Collect information"
* doNotPerform = false
* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value"