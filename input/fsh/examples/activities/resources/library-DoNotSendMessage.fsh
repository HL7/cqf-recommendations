Instance: DoNotSendMessage
InstanceOf: Library
Usage: #example
Description: "Logic for an example recommendation not to send a message"
* insert ProfileMeta(cpg-computablelibrary)
* insert ProfileMeta(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata()
* name = "DoNotSendMessage"
* title = "Do Not Send Message"
* type = $library-type#logic-library
* publisher = "HL7 International - Clinical Decision Support WG"
* contact.telecom
  * system = #url
  * value = "http://hl7.org/Special/committees/[something]"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIRHelpers|4.0.1"
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
  * profile = "http://hl7.org/fhir/StructureDefinition/Communication"
* dataRequirement[+]
  * type = #Communication
  * profile = "http://hl7.org/fhir/StructureDefinition/Communication"
* dataRequirement[+]
  * type = #CommunicationRequest
  * profile = "http://hl7.org/fhir/StructureDefinition/CommunicationRequest"
* dataRequirement[+]
  * type = #CommunicationRequest
  * profile = "http://hl7.org/fhir/StructureDefinition/CommunicationRequest"
* dataRequirement[+]
  * type = #CommunicationRequest
  * profile = "http://hl7.org/fhir/StructureDefinition/CommunicationRequest"
* content
  * id = "ig-loader-DoNotSendMessage.cql"