// Illustrates the cpg-preferenceBehavior extension (FHIR-59818). The clinical content is illustrative only.

Instance: ckd-hypertension-options-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CKD Hypertension Therapy Options"
Description: "Illustrative recommendation offering alternative initial antihypertensive therapies for a patient with chronic kidney disease, hypertension, and albuminuria, with the guideline's preference for each option conveyed by the cpg-preferenceBehavior extension. The options and preferences are illustrative only and are not clinical guidance."
* insert ExamplePlanDefinitionMetadata(ckd-hypertension-options-pd)
* name = "CKDHypertensionTherapyOptions"
* type = $plan-definition-type#eca-rule "ECA Rule"
* useContext
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#709044004 "Chronic kidney disease (disorder)"
* topic = $definition-topic-cs#treatment "Treatment"
* action
  * id = "initial-antihypertensive-therapy"
  * extension[strengthOfRecommendation].valueCodeableConcept = $recommendation-strength#strong "Strong"
  * extension[directionOfRecommendation].valueCodeableConcept = $cpg-recommendation-direction-cs#for "For"
  * title = "Initial antihypertensive therapy in CKD with albuminuria"
  * description = "For a patient with chronic kidney disease, hypertension, and albuminuria, start antihypertensive therapy, choosing one of the following options."
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Has CKD with hypertension and albuminuria"
  * groupingBehavior = #logical-group
  * selectionBehavior = #at-most-one
  * action[+]
    * id = "ace-inhibitor"
    * extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-preferenceBehavior"
    * extension[=].valueCodeableConcept = CPGPreferenceBehaviorCS#preferred "Preferred"
    * title = "Start an ACE inhibitor"
    * description = "Preferred option. Excluded by its applicability condition, not by its preference, for a patient with a history of ACE inhibitor angioedema."
    * condition
      * kind = #applicability
      * expression
        * language = #text/cql
        * expression = "No history of ACE inhibitor angioedema"
    * definitionCanonical = Canonical(ckd-hypertension-ace-inhibitor-ad)
  * action[+]
    * id = "arb"
    * extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-preferenceBehavior"
    * extension[=].valueCodeableConcept = CPGPreferenceBehaviorCS#recommended "Recommended"
    * title = "Start an angiotensin receptor blocker"
    * description = "Recommended alternative, for example when an ACE inhibitor is not tolerated."
    * definitionCanonical = Canonical(ckd-hypertension-arb-ad)
  * action[+]
    * id = "calcium-channel-blocker"
    * extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-preferenceBehavior"
    * extension[=].valueCodeableConcept = CPGPreferenceBehaviorCS#not-recommended "Not Recommended"
    * title = "Start a dihydropyridine calcium channel blocker"
    * description = "Allowable, but not favored as initial monotherapy for this patient among the available alternatives. This is not a recommendation against the activity."
    * definitionCanonical = Canonical(ckd-hypertension-ccb-ad)

Instance: ckd-hypertension-ace-inhibitor-ad
InstanceOf: CPGMedicationRequestActivity
Usage: #example
Title: "CKD Hypertension ACE Inhibitor"
Description: "Illustrative activity definition proposing an ACE inhibitor, for the CKD hypertension therapy options example"
* insert ExampleActivityDefinitionMetadata(ckd-hypertension-ace-inhibitor-ad)
* name = "CKDHypertensionACEInhibitor"
* kind = #MedicationRequest
* profile = Canonical(CPGMedicationRequest)
* code = $cpg-activity-type-cs#order-medication "Order a medication"
* doNotPerform = false
* productCodeableConcept = $rxnorm#29046 "lisinopril"

Instance: ckd-hypertension-arb-ad
InstanceOf: CPGMedicationRequestActivity
Usage: #example
Title: "CKD Hypertension Angiotensin Receptor Blocker"
Description: "Illustrative activity definition proposing an angiotensin receptor blocker, for the CKD hypertension therapy options example"
* insert ExampleActivityDefinitionMetadata(ckd-hypertension-arb-ad)
* name = "CKDHypertensionARB"
* kind = #MedicationRequest
* profile = Canonical(CPGMedicationRequest)
* code = $cpg-activity-type-cs#order-medication "Order a medication"
* doNotPerform = false
* productCodeableConcept = $rxnorm#52175 "losartan"

Instance: ckd-hypertension-ccb-ad
InstanceOf: CPGMedicationRequestActivity
Usage: #example
Title: "CKD Hypertension Calcium Channel Blocker"
Description: "Illustrative activity definition proposing a dihydropyridine calcium channel blocker, for the CKD hypertension therapy options example"
* insert ExampleActivityDefinitionMetadata(ckd-hypertension-ccb-ad)
* name = "CKDHypertensionCCB"
* kind = #MedicationRequest
* profile = Canonical(CPGMedicationRequest)
* code = $cpg-activity-type-cs#order-medication "Order a medication"
* doNotPerform = false
* productCodeableConcept = $rxnorm#17767 "amlodipine"
