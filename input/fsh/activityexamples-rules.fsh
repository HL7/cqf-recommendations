RuleSet: KnowledgeArtifactMetadata(id, type)
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #shareable
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #computable
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #publishable
* extension[+]
  * url = $cpg-knowledgeRepresentationLevel
  * valueCode = #structured
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/{type}/{id}"
* status = #active
* version = "2.0.0"
* publisher = "HL7 International / Clinical Decision Support"

RuleSet: KnowledgeArtifactPDRecommendationMetadata(id)
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #shareable
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #computable
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #publishable
* extension[+]
  * url = $cpg-knowledgeRepresentationLevel
  * valueCode = #structured
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{id}"
* experimental = true
* status = #active
* url = "http://example.org/Questionnaire/{id}"
* publisher = "HL7 International / Clinical Decision Support"

RuleSet: Profile(profile-id)
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{profile-id}"

RuleSet: RelatedFHIRLibraries
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1" //this does not resolve - should it be 	http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo ?
* relatedArtifact[+]
  * type = #depends-on
  * resource = "https://hl7.org/fhir/R4/library-fhir-helpers|4.0.1"

RuleSet: KnowledgeArtifactQuestionnaireMetadata(id)
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #shareable
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #computable
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #publishable
* extension[+]
  * url = $cpg-knowledgeRepresentationLevel
  * valueCode = #structured
* url = "http://example.org/Questionnaire/{id}"
* publisher = "HL7 International / Clinical Decision Support"
* version = "2.0.0"
* status = #active
* experimental = true

RuleSet: KnowledgeArtifactADMetadata(id)
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #shareable
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #computable
* extension[+]
  * url = $cpg-knowledgeCapability
  * valueCode = #publishable
* extension[+]
  * url = $cpg-knowledgeRepresentationLevel
  * valueCode = #structured
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* intent = #proposal
* status = #active
* publisher = "HL7 International / Clinical Decision Support"
* version = "2.0.0"
