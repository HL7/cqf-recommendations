Instance: chf-scenario1-lasix-iv
InstanceOf: chf-lasix-iv-administration
Usage: #example
Description: "CHF Scenario One"
* status = #completed
* medicationCodeableConcept = $chf-codes#lasix-iv "LASIX IV"
* subject = Reference(chf-scenario1-patient)
* effectiveDateTime = "2019-02-03T07:08:00Z"
* dosage
  * text = "40mg"
  * route = $sct#47625008 "Intravenous Route (qualifier value)"
  * dose = 40 'mg' "mg"