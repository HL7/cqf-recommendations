Instance: ProposeDiagnosis
InstanceOf: Library
Usage: #example
Description: "Logic for an example recommendation to propose a diagnosis"
* insert ProfileMeta(cpg-computablelibrary)
* insert ProfileMeta(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata()
* name = "ProposeDiagnosis"
* title = "Propose Diagnosis"
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
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
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
  * name = #"Propose Diagnosis Task"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #Diagnosis
  * use = #out
  * min = 0
  * max = "*"
  * type = #Condition
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
  * type = #Condition
  * profile = "http://hl7.org/fhir/StructureDefinition/Condition"
* content
  * id = "ig-loader-ProposeDiagnosis.cql"
