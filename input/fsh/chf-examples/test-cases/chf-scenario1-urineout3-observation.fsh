Instance: chf-scenario1-urineout3-observation
InstanceOf: CHFUrineOut
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-urine-out)
* extension[+]
  * url = Canonical(cpg-caseFeatureType)
  * valueCode = #asserted
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#9192-6
* effectivePeriod
  * start = "2019-02-02T07:00:00Z"
  * end = "2019-02-03T07:00:00Z"
* issued = "2019-02-03T07:00:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 3.8 'L/d' "L/day"