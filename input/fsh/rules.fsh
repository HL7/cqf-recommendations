RuleSet: ExampleArtifactMetadata(id, type, identifier)
* url = "http://example.org/fhir/uv/cpg/{type}/{id}"
* experimental = true
* identifier
  * use = #official
  * value = "{identifier}"
* name = "{id}"
* status = #draft

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
* status = #draft
* intent = #proposal

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
* status = #draft
* experimental = true

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

RuleSet: Profile(profile-id)
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{profile-id}"

RuleSet: RelatedFHIRLibraries
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1" //this does not resolve
* relatedArtifact[+]
  * type = #depends-on
  * resource = "https://hl7.org/fhir/R4/library-fhir-helpers|4.0.1"

RuleSet: CodeSystemMetadata(id-prefix)
* ^meta.profile = $cpg-publishable-codesystem
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #shareable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #computable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #publishable
* ^extension[+].url = $cpg-knowledgeRepresentationLevel
* ^extension[=].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/CodeSystem/{id-prefix}-cs"
* ^experimental = false
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/uv/cpg/ValueSet/{id-prefix}-vs"
* ^content = #complete

RuleSet: CodeSystemDates(approvalDate, effectiveDate, lastReviewDate )
* ^extension[+].url = $resource-approvalDate
* ^extension[=].valueDate = {approvalDate}
* ^extension[+].url = $codesystem-effectiveDate
* ^extension[=].valueDate = {effectiveDate}
* ^extension[+].url = $resource-lastReviewDate
* ^extension[=].valueDate = {lastReviewDate}

RuleSet: ValueSetMetadata(id)
* ^meta.profile = $cpg-publishable-valueset
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #shareable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #computable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #publishable
* ^extension[+].url = $cpg-knowledgeRepresentationLevel
* ^extension[=].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/ValueSet/{id}"
* ^experimental = false

RuleSet: StructureDefinitionMetadata(id)
* ^url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{id}"
* ^experimental = false

RuleSet: ExtensionContext(path)
* ^context.type = #element
* ^context.expression = "{path}"