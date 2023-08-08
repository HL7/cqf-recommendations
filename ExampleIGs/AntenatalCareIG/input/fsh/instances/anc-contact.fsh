Instance: anc-contact
InstanceOf: PlanDefinition
Usage: #example
* url = "http://fhir.org/guides/who/anc-cds/PlanDefinition/ANC_Contact"
* identifier
  * use = #official
  * value = "ANC_Contact"
* version = "0.1.0"
* name = "ANC_Contact"
* title = "PlanDefinition - WHO ANC Guideline Contact"
* type = $plan-definition-type#workflow-definition "Workflow Definition"
* status = #draft
* experimental = true
* date = "2019-05-15"
* useContext
  * code = $usage-context-type#focus
  * valueCodeableConcept = $sct#77386006 "Pregnant (finding)"
* copyright = "© WHO 2019+."
* action[0]
  * title = "Registration"
  * code = $cpg-common-process-cs#registration
  * definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/cpg-common-registration"
    * fhir_comments = "TODO: Can use the common registration process, or override with an ANC-specific registration process"
* action[+]
  * title = "Record health history"
  * code = $cpg-common-process-cs#history-and-physical
  * action[0]
    * title = "Record first contact information"
    * condition
      * kind = #applicability
      * expression
        * language = #text/cql
        * expression = "Is First Contact"
    * definitionCanonical = "http://fhir.org/guides/who/anc-cds/Questionnaire/anc-first-contact"
  * action[+]
    * title = "Record every contact information"
    * definitionCanonical = "http://fhir.org/guides/who/anc-cds/Questionnaire/anc-every-contact"
* action[+]
  * title = "Assess danger signs"
  * code = $cpg-common-process-cs#triage
  * definitionCanonical = "http://fhir.org/guides/who/anc-cds/Questionnaire/anc-quick-check"
* action[+]
  * title = "Assess current pregnancy conditions, including symptoms and lab tests"
  * code = $cpg-common-process-cs#diagnostic-testing
* action[+]
  * title = "Case management or referral"
  * code = $cpg-common-process-cs#discharge-referral-of-patient
* action[+]
  * title = "Schedule follow-up visit"
  * code = $cpg-common-process-cs#monitor-and-follow-up-of-patient