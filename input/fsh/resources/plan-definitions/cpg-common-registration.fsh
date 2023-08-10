Instance: cpg-common-registration
InstanceOf: PlanDefinition
Usage: #example
Title: "PlanDefinition - CPG Common Registration"
* insert PlanDefinitionMetadata(cpg-common-registration)
* name = "PlanDefinition_CPG_Common_Registration"
* type = $plan-definition-type#workflow-definition "Workflow Definition"
* copyright = "© WHO 2019+."
* action
  * title = "Registration"
  * code = $cpg-common-process-codesystem#registration
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#W000 "Clerical support worker"
  * action[+]
    * title = "Gather identifying information"
    * output.type = #QuestionnaireResponse
    * participant
      * type = #patient
      * role = $cpg-common-persona-cs#C000
    * definitionCanonical = Canonical(cpg-common-identity)
    // * fhir_comments = "Gather identifying information"
  * action[+]
    * title = "Patient match"
    * input
      * type = #QuestionnaireResponse
      * codeFilter
        * path = "questionnaire"
        * code = urn:ietf:rfc:3986#http://hl7.org/fhir/uv/cpg/Questionnaire/cpg-common-identity
    * output.type = #Bundle
    * participant
      * extension
        * url = Canonical(cpg-participantCapabilityStatement)
        * valueCanonical = Canonical(cpg-common-patient-registry)
      * type = #device
    * definitionUri = $patient-match
    // * fhir_comments = "Patient match"
  * action[+]
    * title = "Resolve patient match results"
    * input.type = #Bundle
    * output.type = #Patient
    * participant
      * type = #practitioner
      * role = $cpg-common-persona-cs#W000 "Clerical support worker"
    * definitionCanonical = Canonical(cpg-common-resolve-patient-match)
      // * fhir_comments = "TODO: Use SDC post processing to establish the output as the specific patient selected"
    // * fhir_comments = "Resolve patient match results"
  * action[+]
    * title = "New patient"
    * condition
      * kind = #applicability
      * expression
        * language = #text/cql
        * expression = "not exists %input i where i is Patient"
    * input.type = #Patient
    * action[+]
      * title = "Gather patient information"
      * input
        * type = #QuestionnaireResponse
        * codeFilter
          * path = "questionnaire"
          * code = urn:ietf:rfc:3986#http://hl7.org/fhir/uv/cpg/Questionnaire/cpg-common-identity
      * output.type = #QuestionnaireResponse
      * definitionCanonical = Canonical(cpg-common-patient-profile)
        // * fhir_comments = "TODO: Use SDC pre processing to auto-populate questionnaire content with the previously entered identity data"
    * action[+]
      * title = "Record patient data"
      * input
        * type = #QuestionnaireResponse
        * codeFilter
          * path = "questionnaire"
          * code = urn:ietf:rfc:3986#http://hl7.org/fhir/uv/cpg/Questionnaire/cpg-common-patient-profile
      * output.type = #Patient
      * participant
        * extension
          * url = Canonical(cpg-participantCapabilityStatement)
          * valueCanonical = Canonical(cpg-common-patient-registry)
        * type = #device
      * definitionUri = "http://hl7.org/fhir/restful-interaction#create"
        // * fhir_comments[+] = "TODO: There is some wizardry here about transforming the questionnaire response into a Patient resource"
        // * fhir_comments[+] = "We can use SDC post processing to do this"
      // * fhir_comments = "Record patient data"
    // * fhir_comments = "New patient"
  * action[+]
    * title = "Existing patient"
    * condition
      * kind = #applicability
      * expression
        * language = #text/cql
        * expression = "exists %input i where i is Patient"
    * input.type = #Patient
    * action[+]
      * title = "Ensure patient information is up to date"
      * input
        * type = #QuestionnaireResponse
        * codeFilter
          * path = "questionnaire"
          * code = urn:ietf:rfc:3986#http://hl7.org/fhir/uv/cpg/Questionnaire/cpg-common-identity
      * output.type = #QuestionnaireResponse
      * definitionCanonical = Canonical(cpg-common-patient-profile)
        // * fhir_comments = "TODO: Use SDC pre processing to auto-populate questionnaire content with the previously entered identity data"
      // * fhir_comments = "Patient data update"
    * action[+]
      * title = "Record patient data"
      * input
        * type = #QuestionnaireResponse
        * codeFilter
          * path = "questionnaire"
          * code = urn:ietf:rfc:3986#http://hl7.org/fhir/uv/cpg/Questionnaire/cpg-common-patient-profile
      * output.type = #Patient
      * participant
        * extension
          * url = Canonical(cpg-participantCapabilityStatement)
          * valueCanonical = Canonical(cpg-common-patient-registry)
        * type = #device
      * definitionUri = "http://hl7.org/fhir/restful-interaction#update"
        // * fhir_comments[+] = "TODO: There is some wizardry here about transforming the questionnaire response into a Patient resource"
        // * fhir_comments[+] = "We can use SDC post processing to do this"
      // * fhir_comments = "Record patient data"
    // * fhir_comments = "Existing patient"
  * action[+]
    * title = "Patient summary lookup"
    * input.type = #Patient
    * output.type = #Bundle
    * participant
      * extension
        * url = Canonical(cpg-participantCapabilityStatement)
        * valueCanonical = Canonical(cpg-common-patient-registry)
      * type = #device
    * definitionUri = Canonical(cpg-common-patient-summary)
    // * fhir_comments = "Patient summary lookup"