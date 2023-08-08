Instance: cpg-common-identity
InstanceOf: Questionnaire
Usage: #example
Title: "CPG Common Questionnaire - Identifying information"
* insert QuestionnaireMetadata(cpg-common-identity)
* name = "CPG_Common_Questionnaire_Identity"
* subjectType = #Patient
* item[+]
  * linkId = "name"
  * text = "Name"
  * type = #string
  * required = true
* item[+]
  * linkId = "birthdate"
  * text = "Birthdate"
  * type = #date
  * required = true