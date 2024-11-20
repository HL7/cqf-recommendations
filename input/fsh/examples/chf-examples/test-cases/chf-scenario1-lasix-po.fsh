Instance: chf-scenario1-lasix-po
InstanceOf: chf-lasix-po-administration
Usage: #example
Description: "CHF Scenario One"
* status = #on-hold
* medicationCodeableConcept = $chf-example-codes#lasix-po "LASIX PO"
* subject = Reference(chf-scenario1-patient)
* effectiveDateTime = "2019-02-03T13:00:00Z"
* request = Reference(chf-scenario1-lasix-po-mr)
* dosage
  * text = "40mg"
  * route = $sct#26643006 "Oral Route (qualifier value)"
  * dose = 40 'mg' "mg"