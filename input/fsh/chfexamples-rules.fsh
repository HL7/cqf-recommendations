RuleSet: CaseFeatureOfExtension(plan-id)
* ^extension[+].url = Canonical(cpg-caseFeatureOf)
* ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{plan-id}"

RuleSet: CPGExpressionExtensions
* ^extension[+].url = Canonical(cpg-inferenceExpression)
* ^extension[=].valueExpression.language = #text/cql-identifier
* ^extension[=].valueExpression.expression = "Current Body Weight Change"
* ^extension[=].valueExpression.reference = Canonical(CHF)
* ^extension[+].url = Canonical(cpg-assertionExpression)
* ^extension[=].valueExpression.language = #text/cql-identifier
* ^extension[=].valueExpression.expression = "Body Weight Change Assertion"
* ^extension[=].valueExpression.reference = Canonical(CHF)
* ^extension[+].url = Canonical(cpg-featureExpression)
* ^extension[=].valueExpression.language = #text/cql-identifier
* ^extension[=].valueExpression.expression = "Body Weight Change"
* ^extension[=].valueExpression.reference = Canonical(CHF)

RuleSet: CaseFeatureMetadata(id)
// * ^meta.profile = Canonical(cpg-casefeaturedefinition) --> temp comment out - causing templating errors
* ^extension[+].url = Canonical(cpg-knowledgeCapability)
* ^extension[=].valueCode = #shareable
* ^extension[+].url = Canonical(cpg-knowledgeCapability)
* ^extension[=].valueCode = #computable
* ^extension[+].url = Canonical(cpg-knowledgeCapability)
* ^extension[=].valueCode = #publishable
* ^extension[+].url = Canonical(cpg-knowledgeRepresentationLevel)
* ^extension[=].valueCode = #structured
* ^experimental = true
* ^url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{id}"

RuleSet: CHFCodeSystemMetadata(id)
* ^meta.profile = Canonical(cpg-publishablecodesystem)
* ^extension[+].url = Canonical(cpg-knowledgeCapability)
* ^extension[=].valueCode = #shareable
* ^extension[+].url = Canonical(cpg-knowledgeCapability)
* ^extension[=].valueCode = #computable
* ^extension[+].url = Canonical(cpg-knowledgeCapability)
* ^extension[=].valueCode = #publishable
* ^extension[+].url = Canonical(cpg-knowledgeRepresentationLevel)
* ^extension[=].valueCode = #structured
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^url = "http://hl7.org/fhir/uv/cpg/CodeSystem/{id}"

RuleSet: CHFActivityDefinitionMetadata(id)
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #shareable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #computable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #publishable
* extension[+]
  * url = Canonical(cpg-knowledgeRepresentationLevel)
  * valueCode = #structured
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* experimental = true
* version = "2.0.0-ballot"
* status = #active
* publisher = "HL7 International / Clinical Decision Support"

RuleSet: CHFLibraryMetaData(id)
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #shareable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #computable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #publishable
* extension[+]
  * url = Canonical(cpg-knowledgeRepresentationLevel)
  * valueCode = #structured
* url = "http://hl7.org/fhir/uv/cpg/Library/{id}"
* experimental = true
* version = "2.0.0-ballot"
* status = #active
* publisher = "HL7 International / Clinical Decision Support"

RuleSet: CHFMeasureMetadata(id)
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #shareable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #computable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #publishable
* extension[+]
  * url = Canonical(cpg-knowledgeRepresentationLevel)
  * valueCode = #structured
* url = "http://hl7.org/fhir/uv/cpg/Measure/{id}"
* experimental = true
* version = "2.0.0-ballot"
* status = #active
* publisher = "HL7 International / Clinical Decision Support"

RuleSet: CHFPlanDefinitionMetadata(id)
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #shareable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #computable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #publishable
* extension[+]
  * url = Canonical(cpg-knowledgeRepresentationLevel)
  * valueCode = #structured
* url = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{id}"
* experimental = true
* version = "2.0.0-ballot"
* status = #active
* publisher = "HL7 International / Clinical Decision Support"

RuleSet: PlanDefinitionPartOfExtension(partOf)
* extension[+]
  * url = Canonical(cpg-partOf)
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{partOf}"

RuleSet: PlanDefinitionEnabledExtension
* extension[+]
  * url = Canonical(cpg-enabled)
  * valueBoolean = true

RuleSet: GraphDefinitionMetadata(id)
* meta
  * profile[+] = Canonical(cpg-shareablegraphdefinition)
  * profile[+] = Canonical(cpg-computablegraphdefinition)
  * profile[+] = Canonical(cpg-caseplansummarydefinition)
* url = "http://hl7.org/fhir/uv/cpg/GraphDefinition/{id}"
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #shareable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #computable
* extension[+]
  * url = Canonical(cpg-knowledgeCapability)
  * valueCode = #publishable
* extension[+]
  * url = Canonical(cpg-knowledgeRepresentationLevel)
  * valueCode = #structured
* extension[+]
  * url = Canonical(cpg-summaryDefinitionFor)
  * valueCanonical = Canonical(chf-pathway)
* extension[+]
  * url = Canonical(cpg-copyright)
  * valueMarkdown = "Copyright (c) 2019+ HL7 International"
* extension[+]
  * url = Canonical(cpg-topic)
  * valueCodeableConcept = $sct#42343007 "Congestive heart failure (disorder)"
    * text = "Congestive heart failure"
* extension[+]
  * url = Canonical(cpg-author)
  * valueContactDetail.name = "Matthew Burton, MD"
* extension[+]
  * url = Canonical(cpg-editor)
  * valueContactDetail.name = "Bryn Rhodes"
* extension[+]
  * url = Canonical(cpg-reviewer)
  * valueContactDetail.name = "Davide Sottara"
* extension[+]
  * url = Canonical(cpg-endorser)
  * valueContactDetail.name = "Example Quality Assurance Organization"
* extension[+]
  * url = Canonical(cpg-copyright)
  * valueMarkdown = "Copyright (c) 2019+ HL7 International"
* extension[+]
  * url = Canonical(cpg-relatedArtifact)
  * valueRelatedArtifact
    * type = #citation
    * citation = "Representation primitives, process models and patient data in computer-interpretable clinical practice guidelines: A literature review of guideline representation models. Dongwen Wang, Mor Peleg, Samson W Tu, Aziz A Boxwala, Robert A Greenes, Vimla L Patel, Edward H Shortliffe. International Journal of Medical Informatics, Volume 68, Issues 1–3, 2002, Pages 59-70, ISSN 1386-5056, https://doi.org/10.1016/S1386-5056(02)00065-5."
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
  * valueCode = #cds
* experimental = true
* version = "2.0.0-ballot"
* status = #active
* publisher = "HL7 International / Clinical Decision Support"
* date = "2023-11-15T14:53:25-05:00"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* contact.name = "HL7 International / Clinical Decision Support"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/dss"

