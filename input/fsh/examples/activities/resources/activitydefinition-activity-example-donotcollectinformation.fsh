Instance: activity-example-donotcollectinformation-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation not to collect information"
* insert ActivityDefinitionMetadata(activity-example-donotcollectinformation-ad)
* extension[$cpg-collectWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Questionnaire/activity-example-collectinformation"
* name = "ActivityExampleDoNotCollectInformationAD"
* title = "Activity Example Do Not Collect Information AD"
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