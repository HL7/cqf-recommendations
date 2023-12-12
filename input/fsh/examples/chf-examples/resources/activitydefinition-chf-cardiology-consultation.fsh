Instance: chf-cardiology-consultation
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Cardiology Consultation Activity Defintion"
* insert ExampleActivityDefinitionMetadata(chf-cardiology-consultation)
* name = "CHFCardiologyConsultation"
* description = "Cardiology consultation as part of a congestive heart failure care pathway"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* productCodeableConcept = CHFCodes#cardiology-consultation "Cardiology Consultation"
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"