

Instance: activity-example-reportflag
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to report a flag"
* insert ActivityDefinitionMetadata(activity-example-reportflag)
* name = "ActivityExampleReportFlag"
* title = "Activity Example Report Flag"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recordinferencetask"
* code = $cpg-activity-type-cs#report-flag "Report a flag"
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql-expression
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql-expression
    * expression = "Flag { id: 'flag', status: 'active', code: \"Flag\", subject: Patient }"