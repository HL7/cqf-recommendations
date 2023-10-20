Instance: recorddetectedissue-library
InstanceOf: CPGExecutableLibrary
Usage: #example
Title: "Record Detected Issue Library"
* insert Profile(cpg-shareablelibrary)
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-publishablelibrary)
* insert KnowledgeArtifactMetadata(recorddetectedissue-library, Library)
* insert RelatedFHIRLibraries
* description = "Logic for an example recommendation to record a detected issue"
* name = "RecordDetectedIssueLibrary"
* type = $library-type#logic-library
* relatedArtifact[+]
  * type = #depends-on
  * resource = $cpg-activity-type-cs
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
  * profile = Canonical(Task)
* dataRequirement[+]
  * type = #DetectedIssue
  * profile = Canonical(DetectedIssue)
* content
  * id = "ig-loader-RecordDetectedIssue.cql"