Instance: activity-example-reportflag-ad
InstanceOf: CPGReportFlagActivity
Usage: #example
* title = "Activity Example Report Flag AD"
* description = "Example Activity Definition for a recommendation to report a flag"
* insert KnowledgeArtifactADMetadata(activity-example-reportflag-ad)
* name = "ActivityExampleReportFlagAD"
* kind = #Task
* profile = Canonical(CPGReportFlagTask)
* code = $cpg-activity-type-cs#report-flag "Report a flag"
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql-expression
    * expression = "Flag { id: 'flag', status: 'active', code: \"Flag\", subject: Patient }"