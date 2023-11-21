Instance: chf-scenario1-bodyweight1-observation
InstanceOf: CHFBodyWeight
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-bodyweight)
* extension[+]
  * url = Canonical(cpg-caseFeatureType)
  * valueCode = #asserted
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#29463-7
* effectiveDateTime = "2019-01-31T07:00:00Z"
* issued = "2019-01-31T07:00:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 96 'kg' "kg"