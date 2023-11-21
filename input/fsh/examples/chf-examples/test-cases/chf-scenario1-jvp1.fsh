Instance: chf-scenario1-jvp1
InstanceOf: CHFJVP
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-jvp)
* extension[+]
  * url = Canonical(cpg-caseFeatureType)
  * valueCode = #asserted
* status = #final
* category = $observation-category#vital-signs
* code = $chf-codes#jvp
* effectiveDateTime = "2019-01-31T07:00:00Z"
* issued = "2019-01-31T07:00:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 9.1 'cm[H2O]' "cmH2O"