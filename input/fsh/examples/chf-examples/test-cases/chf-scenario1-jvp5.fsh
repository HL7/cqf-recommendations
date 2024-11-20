Instance: chf-scenario1-jvp5
InstanceOf: CHFJVP
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-instantiatesCaseFeature)
  * valueCanonical = Canonical(chf-jvp)
* extension[+]
  * url = Canonical(cpg-caseFeatureType)
  * valueCode = #asserted
* extension[+]
  * url = Canonical(cpg-caseFeaturePertinence)
  * valueCode = #strongly-positive
* extension[+]
  * url = Canonical(cpg-pertinent)
  * valueReference = Reference(chf-scenario1-jvp4)
* extension[+]
  * url = Canonical(cpg-pertinent)
  * valueReference = Reference(chf-scenario1-bodyweight4-observation)
* extension[+]
  * url = Canonical(cpg-pertinent)
  * valueReference = Reference(chf-scenario1-urineout3-observation)
* basedOn = Reference(chf-scenario1-jvp)
* status = #final
* category = $observation-category#vital-signs
* code = $chf-example-codes#jvp
* effectiveDateTime = "2019-02-03T07:00:00Z"
* issued = "2019-02-03T07:00:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 7.9 'cm[H2O]' "cmH2O"