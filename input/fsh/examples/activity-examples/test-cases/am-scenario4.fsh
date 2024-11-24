Instance: am-scenario4
InstanceOf: CPGMedicationAdministration
Usage: #example
Description: "Example test case - Administer Medication - Scenario 4 - MedicationAdministration"
* status = #completed
* medicationCodeableConcept = $sct#769510009 "Product containing precisely fentanyl 25 microgram/1 hour prolonged-release transdermal patch (clinical drug)"
* subject = Reference(am-scenario4-patient)
* effectivePeriod
  * start = "2015-01-15T22:03:00+01:00"
  * end = "2015-01-16T02:03:00+01:00"
* request = Reference(am-scenario4-mr)
* dosage
  * text = "apply one patch three times per week"
  * dose = 1 $v3-orderableDrugForm-cs#PATCH "patch"