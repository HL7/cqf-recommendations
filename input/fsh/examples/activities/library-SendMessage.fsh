Instance: sendmessage-library
InstanceOf: Library
Usage: #example
Title: "Send Message Library"
* description = "Logic for an example recommendation to send a message"
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(sendmessage-library, Library)
* name = "SendMessageLibrary"
* type = $library-type#logic-library
* insert RelatedFHIRLibraries
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
  * name = #"Active or Completed Communication"
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
  * name = #"Communication Not Proposed"
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
* content
  * id = "ig-loader-SendMessage.cql"