Instance: activity-example-generatereport-ad
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-generatereportactivity
Usage: #example
Title: "Activity Example Generate Report AD"
* description = "Example Activity Definition for a recommendation to generate a report"
* insert ActivityDefinitionMetadata(activity-example-generatereport-ad)
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
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/fhirpath
    * expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportWith').value"