Instance: DocumentMedication
InstanceOf: Library
Usage: #example
Description: "Logic for an example recommendation to document a medication"
* insert ProfileMeta(cpg-computablelibrary)
* insert ProfileMeta(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata()
* name = "DocumentMedication"
* title = "Document Medication"
* type = $library-type#logic-library
* publisher = "HL7 International - Clinical Decision Support WG"
* contact.telecom
  * system = #url
  * value = "http://hl7.org/Special/committees/dss"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIRHelpers|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type"
* parameter[+]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #"Medication Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationRequest
* parameter[+]
  * name = #"Medication Not Proposed"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationRequest
* parameter[+]
  * name = #"Inclusion Criteria"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Document Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Document Proposal Rejected"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Is Recommendation Applicable"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* dataRequirement[+]
  * type = #MedicationRequest
  * profile = "http://hl7.org/fhir/StructureDefinition/MedicationRequest"
* dataRequirement[+]
  * type = #MedicationRequest
  * profile = "http://hl7.org/fhir/StructureDefinition/MedicationRequest"
* dataRequirement[+]
  * type = #Task
  * profile = "http://hl7.org/fhir/StructureDefinition/Task"
* dataRequirement[+]
  * type = #Task
  * profile = "http://hl7.org/fhir/StructureDefinition/Task"
* content
  * id = "ig-loader-DocumentMedication.cql"