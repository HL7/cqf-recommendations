Instance: anc-first-contact
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire - ANC First Contact"
* insert QuestionnaireMetadata(anc-first-contact)
* description = "Example of a Questionnaire for first ANC contact"
* name = "ANCFirstContact"
* subjectType = #Patient
* item[+]
  * linkId = "name"
  * text = "Name"
  * type = #string
  * required = true
  // * fhir_comments = "TODO: Items from ANC First Contact"
* item[+]
  * linkId = "birthdate"
  * text = "Birthdate"
  * type = #date
  * required = true