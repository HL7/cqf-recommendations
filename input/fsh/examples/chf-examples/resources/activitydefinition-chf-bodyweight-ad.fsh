Instance: chf-bodyweight-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Body Weight Activity Defintion"
* insert CHFActivityDefinitionMetadata(chf-bodyweight-ad)
* name = "CHFBodyWeight"
* description = "Measure body weight"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location = Reference(chf-locationdefinition)
* participant
  * type = #practitioner
  * role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#307818003 "Weight monitoring (regime/therapy)"
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"