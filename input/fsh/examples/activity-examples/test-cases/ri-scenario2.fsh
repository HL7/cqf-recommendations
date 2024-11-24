Instance: ri-scenario2
InstanceOf: cpg-immunizationrequest
Usage: #example
Description: "Example test case - Recommend Immunization - Scenario 2 - ImmunizationRequest"
* status = #draft
* intent = #proposal
* category[immunization] = $cpg-activity-type-cs#recommend-immunization
* priority = #routine
* medicationCodeableConcept = $sct#871751006 "Vaccine product containing only Hepatitis A virus antigen (medicinal product)"
* subject = Reference(ri-scenario2-patient)
* instantiatesCanonical = Canonical(activity-example-recommendimmunization-ad)
* authoredOn = "2020-12-22"