Instance: dcm-scenario7-mr
InstanceOf: MedicationRequest
Usage: #example
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $sct#376988009 "Levothyroxine sodium 75 microgram oral tablet"
* subject = Reference(dcm-scenario7-patient)
* reasonCode = $sct#40930008 "Hypothyroidism (disorder)"
* dosageInstruction
  * sequence = 1
  * text = "75mcg daily"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral Route (qualifier value)"
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity = 75 'ug' "mcg"
* dispenseRequest
  * validityPeriod
    * start = "2015-01-15"
    * end = "2016-01-15"
  * quantity = 100 $v3-orderableDrugForm-cs#TAB "Tab"
  * expectedSupplyDuration = 30 'd' "days"