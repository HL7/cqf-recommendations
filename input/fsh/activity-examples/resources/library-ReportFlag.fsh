Instance: reportflag-library
InstanceOf: Library
Usage: #example
Title: "Report Flag"
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(reportflag-library, Library)
* insert RelatedFHIRLibraries
* description = "Logic for an example recommendation to record an inference"
* name = "ReportFlag"
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
  * name = #"Report Flag Task"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Reported Flag"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Flag
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
  * type = #Flag
  * profile = Canonical(Flag)
* content
  * id = "ig-loader-ReportFlag.cql"
