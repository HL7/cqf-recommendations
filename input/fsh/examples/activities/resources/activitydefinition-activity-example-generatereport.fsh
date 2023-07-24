Instance: activity-example-generatereport-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to generate a report"
* insert ActivityDefinitionMetadata(activity-example-generatereport-ad)
* extension[$cpg-reportWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/activity-example-generatereport"
* name = "ActivityExampleGenerateReportAD"
* title = "Activity Example Generate Report AD"
* kind = #Task
* profile = Canonical(CPGGenerateReportTask)
* code = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
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
    * expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportWith').value"