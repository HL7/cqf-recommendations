Instance: activity-example-recorddetectedissue-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to record a detected issue"
* insert ActivityDefinitionMetadata(activity-example-recorddetectedissue-ad)
* name = "ActivityExampleRecordDetectedIssueAD"
* title = "Activity Example Record Detected Issue AD"
* kind = #Task
* profile = Canonical(CPGRecordDetectedIssueTask)
* code = $cpg-activity-type-cs#record-detected-issue "Record a detected issue"
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
    * expression = "DetectedIssue { id: 'detected-issue', status: 'final', code: \"Time-related Detected Issue\", severity: 'high', patient: Patient, identified: Today() }"