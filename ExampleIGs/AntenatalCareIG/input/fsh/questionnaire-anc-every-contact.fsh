Instance: anc-every-contact
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire - ANC Every Contact"
* insert QuestionnaireMetadata(anc-every-contact)
* description = "Example of a Questionnaire for each ANC contact"
* name = "ANCEveryContact"
* subjectType = #Patient
* item[+]
  * linkId = "name"
  * text = "Name"
  * type = #string
  * required = true
  // * fhir_comments = "TODO: Items from ANC Every Contact"
* item[+]
  * linkId = "birthdate"
  * text = "Birthdate"
  * type = #date
  * required = true