// Extensions

RuleSet: KnowledgeArtifactExtensionsMeta
* ^extension[+].url = Canonical(cqf-knowledgeCapability)
* ^extension[=].valueCode = #shareable
* ^extension[+].url = Canonical(cqf-knowledgeCapability)
* ^extension[=].valueCode = #computable
* ^extension[+].url = Canonical(cqf-knowledgeCapability)
* ^extension[=].valueCode = #publishable
* ^extension[+].url = Canonical(cqf-knowledgeRepresentationLevel)
* ^extension[=].valueCode = #structured

RuleSet: KnowledgeArtifactExtensions
* extension[+]
  * url = Canonical(cqf-knowledgeCapability)
  * valueCode = #shareable
* extension[+]
  * url = Canonical(cqf-knowledgeCapability)
  * valueCode = #computable
* extension[+]
  * url = Canonical(cqf-knowledgeCapability)
  * valueCode = #publishable
* extension[+]
  * url = Canonical(cqf-knowledgeRepresentationLevel)
  * valueCode = #structured

RuleSet: CaseFeatureOfExtension(plan-id)
* ^extension[+].url = Canonical(cpg-caseFeatureOf)
* ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{plan-id}"

RuleSet: CPGExpressionExtensions(inference, assertion, feature)
* ^extension[+].url = Canonical(cpg-inferenceExpression)
* ^extension[=].valueExpression.language = #text/cql-identifier
* ^extension[=].valueExpression.expression = "{inference}"
* ^extension[=].valueExpression.reference = Canonical(CHF)
* ^extension[+].url = Canonical(cpg-assertionExpression)
* ^extension[=].valueExpression.language = #text/cql-identifier
* ^extension[=].valueExpression.expression = "{assertion}"
* ^extension[=].valueExpression.reference = Canonical(CHF)
* ^extension[+].url = Canonical(cpg-featureExpression)
* ^extension[=].valueExpression.language = #text/cql-identifier
* ^extension[=].valueExpression.expression = "{feature}"
* ^extension[=].valueExpression.reference = Canonical(CHF)

RuleSet: OperationExtensions
* extension[+]
  * url = $structuredefinition-fmm
  * valueInteger = 2
* extension[+]
  * url = $structuredefinition-standards-status
  * valueCode = #trial-use

RuleSet: PlanDefinitionPartOfExtension(partOf)
* extension[+]
  * url = Canonical(cpg-partOf)
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{partOf}"

RuleSet: PlanDefinitionEnabledExtension
* extension[+]
  * url = Canonical(cpg-enabled)
  * valueBoolean = true

RuleSet: CodeSystemDates(approvalDate, effectiveDate, lastReviewDate )
* ^extension[+].url = $resource-approvalDate
* ^extension[=].valueDate = {approvalDate}
* ^extension[+].url = $codesystem-effectiveDate
* ^extension[=].valueDate = {effectiveDate}
* ^extension[+].url = $resource-lastReviewDate
* ^extension[=].valueDate = {lastReviewDate}

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

// Definitional Rulesets

RuleSet: ActivityDefinitionMetadata(id, name)
* identifier
  * use = #official
  * value = "{name}"
* name = "{name}"
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* intent = #proposal
* status = #active
* priority = #routine

RuleSet: CapabilityStatementMetadata(id)
* url = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/{id}"
* experimental = true
* status = #active
* date = "2023-12-11"

RuleSet: CodeSystemMetadata(id-prefix)
* insert KnowledgeArtifactExtensionsMeta
* ^url = "http://hl7.org/fhir/uv/cpg/CodeSystem/{id-prefix}-cs"
* ^experimental = false
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/uv/cpg/ValueSet/{id-prefix}-vs"
* ^content = #complete

RuleSet: OperationDefinitionMetadata(id)
* url = "http://hl7.org/fhir/uv/cpg/OperationDefinition/{id}"
* kind = #operation
* status = #active

RuleSet: PlanDefinitionMetadata(id)
* url = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{id}"
* status = #active

RuleSet: QuestionnaireMetadata(id)
* url = "http://hl7.org/fhir/uv/cpg/Questionnaire/{id}"
* status = #active

RuleSet: StructureDefinitionMetadata(id)
* ^url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{id}"
* ^experimental = false

RuleSet: ValueSetMetadata(id)
* insert KnowledgeArtifactExtensionsMeta
* ^url = "http://hl7.org/fhir/uv/cpg/ValueSet/{id}"
* ^experimental = false

// Example Content RuleSets

RuleSet: Profile(profile-id)
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{profile-id}"

RuleSet: RelatedFHIRLibraries
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"

RuleSet: CaseFeatureMetadata(id)
* insert KnowledgeArtifactExtensionsMeta
* ^meta.profile[+] = Canonical(cpg-casefeaturedefinition)
* ^experimental = true
* ^url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{id}"

RuleSet: ExampleActivityDefinitionMetadata(id)
* insert Profile(cpg-computableactivity)
* insert KnowledgeArtifactExtensions
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* intent = #proposal
* status = #active
* experimental = true

RuleSet: ExampleCodeSystemMetadata(id)
* insert KnowledgeArtifactExtensionsMeta
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^url = "http://hl7.org/fhir/uv/cpg/CodeSystem/{id}"

RuleSet: ExampleLibraryMetadata(id)
* insert KnowledgeArtifactExtensions
* url = "http://hl7.org/fhir/uv/cpg/Library/{id}"
* experimental = true
* status = #active

RuleSet: ExampleMeasureMetadata(id)
* insert KnowledgeArtifactExtensions
* url = "http://hl7.org/fhir/uv/cpg/Measure/{id}"
* experimental = true
* status = #active

RuleSet: ExamplePlanDefinitionMetadata(id)
* insert Profile(cpg-computableplandefinition)
* insert KnowledgeArtifactExtensions
* url = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{id}"
* experimental = true
* status = #active

RuleSet: ExampleQuestionnaireMetadata(id)
* insert Profile(cpg-computablequestionnaire)
* insert KnowledgeArtifactExtensions
* url = "http://example.org/Questionnaire/{id}"
* status = #active
* experimental = true

RuleSet: ExampleValueSetMetadata(id)
* insert KnowledgeArtifactExtensionsMeta
* ^url = "http://hl7.org/fhir/uv/cpg/ValueSet/{id}"
* ^experimental = true

RuleSet: CHFGraphDefinitionMetadata(id)
* insert Profile(cpg-computablegraphdefinition)
* insert Profile(cpg-caseplansummarydefinition)
* insert KnowledgeArtifactExtensions
* url = "http://hl7.org/fhir/uv/cpg/GraphDefinition/{id}"
* extension[+]
  * url = Canonical(cpg-summaryDefinitionFor)
  * valueCanonical = Canonical(chf-pathway)
* extension[+]
  * url = Canonical(artifact-topic)
  * valueCodeableConcept = $sct#42343007 "Congestive heart failure (disorder)"
    * text = "Congestive heart failure"
* extension[+]
  * url = Canonical(artifact-author)
  * valueContactDetail.name = "Matthew Burton, MD"
* extension[+]
  * url = Canonical(artifact-editor)
  * valueContactDetail.name = "Bryn Rhodes"
* extension[+]
  * url = Canonical(artifact-reviewer)
  * valueContactDetail.name = "Davide Sottara"
* extension[+]
  * url = Canonical(artifact-endorser)
  * valueContactDetail.name = "Example Quality Assurance Organization"
* extension[+]
  * url = Canonical(artifact-copyright)
  * valueMarkdown = "Copyright (c) 2019+ HL7 International"
* extension[+]
  * url = Canonical(artifact-relatedArtifact)
  * valueRelatedArtifact
    * type = #citation
    * citation =
    """Representation primitives, process models and patient data in computer-interpretable clinical practice guidelines: A literature review of guideline representation models. Dongwen Wang, Mor Peleg, Samson W Tu, Aziz A Boxwala, Robert A Greenes, Vimla L Patel, Edward H Shortliffe. International Journal of Medical Informatics, Volume 68, Issues 1–3, 2002, Pages 59-70, ISSN 1386-5056, https://doi.org/10.1016/S1386-5056(02)00065-5."""
* experimental = true
* status = #active