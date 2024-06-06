Instance: chf-o2-sat-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Oxygen Saturation Activity Defintion"
* insert ExampleActivityDefinitionMetadata(chf-o2-sat-ad)
* name = "CHFO2Sat"
* description = "Monitor Oxygen Saturation"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location = Reference(chf-locationdefinition)
* participant
  * type = #practitioner
  * role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#104847001 "Oxygen saturation measurement (procedure)"
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"