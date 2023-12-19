Instance: chf-creatinine-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Creatinine Activity Defintion"
* insert ExampleActivityDefinitionMetadata(chf-creatinine-ad)
* name = "CHFCreatinine"
* description = "Monitor Creatinine"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location = Reference(chf-locationdefinition)
* participant
  * type = #practitioner
  * role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#70901006 "Creatinine measurement (procedure)"
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"