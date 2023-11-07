RuleSet: CodeSystemMetadata(id-prefix)
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

RuleSet: ActivityDefinitionMetadata(id, name)
* identifier
  * use = #official
  * value = "{name}"
* name = "{name}"
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* intent = #proposal
* experimental = false
* status = #active
* priority = #routine
* publisher = "HL7 International / Clinical Decision Support"
* version = "2.0.0"

RuleSet: PlanDefinitionMetadata(id)
* url = "http://hl7.org/fhir/uv/cpg/PlanDefinition/{id}"
* status = #active

RuleSet: QuestionnaireMetadata(id)
* url = "http://hl7.org/fhir/uv/cpg/Questionnaire/{id}"
* status = #active