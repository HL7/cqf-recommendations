Instance: am-scenario5-mr
InstanceOf: CPGMedicationRequest
Usage: #example
Description: "Example test case - Administer Medication - Scenario 5 - MedicationRequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $sct#769510009 "Product containing precisely fentanyl 25 microgram/1 hour prolonged-release transdermal patch (clinical drug)"
* subject = Reference(am-scenario5-patient)
* dosageInstruction
  * sequence = 1
  * text = "apply one patch three times per week"
  * timing.repeat
    * frequency = 3
    * period = 1
    * periodUnit = #wk
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity = 1 $v3-orderableDrugForm-cs#PATCH "patch"
* dispenseRequest
  * validityPeriod
    * start = "2015-01-15"
    * end = "2016-01-15"
  * quantity = 6 $v3-orderableDrugForm-cs#PATCH "patch"
  * expectedSupplyDuration = 14 'd' "days"