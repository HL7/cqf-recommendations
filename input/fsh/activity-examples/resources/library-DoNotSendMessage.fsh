Instance: donotsendmessage-library
InstanceOf: CPGExecutableLibrary
Usage: #example
Title: "Do Not Send Message"
* insert Profile(cpg-shareablelibrary)
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-publishablelibrary)
* insert KnowledgeArtifactMetadata(donotsendmessage-library, Library)
* insert RelatedFHIRLibraries
* description = "Logic for an example recommendation not to send a message"
* name = "DoNotSendMessage"
* type = $library-type#logic-library
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
  * name = #"Active or In-progress Communication"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Communication
* parameter[+]
  * name = #"Communication Not Done"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Communication
* parameter[+]
  * name = #"Communication Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #CommunicationRequest
* parameter[+]
  * name = #"Do Not Communicate Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #CommunicationRequest
* parameter[+]
  * name = #"Rejected Do Not Communicate Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #CommunicationRequest
* parameter[+]
  * name = #"Is Recommendation Applicable"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* dataRequirement[+]
  * type = #Communication
  * profile = Canonical(Communication)
* dataRequirement[+]
  * type = #Communication
  * profile = Canonical(Communication)
* dataRequirement[+]
  * type = #CommunicationRequest
  * profile = Canonical(CommunicationRequest)
* dataRequirement[+]
  * type = #CommunicationRequest
  * profile = Canonical(CommunicationRequest)
* dataRequirement[+]
  * type = #CommunicationRequest
  * profile = Canonical(CommunicationRequest)
* content
  * id = "ig-loader-DoNotSendMessage.cql"