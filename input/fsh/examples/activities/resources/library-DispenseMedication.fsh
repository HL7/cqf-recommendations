Instance: DispenseMedication
InstanceOf: Library
Usage: #example
Description: "Logic for an example recommendation to dispense a medication"
* insert ProfileMeta(cpg-computablelibrary)
* insert ProfileMeta(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata()
* name = "DispenseMedication"
* title = "Dispense Medication"
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
  * name = #"Active or Completed Medication Dispense"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationDispense
* parameter[+]
  * name = #"Medication Dispense Not Done"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationDispense
* parameter[+]
  * name = #"Dispense Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Dispense Proposal Rejected"
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
  * type = #MedicationDispense
  * profile = "http://hl7.org/fhir/StructureDefinition/MedicationDispense"
* dataRequirement[+]
  * type = #MedicationDispense
  * profile = "http://hl7.org/fhir/StructureDefinition/MedicationDispense"
* dataRequirement[+]
  * type = #Task
  * profile = "http://hl7.org/fhir/StructureDefinition/Task"
* dataRequirement[+]
  * type = #Task
  * profile = "http://hl7.org/fhir/StructureDefinition/Task"
* content
  * id = "ig-loader-DispenseMedication.cql"