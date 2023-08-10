Instance: cpg-common-patient-profile
InstanceOf: Questionnaire
Usage: #example
Title: "CPG Common Questionnaire - Patient information"
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