Instance: chf-bodyweight-change-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Body Weight Change Activity Defintion"
* insert CHFActivityDefinitionMetadata(chf-bodyweight-change-ad)
* name = "CHFBodyWeightChange"
* description = "Record body weight change"
* kind = #Task
* profile = Canonical(cpg-recordinferencetask)
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
    * language = #text/cql-identifier
    * expression = "Body Weight Change"
    * reference = Canonical(CHF)