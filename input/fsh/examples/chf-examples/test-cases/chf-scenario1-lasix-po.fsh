Instance: chf-scenario1-lasix-po
InstanceOf: chf-lasix-po-administration
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(event-basedOn)
  * valueReference = Reference(chf-scenario1-lasix-po-mr)
* status = #on-hold
* medicationCodeableConcept = $chf-codes#lasix-po "LASIX PO"
* subject = Reference(chf-scenario1-patient)
* effectiveDateTime = "2019-02-03T13:00:00Z"
* dosage
  * text = "40mg"
  * route = $sct#26643006 "Oral Route (qualifier value)"
  * dose = 40 'mg' "mg"