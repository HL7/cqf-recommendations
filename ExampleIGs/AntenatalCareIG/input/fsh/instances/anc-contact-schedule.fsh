Instance: anc-contact-schedule
InstanceOf: PlanDefinition
Usage: #example
* url = "http://fhir.org/guides/who/anc-cds/PlanDefinition/ANC_Contact_Schedule"
* identifier
  * use = #official
  * value = "ANC_Contact_Schedule"
* version = "0.1.0"
* name = "ANC_Contact_Schedule"
* title = "PlanDefinition - WHO ANC Guideline Contact Schedule"
* type = $plan-definition-type#clinical-protocol "Clinical Protocol"
* status = #draft
* experimental = true
* date = "2019-05-15"
* useContext
  * code = $usage-context-type#focus
  * valueCodeableConcept = $sct#77386006 "Pregnant (finding)"
* copyright = "© WHO 2019+."
* library = "http://fhir.org/guides/who/anc/Library/ANCCommon"
* action[0]
  * title = "Contact 1"
  * description = "ANC Contact 1: up to 12 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Up to 12 weeks gestation"
  * participant[0]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = "http://fhir.org/guides/who/anc-cds/PlanDefinition/anc-contact"
* action[+]
  * title = "Contact 2"
  * description = "ANC Contact 2: 20 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "20 weeks gestation"
  * participant[0]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = "http://fhir.org/guides/who/anc-cds/PlanDefinition/anc-contact"
* action[+]
  * title = "Contact 3"
  * description = "ANC Contact 3: 26 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "26 weeks gestation"
  * participant[0]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = "http://fhir.org/guides/who/anc-cds/PlanDefinition/anc-contact"
* action[+]
  * title = "Contact 4"
  * description = "ANC Contact 4: 30 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "30 weeks gestation"
  * participant[0]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = "http://fhir.org/guides/who/anc-cds/PlanDefinition/anc-contact"
* action[+]
  * title = "Contact 5"
  * description = "ANC Contact 5: 34 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "34 weeks gestation"
  * participant[0]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = "http://fhir.org/guides/who/anc-cds/PlanDefinition/anc-contact"
* action[+]
  * title = "Contact 6"
  * description = "ANC Contact 6: 36 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "36 weeks gestation"
  * participant[0]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = "http://fhir.org/guides/who/anc-cds/PlanDefinition/anc-contact"
* action[+]
  * title = "Contact 7"
  * description = "ANC Contact 7: 38 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "38 weeks gestation"
  * participant[0]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = "http://fhir.org/guides/who/anc-cds/PlanDefinition/anc-contact"
* action[+]
  * title = "Contact 8"
  * description = "ANC Contact 8: 40 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "40 weeks gestation"
  * participant[0]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = "http://fhir.org/guides/who/anc-cds/PlanDefinition/anc-contact"
* action[+]
  * title = "Delivery"
  * description = "ANC Delivery: 41+ weeks"