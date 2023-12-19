Instance: chf-potassium-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Potassium Activity Defintion"
* insert ExampleActivityDefinitionMetadata(chf-potassium-ad)
* name = "CHFPotassium"
* description = "Monitor Potassium"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location = Reference(chf-locationdefinition)
* participant
  * type = #practitioner
  * role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#59573005 "Potassium measurement (procedure)"
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"