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
* insert Profile(cpg-computableplandefinition)
* insert Profile(cpg-shareableplandefinition)
* insert Profile(cpg-publishableplandefinition)
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
* url = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{id}"
* experimental = true
* status = #active
* publisher = "HL7 International / Clinical Decision Support"
* version = "2.0.0-ballot"

RuleSet: RelatedFHIRLibraries
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIRHelpers|4.0.1"

RuleSet: KnowledgeArtifactQuestionnaireMetadata(id)
* insert Profile(cpg-shareablequestionnaire)
* insert Profile(cpg-publishablequestionnaire)
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
* insert Profile(cpg-computableactivity)
* insert Profile(cpg-shareableactivitydefinition)
* insert Profile(cpg-publishableactivity)
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
