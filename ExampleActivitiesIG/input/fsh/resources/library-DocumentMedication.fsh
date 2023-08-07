Instance: documentmedication-library
InstanceOf: Library
Usage: #example
Title: "Document Medication Library"
* description = "Logic for an example recommendation to document a medication"
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(documentmedication-library, Library)
* insert RelatedFHIRLibraries
* name = "DocumentMedicationLibrary"
* type = $library-type#logic-library
* relatedArtifact[+]
  * type = #depends-on
//  * resource = Canonical(cpg-activity-type-cs)
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
  * profile = Canonical(MedicationRequest)
* dataRequirement[+]
  * type = #MedicationRequest
  * profile = Canonical(MedicationRequest)
* dataRequirement[+]
  * type = #Task
  * profile = Canonical(Task)
* dataRequirement[+]
  * type = #Task
  * profile = Canonical(Task)
* content
  * id = "ig-loader-DocumentMedication.cql"