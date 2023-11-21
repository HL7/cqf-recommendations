Instance: chf-jvp-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Jugular Venous Pressure Activity Defintion"
* insert CHFActivityDefinitionMetadata(chf-jvp-ad)
* name = "CHFJVP"
* description = "Measure jugular venous pressure"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location = Reference(chf-locationdefinition)
* participant
  * type = #practitioner
  * role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = CHFCodes#measure-jvp "Measure jugular venous pressure"
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"