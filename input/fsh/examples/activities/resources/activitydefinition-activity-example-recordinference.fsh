

Instance: activity-example-recordinference
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to record an inference"
* insert ActivityDefinitionMetadata(activity-example-recordinference)
* name = "ActivityExampleRecordInference"
* title = "Activity Example Record Inference"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recordinferencetask"
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