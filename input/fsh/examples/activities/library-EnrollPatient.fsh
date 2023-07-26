Instance: enrollment-library
InstanceOf: Library
Usage: #example
Title: "Enrollment Library"
* description = "Logic for an example recommendation to enroll a patient in a pathway"
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(enrollment-library, Library)
* name = "EnrollmentLibrary"
* type = $library-type#logic-library
* insert RelatedFHIRLibraries
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(CPGActivityTypeCS)
* parameter[+]
  * name = #enrollInPathway
  * use = #in
  * min = 0
  * max = "1"
  * type = #string
* parameter[+]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #Tasks
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #EpisodesOfCare
  * use = #out
  * min = 0
  * max = "*"
  * type = #EpisodeOfCare
* parameter[+]
  * name = #"Inclusion Criteria"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Enrollment Task"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #Case
  * use = #out
  * min = 0
  * max = "*"
  * type = #EpisodeOfCare
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
  * type = #EpisodeOfCare
  * profile = Canonical(EpisodeOfCare)
* dataRequirement[+]
  * type = #Task
  * profile = Canonical(Task)
* dataRequirement[+]
  * type = #EpisodeOfCare
  * profile = Canonical(EpisodeOfCare)
* content
  * id = "ig-loader-EnrollPatient.cql"