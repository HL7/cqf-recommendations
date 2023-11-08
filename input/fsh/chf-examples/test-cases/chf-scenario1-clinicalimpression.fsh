Instance: chf-scenario1-clinicalimpression
InstanceOf: CPGClinicalImpression
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-impressionFor)
  * valueReference = Reference(chf-scenario1-eoc)
* status = #completed
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* assessor = Reference(chf-scenario1-practitionerrole)
* protocol = Canonical(chf-pathway)