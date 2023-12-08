RuleSet: KnowledgeArtifactMetadata(id, type)
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #shareable
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #computable
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #publishable
* extension[+]
  * url = $cqf-knowledgeRepresentationLevel
  * valueCode = #structured
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/{type}/{id}"
* status = #active
* version = "2.0.0"
* publisher = "HL7 International / Clinical Decision Support"

RuleSet: KnowledgeArtifactPDRecommendationMetadata(id)
* insert Profile(cpg-computableplandefinition)
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #shareable
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #computable
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #publishable
* extension[+]
  * url = $cqf-knowledgeRepresentationLevel
  * valueCode = #structured
* url = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{id}"
* experimental = true
* status = #active
* publisher = "HL7 International / Clinical Decision Support"
* version = "2.0.0-ballot"

RuleSet: RelatedFHIRLibraries
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"

RuleSet: KnowledgeArtifactQuestionnaireMetadata(id)
* insert Profile(cpg-computablequestionnaire)
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #shareable
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #computable
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #publishable
* extension[+]
  * url = $cqf-knowledgeRepresentationLevel
  * valueCode = #structured
* url = "http://example.org/Questionnaire/{id}"
* publisher = "HL7 International / Clinical Decision Support"
* version = "2.0.0"
* status = #active
* experimental = true

RuleSet: KnowledgeArtifactADMetadata(id)
* insert Profile(cpg-computableactivity)
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #shareable
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #computable
* extension[+]
  * url = $cqf-knowledgeCapability
  * valueCode = #publishable
* extension[+]
  * url = $cqf-knowledgeRepresentationLevel
  * valueCode = #structured
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* intent = #proposal
* status = #active
* publisher = "HL7 International / Clinical Decision Support"
* version = "2.0.0"
