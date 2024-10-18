Instance: am-scenario2
InstanceOf: CPGMedicationRequest
Usage: #example
Description: "Example test case - Administer Medication - Scenario 2 - MedicationRequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $sct#333919005 "Fentanyl 25micrograms/hour patch (product)"
* subject = Reference(am-scenario2-patient)
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