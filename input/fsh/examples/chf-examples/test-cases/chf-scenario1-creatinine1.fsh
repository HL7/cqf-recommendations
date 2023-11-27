Instance: chf-scenario1-creatinine1
InstanceOf: CHFCreatinine
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-creatinine)
* extension[+]
  * url = Canonical(cpg-caseFeatureType)
  * valueCode = #asserted
* status = #final
* code = $loinc#39802-4
* effectiveDateTime = "2019-02-03T09:40:00Z"
* issued = "2019-02-03T09:40:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 0.9 'mg/dL' "mg/dL"