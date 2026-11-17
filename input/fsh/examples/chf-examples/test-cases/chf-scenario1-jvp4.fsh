Instance: chf-scenario1-jvp4
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
  * url = Canonical(cpg-pertinentTo)
  * valueReference = Reference(chf-scenario1-jvp5)
  // Illustrative weight for this relationship in the synthetic case.
  * valueReference.extension[+]
    * url = Canonical(cpg-pertinenceRating)
    * valueInteger = 8
* status = #final
* category = $observation-category#vital-signs
* code = $chf-example-codes#jvp
* effectiveDateTime = "2019-02-03T07:00:00Z"
* issued = "2019-02-03T07:00:00Z"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* performer = Reference(chf-scenario1-practitionerrole)
* valueQuantity = 8.2 'cm[H2O]' "cmH2O"
