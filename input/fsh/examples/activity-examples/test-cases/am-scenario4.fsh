Instance: am-scenario4
InstanceOf: CPGMedicationAdministration
Usage: #example
Description: "Example test case"
* status = #completed
* medicationCodeableConcept = $sct#333919005 "Fentanyl 25micrograms/hour patch (product)"
* subject = Reference(am-scenario4-patient)
* effectivePeriod
  * start = "2015-01-15T22:03:00+01:00"
  * end = "2015-01-16T02:03:00+01:00"
* request = Reference(am-scenario4-mr)
* dosage
  * text = "apply one patch three times per week"
  * dose = 1 $v3-orderableDrugForm-cs#PATCH "patch"