Instance: activity-example-generatereport-ad
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-generatereportactivity
Usage: #example
* title = "Activity Example Generate Report AD"
* insert ExampleActivityDefinitionMetadata(activity-example-generatereport-ad)
* description = "Example Activity Definition for a recommendation to generate a report"
* extension[+]
  * url = $cpg-reportWith
  * valueCanonical = Canonical(activity-example-generatereport-measure)
* name = "ActivityExampleGenerateReportAD"
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