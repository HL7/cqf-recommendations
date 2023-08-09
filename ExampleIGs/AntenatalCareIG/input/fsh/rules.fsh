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
* ^url = "http://fhir.org/guides/who/anc-cds/CodeSystem/{id-prefix}-cs"
* ^experimental = true
* ^content = #complete
* ^caseSensitive = true
* ^valueSet = "http://fhir.org/guides/who/anc-cds/ValueSet/{id-prefix}-vs"

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
* ^url = "http://fhir.org/guides/who/anc-cds/ValueSet/{id}"
* ^status = #active
* ^experimental = false

RuleSet: LibraryMetaData(id)
* url = "http://fhir.org/guides/who/anc-cds/Library/{id}"
* identifier
  * use = #official
  * value = "{id}"
* name = "{id}"
* status = #active
* experimental = true
* publisher = "World Health Organization (WHO)"
* copyright = "© WHO 2019+."
* type = $library-type#logic-library "Logic Library"

RuleSet: PlanDefinitionMetadata(id, name)
* url = "http://fhir.org/guides/who/anc-cds/PlanDefinition/{id}"
* identifier
  * use = #official
  * value = "{name}"
* name = "{name}"
* status = #active
* experimental = true
* copyright = "© WHO 2019+."

RuleSet: QuestionnaireMetadata(id)
* url = "http://fhir.org/guides/who/anc-cds/Questionnaire/{id}"
* status = #active

