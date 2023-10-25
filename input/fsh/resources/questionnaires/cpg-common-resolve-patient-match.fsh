Instance: cpg-common-resolve-patient-match
InstanceOf: Questionnaire
Usage: #example
Title: "CPG Common Questionnaire - Resolve Patient Match"
Description: "Questionnaire to resolve patient"
* insert QuestionnaireMetadata(cpg-common-resolve-patient-match)
* name = "CPG_Common_Questionnaire_Resolve_Patient_Match"
* status = #draft
* subjectType = #Patient
* item
  * linkId = "id"
  * text = "Id"
  * type = #string
  * required = true