Instance: chf-scenario1-bodyweight-change2-observation
InstanceOf: CHFBodyWeightChange
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-bodyweight-change)
* extension[+]
  * url = Canonical(cpg-caseFeatureType)
  * valueCode = #inferred
* status = #final
* category = $observation-category#vital-signs
* code = $chf-example-codes#body-weight-change
* effectiveDateTime = "2019-02-02T07:00:00Z"
* issued = "2019-02-02T07:00:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 1.5 'kg/d' "kg/d"