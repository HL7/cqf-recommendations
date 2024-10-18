Instance: ri-scenario4
InstanceOf: CPGImmunization
Usage: #example
Description: "Example test case - Recommend Immunization - Scenario 4 - Immunization"
* status = #completed
* vaccineCode = $sct#14745005 "Hepatitis A vaccine"
* patient = Reference(ri-scenario4-patient)
* occurrenceDateTime = "2020-01-15"