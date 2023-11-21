Instance: cpg-common-registration
InstanceOf: CPGWorkflowDefinition
Usage: #definition
* insert KnowledgeArtifactPDRecommendationMetadata(cpg-common-registration)
* title = "PlanDefinition - CPG Common Registration"
* description = "Plan for registering patient"
* name = "PlanDefinition_CPG_Common_Registration"
* type = $plan-definition-type#workflow-definition "Workflow Definition"
* copyright = "© WHO 2019+."
* action
  * description = "Registration"
  * title = "Registration"
  * code = $cpg-common-process-codesystem#registration
  * participant[+]
    * type = #patient
    * role = $cpg-common-persona-cs#C000
  * participant[+]
    * type = #practitioner
    * role = $cpg-common-persona-cs#W000 "Clerical support worker"
  * action[+]
    * description = "Gather identifying information"
    * title = "Gather identifying information"
    * output.type = #QuestionnaireResponse
    * participant
      * type = #patient
      * role = $cpg-common-persona-cs#C000
    * definitionCanonical = Canonical(cpg-common-identity)
    // * fhir_comments = "Gather identifying information"
  * action[+]
    * description = "Patient match"
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
    * description = "Resolve patient match results"
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
    * description = "New patient"
    * title = "New patient"
    * condition
      * kind = #applicability
      * expression
        * language = #text/cql
        * expression = "not exists %input i where i is Patient"
    * input.type = #Patient
    * action[+]
      * description = "Gather patient information"
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
      * description = "Record patient data"
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
    * description = "Existing patient"
    * title = "Existing patient"
    * condition
      * kind = #applicability
      * expression
        * language = #text/cql
        * expression = "exists %input i where i is Patient"
    * input.type = #Patient
    * action[+]
      * description = "Ensure patient information is up to date"
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
      * description = "Record patient data"
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
    * description = "Patient summary lookup"
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