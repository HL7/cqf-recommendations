Instance: am-scenario6
InstanceOf: CPGMedicationAdministration
Usage: #example
Description: "Example test case - Administer Medication - Scenario 6 - MedicationAdministration"
* status = #not-done
* medicationCodeableConcept = $sct#333919005 "Fentanyl 25micrograms/hour patch (product)"
* subject = Reference(am-scenario6-patient)
* effectivePeriod
  * start = "2015-01-15T22:03:00+01:00"
  * end = "2015-01-16T02:03:00+01:00"
* request = Reference(am-scenario6-mr)
* dosage
  * text = "apply one patch three times per week"
  * dose = 1 $v3-orderableDrugForm-cs#PATCH "patch"