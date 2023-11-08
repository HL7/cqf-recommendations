Instance: chf-urine-out-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Urine Out Activity Defintion"
* insert CHFActivityDefinitionMetadata(chf-urine-out-ad)
* name = "CHFUrineOut"
* description = "Measure urine output"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location = Reference(chf-locationdefinition)
* participant
  * type = #practitioner
  * role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#444990003 "Measurement of urine output (procedure)"
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"