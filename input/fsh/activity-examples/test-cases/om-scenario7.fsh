Instance: om-scenario7
InstanceOf: CPGMedicationDispense
Usage: #example
Description: "Example test case"
* status = #cancelled
* medicationCodeableConcept = $ndc#0378-1805-10 "Levothyroxine Sodium, 1000 TABLET in 1 BOTTLE, PLASTIC (0378-1805-10) (package)"
* subject = Reference(om-scenario7-patient)
* type = $v3-ActCode#RFP "Refill - Part Fill"
* quantity = 100 $v3-orderableDrugForm-cs#TAB
* daysSupply = 30 'd' "Day"
* whenPrepared = "2015-03-16T17:13:00+05:00"
* dosageInstruction
  * sequence = 1
  * text = "75mcg daily daily"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral Route (qualifier value)"
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity = 75 'ug' "mcg"