RuleSet: CodeSystemMetadata(id)
* ^meta.profile = $cpg-publishable-codesystem
* ^extension[$cpg-knowledgeCapability].valueCode = #shareable
* ^extension[$cpg-knowledgeCapability].valueCode = #computable
* ^extension[$cpg-knowledgeCapability].valueCode = #publishable
* ^extension[$cpg-knowledgeCapability].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/CodeSystem/{id}"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/uv/cpg/ValueSet/{id}"
* ^content = #complete

RuleSet: CodeSystemDates(approvalDate, effectiveDate, lastReviewDate )
* ^extension[$resource-approvalDate].valueDate = {approvalDate}
* ^extension[$codesystem-effectiveDate].valueDate = {effectiveDate}
* ^extension[$resource-lastReviewDate].valueDate = {lastReviewDate}

RuleSet: ValueSetMetadata(id)
* ^meta.profile = $cpg-publishable-valueset
* ^extension[$cpg-knowledgeCapability].valueCode = #shareable
* ^extension[$cpg-knowledgeCapability].valueCode = #computable
* ^extension[$cpg-knowledgeCapability].valueCode = #publishable
* ^extension[$cpg-knowledgeCapability].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/ValueSet/{id}"
* ^status = #active
* ^experimental = false

RuleSet: StructureDefinitionMetadata(id)
* ^url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{id}"
* ^status = #draft
* ^experimental = false

RuleSet: ExtensionContext(path)
* ^context.type = #element
* ^context.expression = "{path}"