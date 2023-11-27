Instance: chf-scenario1-careteam
InstanceOf: cpg-careteam
Usage: #example
Description: "CHF Scenario One"
* status = #active
* name = "CHF Care Team"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* participant[+]
  * role = $sct#17561000 "Cardiologist"
  * member = Reference(chf-scenario1-practitionerrole)
* participant[+]
  * role = $sct#407542009 "Informal carer"
  * member = Reference(chf-scenario1-relatedperson)
* managingOrganization = Reference(chf-scenario1-organization)