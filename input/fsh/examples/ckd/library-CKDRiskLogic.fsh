Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type

Instance: CKDRiskLogic
InstanceOf: Library
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computablelibrary"
* extension[0]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #shareable
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #publishable
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeRepresentationLevel"
  * valueCode = #structured
* url = "http://hl7.org/fhir/uv/cpg/Library/CKDRiskLogic"
* version = "1.0"
* name = "CKDRiskLogic"
* title = "Chronic Kidney Disease (CKD) risk screening logic"
* description = "Chronic Kidney Disease (CKD) risk screening logic"
* status = #active
* experimental = true
* type = $library-type#logic-library
* publisher = "HL7 FHIR Clinical Guidelines Example Artifact"
* content
  * id = "ig-loader-CKDRiskLogic-1.0.cql"