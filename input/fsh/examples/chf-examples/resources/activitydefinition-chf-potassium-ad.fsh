Instance: chf-potassium-ad
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF Potassium Activity Definition"
* insert ExampleActivityDefinitionMetadata(chf-potassium-ad)
* name = "CHFPotassium"
* description = "Monitor Potassium"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
* code = $sct#59573005 "Potassium measurement (procedure)"
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