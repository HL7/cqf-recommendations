// Illustrative patient-specific result of applying ckd-hypertension-options-pd, showing the
// cpg-preferenceBehavior values copied from the PlanDefinition actions to the RequestGroup actions.

Instance: ckd-hypertension-options-patient
InstanceOf: CPGPatient
Usage: #example
Description: "Example patient for the CKD hypertension therapy options example"
* active = true
* name
  * use = #usual
  * text = "Example Patient"
  * family = "Patient"
  * given = "Example"
* gender = #male
* birthDate = "1962-04-12"

Instance: ckd-hypertension-options-rg
InstanceOf: RequestGroup
Usage: #example
Title: "CKD Hypertension Therapy Options Result"
Description: "Illustrative result of applying the CKD hypertension therapy options recommendation to a patient with no history of ACE inhibitor angioedema. All three options are applicable, and each RequestGroup action carries the preference behavior copied from the corresponding PlanDefinition action. The child requests have intent option; the RequestGroup establishes the overall intent."
* instantiatesCanonical = Canonical(ckd-hypertension-options-pd)
* status = #draft
* intent = #proposal
* subject = Reference(ckd-hypertension-options-patient)
* action
  * title = "Initial antihypertensive therapy in CKD with albuminuria"
  * description = "Start antihypertensive therapy, choosing one of the following options."
  * groupingBehavior = #logical-group
  * selectionBehavior = #at-most-one
  * action[+]
    * extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-preferenceBehavior"
    * extension[=].valueCodeableConcept = CPGPreferenceBehaviorCS#preferred "Preferred"
    * title = "Start an ACE inhibitor"
    * resource = Reference(ckd-hypertension-options-ace-inhibitor)
  * action[+]
    * extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-preferenceBehavior"
    * extension[=].valueCodeableConcept = CPGPreferenceBehaviorCS#recommended "Recommended"
    * title = "Start an angiotensin receptor blocker"
    * resource = Reference(ckd-hypertension-options-arb)
  * action[+]
    * extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-preferenceBehavior"
    * extension[=].valueCodeableConcept = CPGPreferenceBehaviorCS#not-recommended "Not Recommended"
    * title = "Start a dihydropyridine calcium channel blocker"
    * resource = Reference(ckd-hypertension-options-ccb)

Instance: ckd-hypertension-options-ace-inhibitor
InstanceOf: CPGMedicationRequest
Usage: #example
Description: "ACE inhibitor option in the CKD hypertension therapy options result"
* instantiatesCanonical = Canonical(ckd-hypertension-ace-inhibitor-ad)
* status = #draft
* intent = #option
* doNotPerform = false
* medicationCodeableConcept = $rxnorm#29046 "lisinopril"
* subject = Reference(ckd-hypertension-options-patient)

Instance: ckd-hypertension-options-arb
InstanceOf: CPGMedicationRequest
Usage: #example
Description: "Angiotensin receptor blocker option in the CKD hypertension therapy options result"
* instantiatesCanonical = Canonical(ckd-hypertension-arb-ad)
* status = #draft
* intent = #option
* doNotPerform = false
* medicationCodeableConcept = $rxnorm#52175 "losartan"
* subject = Reference(ckd-hypertension-options-patient)

Instance: ckd-hypertension-options-ccb
InstanceOf: CPGMedicationRequest
Usage: #example
Description: "Calcium channel blocker option in the CKD hypertension therapy options result"
* instantiatesCanonical = Canonical(ckd-hypertension-ccb-ad)
* status = #draft
* intent = #option
* doNotPerform = false
* medicationCodeableConcept = $rxnorm#17767 "amlodipine"
* subject = Reference(ckd-hypertension-options-patient)
