Instance: activity-example-recordinference-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to record an inference"
* insert ActivityDefinitionMetadata(activity-example-recordinference-ad)
* name = "ActivityExampleRecordInferenceAD"
* title = "Activity Example Record Inference AD"
* kind = #Task
* profile = Canonical(CPGRecordInferenceTask)
* code = $cpg-activity-type-cs#record-inference "Record an inference"
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
    * expression = "Observation { id: 'inference', status: 'final', code: \"Inference\", subject: Patient, issued: Now() }"