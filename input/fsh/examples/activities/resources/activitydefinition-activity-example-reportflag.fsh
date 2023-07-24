Instance: activity-example-reportflag-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to report a flag"
* insert ActivityDefinitionMetadata(activity-example-reportflag-ad)
* name = "ActivityExampleReportFlagAD"
* title = "Activity Example Report Flag AD"
* kind = #Task
* profile = Canonical(CPGReportFlagTask)
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