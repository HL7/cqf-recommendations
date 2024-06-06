Instance: chf-net-io-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Net IO Activity Defintion"
* insert ExampleActivityDefinitionMetadata(chf-net-io-ad)
* name = "CHFNetIO"
* description = "Measure net intake/output"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location = Reference(chf-locationdefinition)
* participant
  * type = #practitioner
  * role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#63061008 "Measuring intake and output (procedure)"
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"