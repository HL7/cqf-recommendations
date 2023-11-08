Instance: chf-scenario1-potassium1
InstanceOf: CHFPotassium
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-potassium)
* extension[+]
  * url = Canonical(cpg-caseFeatureType)
  * valueCode = #asserted
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#86919-8
* effectiveDateTime = "2019-02-03T09:40:00Z"
* issued = "2019-02-03T09:40:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 3.9 'meq/L' "mEq/L"