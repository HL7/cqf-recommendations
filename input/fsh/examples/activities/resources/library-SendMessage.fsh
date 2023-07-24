Instance: SendMessage
InstanceOf: Library
Usage: #example
Description: "Logic for an example recommendation to send a message"
* insert ProfileMeta(cpg-computablelibrary)
* insert ProfileMeta(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata()
* name = "SendMessage"
* title = "Send Message"
* type = $library-type#logic-library
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
* content
  * id = "ig-loader-SendMessage.cql"