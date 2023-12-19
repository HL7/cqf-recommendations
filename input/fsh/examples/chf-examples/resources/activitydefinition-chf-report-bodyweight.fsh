Instance: chf-report-bodyweight
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Report Body Weight Activity Defintion"
* insert ExampleActivityDefinitionMetadata(chf-report-bodyweight)
* extension[+]
  * url = Canonical(cpg-reportWith)
  * valueCanonical = Canonical(chf-bodyweight-measure)
* name = "CHFReportBodyWeight"
* description = "Record body weight metric"
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