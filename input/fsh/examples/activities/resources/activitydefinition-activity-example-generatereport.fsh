

Instance: activity-example-generatereport
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to generate a report"
* insert ActivityDefinitionMetadata(activity-example-generatereport)
* extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportWith"
* extension[=].valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/activity-example-generatereport"
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/activity-example-generatereport"
* name = "ActivityExampleGenerateReport"
* title = "Activity Example Generate Report"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-generatereporttask"
* code = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
* doNotPerform = false
* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportWith').value"