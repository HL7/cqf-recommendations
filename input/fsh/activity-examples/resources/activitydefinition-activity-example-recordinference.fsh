Instance: activity-example-recordinference-ad
InstanceOf: CPGRecordInferenceActivity
Usage: #example
Title: "Activity Example Record Inference AD"
* insert KnowledgeArtifactADMetadata(activity-example-recordinference-ad)
* description = "Example Activity Definition for a recommendation to record an inference"
* name = "ActivityExampleRecordInferenceAD"
* kind = #Task
* profile = Canonical(CPGRecordInferenceTask)
* code = $cpg-activity-type-cs#record-inference "Record an inference"
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
    * expression = "Observation { id: 'inference', status: 'final', code: \"Inference\", subject: Patient, issued: Now() }"