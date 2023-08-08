Instance: anc-first-contact
InstanceOf: Questionnaire
Usage: #example
* url = "http://fhir.org/guides/who/anc-cds/Questionnaire/ANC_First_Contact"
  * fhir_comments = "meta>\n\t\t<profile value=\"http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire\"/>\n\t</meta"
* version = "0.1.0"
* name = "ANC_First_Contact"
* title = "Questionnaire - ANC First Contact"
* status = #draft
* subjectType = #Patient
* item[0]
  * linkId = "name"
  * text = "Name"
  * type = #string
  * required = true
  * fhir_comments = "TODO: Items from ANC First Contact"
* item[+]
  * linkId = "birthdate"
  * text = "Birthdate"
  * type = #date
  * required = true