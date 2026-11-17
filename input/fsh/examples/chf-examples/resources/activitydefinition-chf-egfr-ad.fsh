Instance: chf-egfr-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF eGFR Activity Definition"
* insert ExampleActivityDefinitionMetadata(chf-egfr-ad)
* name = "CHFEGFR"
* description = "Measure eGFR"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $chf-example-codes#measure-egfr "Measure eGFR"
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
