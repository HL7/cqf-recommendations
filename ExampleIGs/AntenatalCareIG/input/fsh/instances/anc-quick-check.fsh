Instance: anc-quick-check
InstanceOf: Questionnaire
Usage: #example
* url = "http://fhir.org/guides/who/anc-cds/Questionnaire/ANC_Quick_Check"
  * fhir_comments = "meta>\n\t\t<profile value=\"http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire\"/>\n\t</meta"
* version = "0.1.0"
* name = "ANC_Quick_Check"
* title = "Questionnaire - ANC Quick Check"
* status = #draft
* subjectType = #Patient
* item
  * extension[0]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-answerValueSetSource"
    * valueCanonical = "http://fhir.org/guides/who/anc-cds/ValueSet/anc-reason-for-visit-vs"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-itemImage"
    * valueAttachment.url = "http://example.org/images/reason-for-visit.png"
  * linkId = "reason-for-visit"
  * text = "Why did you come?"
  * type = #choice
  * answerOption[0]
    * extension
      * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-responseImage"
      * valueAttachment.url = "http://example.org/images/reason-for-visit-routine.png"
    * valueString = "For a scheduled (routine) visit"
  * answerOption[+]
    * extension
      * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-responseImage"
      * valueAttachment.url = "http://example.org/images/reason-for-visit-specific-complaint.png"
    * valueString = "For specific complaints about you or your baby"
  * answerOption[+]
    * extension
      * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-responseImage"
      * valueAttachment.url = "http://example.org/images/reason-for-visit-first.png"
    * valueString = "First visit"
  * answerOption[+]
    * extension
      * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-responseImage"
      * valueAttachment.url = "http://example.org/images/reason-for-visit-follow-up.png"
    * valueString = "Follow-up visit"
  * answerOption[+]
    * extension
      * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-responseImage"
      * valueAttachment.url = "http://example.org/images/reason-for-visit-include-family-member.png"
    * valueString = "Do you want to include your companion or other family member (parent if adolescent) in the examination and discussion?"