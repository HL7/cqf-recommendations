Instance: chf-scenario1-lasix-po-mr
InstanceOf: chf-lasix-po-request
Usage: #example
Description: "CHF Scenario One"
* status = #draft
* intent = #proposal
* priority = #routine
* medicationCodeableConcept = $chf-codes#lasix-po "LASIX PO"
* subject = Reference(chf-scenario1-patient)
* instantiatesCanonical = Canonical(chf-lasix-po)
* dosageInstruction
  * sequence = 1
  * text = "40mg"
  * route = $sct#26643006 "Oral Route (qualifier value)"
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity = 40 'mg' "mg"