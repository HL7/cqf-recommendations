Instance: proposediagnosis-library
InstanceOf: Library
Usage: #example
Title: "Propose Diagnosis Library"
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(proposediagnosis-library, Library)
* insert RelatedFHIRLibraries
* description = "Logic for an example recommendation to propose a diagnosis"
* name = "ProposeDiagnosisLibrary"
* type = $library-type#logic-library
* relatedArtifact[+]
  * type = #depends-on
//  * resource = Canonical(cpg-activity-type-cs)
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(ConditionClinicalStatusCodes)
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(ConditionVerificationStatus)
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
  * profile = Canonical(Task)
* dataRequirement[+]
  * type = #Condition
  * profile = Canonical(Condition)
* content
  * id = "ig-loader-ProposeDiagnosis.cql"
