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
* status = #draft
* version = "1.0.0"
* publisher = "HL7 International - Clinical Decision Support WG"

RuleSet: QuestionnaireMetadata(id)
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
* publisher = "HL7 International - Clinical Decision Support WG"
* version = "1.0.0"
* status = #draft
* experimental = true

RuleSet: ActivityDefinitionMetadata(id)
* meta.profile = $cpg-computableactivity
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
* experimental = true
* status = #draft
* publisher = "HL7 International - Clinical Decision Support WG"
* version = "1.0.0"

RuleSet: PDRecommendationMetadata(id)
* meta.profile = $cpg-recommendationdefinition
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
* status = #draft

RuleSet: Profile(profile-id)
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{profile-id}"

RuleSet: RelatedFHIRLibraries
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1" //this does not resolve
* relatedArtifact[+]
  * type = #depends-on
  * resource = "https://hl7.org/fhir/R4/library-fhir-helpers|4.0.1"