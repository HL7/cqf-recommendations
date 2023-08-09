Instance: anc-contact
InstanceOf: PlanDefinition
Usage: #example
Title: "PlanDefinition - WHO ANC Guideline Contact"
* insert PlanDefinitionMetadata(anc-contact, ANCContact)
* description = "Example of Plan Definition Strategy for an ANC Contact"
* type = $plan-definition-type#workflow-definition "Workflow Definition"
* useContext
  * code = $usage-context-type#focus
  * valueCodeableConcept = $sct#77386006 "Pregnancy (finding)"
* action[+]
  * title = "Registration"
  * code = $cpg-common-process-cs#registration
  * definitionCanonical = $cpg-common-registration
    // * fhir_comments = "TODO: Can use the common registration process, or override with an ANC-specific registration process"
* action[+]
  * title = "Record health history"
  * code = $cpg-common-process-cs#history-and-physical
  * action[+]
    * title = "Record first contact information"
    * condition
      * kind = #applicability
      * expression
        * language = #text/cql
        * expression = "Is First Contact"
    * definitionCanonical = Canonical(anc-first-contact)
  * action[+]
    * title = "Record every contact information"
    * definitionCanonical = Canonical(anc-every-contact)
* action[+]
  * title = "Assess danger signs"
  * code = $cpg-common-process-cs#triage
  * definitionCanonical = Canonical(anc-quick-check)
* action[+]
  * title = "Assess current pregnancy conditions, including symptoms and lab tests"
  * code = $cpg-common-process-cs#diagnostic-testing
* action[+]
  * title = "Case management or referral"
  * code = $cpg-common-process-cs#discharge-referral-of-patient
* action[+]
  * title = "Schedule follow-up visit"
  * code = $cpg-common-process-cs#monitor-and-follow-up-of-patient