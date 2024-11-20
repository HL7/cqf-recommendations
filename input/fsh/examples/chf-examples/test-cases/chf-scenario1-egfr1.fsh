Instance: chf-scenario1-egfr1
InstanceOf: CHFEGFR
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-egfr)
* extension[+]
  * url = Canonical(cpg-caseFeatureType)
  * valueCode = #asserted
* status = #final
* category = $observation-category#vital-signs
* code = $chf-example-codes#egfr
* effectiveDateTime = "2019-02-03T09:40:00Z"
* issued = "2019-02-03T09:40:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 65 'mol/mm/m2' "mol/mm/m2"