Instance: ri-scenario2
InstanceOf: MedicationRequest
Usage: #example
Description: "Example test case"
* status = #draft
* intent = #proposal
* category[+] = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs#immunization-recommendation
* priority = #routine
* medicationCodeableConcept = $sct#14745005 "Hepatitis A vaccine"
* subject = Reference(ri-scenario2-patient)
* instantiatesCanonical = Canonical(activity-example-recommendimmunization-ad)
* date = "2020-12-22"
