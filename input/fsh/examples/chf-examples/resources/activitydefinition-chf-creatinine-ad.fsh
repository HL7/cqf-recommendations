Instance: chf-creatinine-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Creatinine Activity Definition"
* insert ExampleActivityDefinitionMetadata(chf-creatinine-ad)
* name = "CHFCreatinine"
* description = "Monitor Creatinine"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $sct#70901006 "Creatinine measurement (procedure)"
* intent = #proposal
* doNotPerform = false
* location = Reference(chf-locationdefinition)
* participant
  * type = #practitioner
  * role = $practitioner-role#nurse "Nurse"
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"