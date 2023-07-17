RuleSet: CodeSystemMetadata(id, type)
* ^meta.profile = $cpg-publishable-codesystem
* ^extension[$cpg-knowledgeCapability].valueCode = #shareable
* ^extension[$cpg-knowledgeCapability].valueCode = #computable
* ^extension[$cpg-knowledgeCapability].valueCode = #publishable
* ^extension[$cpg-knowledgeCapability].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/{type}/{id}"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/uv/cpg/ValueSet/{id}"
* ^content = #complete

RuleSet: CodeSystemDates(approvalDate, effectiveDate, lastReviewDate )
* ^extension[$resource-approvalDate].valueDate = {approvalDate}
* ^extension[$codesystem-effectiveDate].valueDate = {effectiveDate}
* ^extension[$resource-lastReviewDate].valueDate = {lastReviewDate}

// RuleSet: CodeSystemCodeWithComment(#W00, Display, Description, Comment)
// * "{#W00} {Display} {Description}"
//   * ^extension[$codesystem-concept-comments].valueString = "{Comment}"

RuleSet: ValueSetMetadata(id, type)
* ^meta.profile = $cpg-publishable-valueset
* ^extension[$cpg-knowledgeCapability].valueCode = #shareable
* ^extension[$cpg-knowledgeCapability].valueCode = #computable
* ^extension[$cpg-knowledgeCapability].valueCode = #publishable
* ^extension[$cpg-knowledgeCapability].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/{type}/{id}"
* ^status = #active
* ^experimental = false

RuleSet: DefinitionMetadata(id, type)
* ^url = "http://hl7.org/fhir/uv/cpg/{type}/{id}"
* ^status = #draft
* ^experimental = false

RuleSet: ExtensionContext(path)
* ^context.type = #element
* ^context.expression = "{path}"