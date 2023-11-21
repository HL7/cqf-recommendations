Instance: chf-scenario1-o2sat1
InstanceOf: CHFO2Sat
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-o2-sat)
* extension[+]
  * url = Canonical(cpg-caseFeatureType)
  * valueCode = #asserted
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#2708-6
* effectiveDateTime = "2019-02-03T05:08:00Z"
* issued = "2019-02-03T05:08:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 87 '%' "%"