Instance: chf-report-urine-out
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Report Urine Out Activity Defintion"
* insert CHFActivityDefinitionMetadata(chf-report-urine-out)
* extension[+]
  * url = Canonical(cpg-reportWith)
  * valueCanonical = Canonical(chf-urine-out-measure)
* name = "CHFReportUrineOut"
* description = "Record urine output metric"
* kind = #Task
* profile = Canonical(cpg-generatereporttask)
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