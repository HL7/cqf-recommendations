Instance: cpg-common-patient-profile
InstanceOf: Questionnaire
Usage: #definition
Title: "CPG Common Questionnaire - Patient information"
Description: "Questionnaire to gather patient infomration"
* insert QuestionnaireMetadata(cpg-common-patient-profile)
* name = "CPG_Common_Questionnaire_Patient_Profile"
* status = #draft
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