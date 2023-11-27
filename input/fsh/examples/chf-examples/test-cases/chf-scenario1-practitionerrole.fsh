Instance: chf-scenario1-practitionerrole
InstanceOf: cpg-practitionerrole
Usage: #example
Description: "CHF Scenario One"
* active = true
* practitioner = Reference(chf-scenario1-practitioner)
* organization = Reference(chf-scenario1-organization)
* code = $cpg-common-persona-cs#2212 "Specialist medical practitioner"
* specialty = $sct#394579002 "Cardiology"
* location = Reference(chf-scenario1-location)