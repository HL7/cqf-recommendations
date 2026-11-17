Instance: dcm-scenario7
InstanceOf: CPGMedicationStatement
Usage: #example
Description: "Example test case - Document Medication - Scenario 7 - MedicationStatement"
* status = #stopped
* category = $medication-statement-category#inpatient "Inpatient"
* medicationCodeableConcept = $rxnorm#966222 "levothyroxine sodium 0.075 MG Oral Tablet"
* subject = Reference(dcm-scenario7-patient)
* effectiveDateTime = "2015-01-23"
* dateAsserted = "2015-02-22"
* informationSource = Reference(dcm-scenario7-patient)
* derivedFrom = Reference(dcm-scenario7-mr)
* reasonCode = $sct#40930008 "Hypothyroidism (disorder)"
* dosage
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