Instance: anc-contact-schedule
InstanceOf: PlanDefinition
Usage: #example
Title: "PlanDefinition - WHO ANC Guideline Contact Schedule"
* insert PlanDefinitionMetadata(anc-contact-schedule, ANCContactSchedule)
* description = "Example of a Plan Definition Pathway based on the recommended ANC contact schedule"
* type = $plan-definition-type#clinical-protocol "Clinical Protocol"
* useContext
  * code = $usage-context-type#focus
  * valueCodeableConcept = $sct#77386006 "Pregnancy (finding)"
* library = Canonical(ANCCommon)
* action[+]
  * title = "Contact 1"
  * description = "ANC Contact 1: up to 12 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Up to 12 weeks gestation"
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    // * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = Canonical(anc-contact)
* action[+]
  * title = "Contact 2"
  * description = "ANC Contact 2: 20 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "20 weeks gestation"
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    // * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = Canonical(anc-contact)
* action[+]
  * title = "Contact 3"
  * description = "ANC Contact 3: 26 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "26 weeks gestation"
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    // * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = Canonical(anc-contact)
* action[+]
  * title = "Contact 4"
  * description = "ANC Contact 4: 30 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "30 weeks gestation"
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    // * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = Canonical(anc-contact)
* action[+]
  * title = "Contact 5"
  * description = "ANC Contact 5: 34 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "34 weeks gestation"
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    // * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = Canonical(anc-contact)
* action[+]
  * title = "Contact 6"
  * description = "ANC Contact 6: 36 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "36 weeks gestation"
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    // * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = Canonical(anc-contact)
* action[+]
  * title = "Contact 7"
  * description = "ANC Contact 7: 38 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "38 weeks gestation"
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    // * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = Canonical(anc-contact)
* action[+]
  * title = "Contact 8"
  * description = "ANC Contact 8: 40 weeks"
  * code = $cpg-common-process-cs#guideline-based-care
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "40 weeks gestation"
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000 "Patient"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#3222 "Midwifery associate professional"
    // * fhir_comments = "TODO: How to indicate that either of these roles may participate at this point?"
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#2222 "Midwifery professional"
  * definitionCanonical = Canonical(anc-contact)
* action[+]
  * title = "Delivery"
  * description = "ANC Delivery: 41+ weeks"