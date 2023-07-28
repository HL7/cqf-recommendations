Instance: donotsendmessage-library
InstanceOf: Library
Usage: #example
Title: "Do Not Send Message"
* description = "Logic for an example recommendation not to send a message"
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(donotsendmessage-library, Library)
* name = "DoNotSendMessage"
* type = $library-type#logic-library
* publisher = "HL7 International - Clinical Decision Support WG"
* contact.telecom
  * system = #url
  * value = "http://hl7.org/Special/committees/[something]"
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