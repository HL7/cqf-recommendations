// RuleSet: KnowledgeArtifactMetadata(id, type)
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #shareable
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #computable
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #publishable
// * extension[+]
//   * url = $cpg-knowledgeRepresentationLevel
//   * valueCode = #structured
// * experimental = true
// * url = "http://hl7.org/fhir/uv/cpg/{type}/{id}"
// * status = #draft

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
* ^context[+].type = #element
* ^context[=].expression = "{path}"

RuleSet: CapabilityStatementMetadata(id)
* url = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/{id}"
* experimental = true
* status = #active
* date = "2023-08-04"

RuleSet: OperationDefinitionMetadata(id)
* url = "http://hl7.org/fhir/uv/cpg/OperationDefinition/{id}"
* kind = #operation
* status = #active

RuleSet: OperationExtensions
* extension[+]
  * url = $structuredefinition-fmm
  * valueInteger = 2
* extension[+]
  * url = $structuredefinition-standards-status
  * valueCode = #trial-use

// RuleSet: ExampleKnowledgeArtifactMetadata(id, type)
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #shareable
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #computable
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #publishable
// * extension[+]
//   * url = $cpg-knowledgeRepresentationLevel
//   * valueCode = #structured
// * experimental = true
// * url = "http://example.org/{type}/{id}"

// RuleSet: QuestionnaireMetadata(id)
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #shareable
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #computable
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #publishable
// * extension[+]
//   * url = $cpg-knowledgeRepresentationLevel
//   * valueCode = #structured
// * url = "http://example.org/Questionnaire/{id}"
// * publisher = "HL7 International - Clinical Decision Support WG"
// * version = "1.0.0"
// * status = #draft
// * experimental = true

RuleSet: ActivityDefinitionMetadata(id, name)
* identifier
  * use = #official
  * value = {name}
* name = "name"
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
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* intent = #proposal
* experimental = false
* status = #draft
* priority = #routine
* publisher = "HL7 International - Clinical Decision Support WG"
* version = "1.0.0"


// RuleSet: PDRecommendationMetadata(id)
// * meta.profile = $cpg-recommendationdefinition
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #shareable
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #computable
// * extension[+]
//   * url = $cpg-knowledgeCapability
//   * valueCode = #publishable
// * extension[+]
//   * url = $cpg-knowledgeRepresentationLevel
//   * valueCode = #structured
// * experimental = true
// * url = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{id}"
// * experimental = true
// * status = #draft

// RuleSet: Profile(profile-id)
// * meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{profile-id}"

// RuleSet: RelatedFHIRLibraries
// * relatedArtifact[+]
//   * type = #depends-on
//   * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1" //this does not resolve
// * relatedArtifact[+]
//   * type = #depends-on
//   * resource = "https://hl7.org/fhir/R4/library-fhir-helpers|4.0.1"