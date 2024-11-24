Instance: ri-scenario4
InstanceOf: CPGImmunization
Usage: #example
Description: "Example test case - Recommend Immunization - Scenario 4 - Immunization"
* status = #completed
* vaccineCode = $sct#871751006 "Vaccine product containing only Hepatitis A virus antigen (medicinal product)"
* patient = Reference(ri-scenario4-patient)
* occurrenceDateTime = "2020-01-15"