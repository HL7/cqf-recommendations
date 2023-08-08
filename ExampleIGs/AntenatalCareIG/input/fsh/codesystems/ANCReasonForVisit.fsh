CodeSystem: ANCReasonForVisit
Id: anc-reason-for-visit-cs
Title: "ANC Reason for Visit"
Description: "Codes used to identify the reason for an antenatal care visit"
* ^meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-publishablecodesystem"
* ^extension[0].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
* ^extension[=].valueCode = #shareable
* ^extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
* ^extension[=].valueCode = #computable
* ^extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
* ^extension[=].valueCode = #publishable
* ^extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeRepresentationLevel"
* ^extension[=].valueCode = #structured
* ^status = #draft
* ^experimental = true
* ^date = "2019-05-08"
* ^publisher = "Health Level 7 International - Clinical Decision Support WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/dss/index.cfm"
* ^caseSensitive = true
* ^valueSet = "http://fhir.org/guides/who/anc-cds/ValueSet/anc-reason-for-visit-vs"
* ^content = #complete
* #routine "Routine" "For a scheduled (routine) visit"
* #specific-complaint "Specific complaint" "For specific complaints about you or your baby"
* #first-visit "First visit" "First visit"
* #follow-up-visit "Follow-up visit" "Follow-up visit"
* #include-family-member "Include family member" "Do you want to include your companion or other family member (parent if adolescent) in the examination and discussion?"