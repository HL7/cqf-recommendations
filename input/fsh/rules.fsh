RuleSet: CodeSystemMetadata(id, type)
* ^meta.profile = $cpg-publishable-codesystem
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #shareable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #computable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #publishable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/{type}/{id}"
* ^status = #draft
* ^experimental = false
* ^publisher = "Health Level 7 International - Clinical Decision Support WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/dss/index.cfm"
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/uv/cpg/ValueSet/{id}"
* ^content = #complete

RuleSet: ValueSetMetadata(id, type)
* ^meta.profile = $cpg-publishable-valueset
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #shareable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #computable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #publishable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/{type}/{id}"
* ^status = #active
* ^experimental = false
* ^publisher = "Health Level 7 International - Clinical Decision Support WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/dss/index.cfm"

RuleSet: DefinitionMetadata(id, type)
* ^url = "http://hl7.org/fhir/uv/cpg/{type}/{id}"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "Health Level 7 International - Clinical Decision Support WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"