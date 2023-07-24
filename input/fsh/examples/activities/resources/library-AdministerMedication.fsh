Instance: administer-medication-library
InstanceOf: Library
Usage: #example
Description: "Logic for an example recommendation to administer a medication"
* insert ProfileMeta(cpg-shareablelibrary)
* insert ProfileMeta(cpg-computablelibrary)
* insert ProfileMeta(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(administer-medication-library)
* name = "AdministerMedicationLibrary"
* title = "Administer Medication Library"
* type = $library-type#logic-library
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
  * name = #"Active or Completed Medication Administration"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationAdministration
* parameter[+]
  * name = #"Medication Administration Not Done"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationAdministration
* parameter[+]
  * name = #"Administer Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Administer Proposal Rejected"
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
  * type = #MedicationAdministration
  * profile = "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"
* dataRequirement[+]
  * type = #MedicationAdministration
  * profile = "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"
* dataRequirement[+]
  * type = #Task
  * profile = "http://hl7.org/fhir/StructureDefinition/Task"
* dataRequirement[+]
  * type = #Task
  * profile = "http://hl7.org/fhir/StructureDefinition/Task"
* content
  * id = "ig-loader-AdministerMedication.cql"