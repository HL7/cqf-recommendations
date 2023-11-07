Instance: ri-scenario2
InstanceOf: CPGMedicationRequest
Usage: #example
Description: "Example test case"
* status = #draft
* intent = #proposal
* category[+] = $cpg-activity-type-cs#recommend-immunization
* priority = #routine
* medicationCodeableConcept = $sct#14745005 "Hepatitis A vaccine"
* subject = Reference(ri-scenario2-patient)
* instantiatesCanonical = Canonical(activity-example-recommendimmunization-ad)
* authoredOn = "2020-12-22"