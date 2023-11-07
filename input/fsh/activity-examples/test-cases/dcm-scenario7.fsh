Instance: dcm-scenario7
InstanceOf: CPGMedicationStatement
Usage: #example
Description: "Example test case"
* status = #stopped
* category = $medication-statement-category#inpatient "Inpatient"
* medicationCodeableConcept = $ndc#0378-1805-10 "Levothyroxine Sodium, 1000 TABLET in 1 BOTTLE, PLASTIC (0378-1805-10) (package)"
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