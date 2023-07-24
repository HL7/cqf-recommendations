Instance: RecordDetectedIssue
InstanceOf: Library
Usage: #example
Description: "Logic for an example recommendation to record a detected issue"
* insert ProfileMeta(cpg-computablelibrary)
* insert ProfileMeta(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata()
* name = "RecordDetectedIssue"
* title = "Record Detected Issue"
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
  * name = #"Inclusion Criteria"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Record Detected Issue Task"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Detected Issue"
  * use = #out
  * min = 0
  * max = "*"
  * type = #DetectedIssue
* parameter[+]
  * name = #"Active or Completed Activity"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Activity Not Done"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Activity Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Activity Proposal Rejected"
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
  * type = #Task
  * profile = "http://hl7.org/fhir/StructureDefinition/Task"
* dataRequirement[+]
  * type = #DetectedIssue
  * profile = "http://hl7.org/fhir/StructureDefinition/DetectedIssue"
* content
  * id = "ig-loader-RecordDetectedIssue.cql"