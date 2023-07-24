Instance: OrderService
InstanceOf: Library
Usage: #example
Description: "Logic for an example recommendation to order a service"
* insert ProfileMeta(cpg-computablelibrary)
* insert ProfileMeta(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata()
* name = "OrderService"
* title = "Order Service"
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
  * name = #"Active or Completed Procedure"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Procedure
* parameter[+]
  * name = #"Procedure Not Done"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Procedure
* parameter[+]
  * name = #"Procedure Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #ServiceRequest
* parameter[+]
  * name = #"Procedure Not Proposed"
  * use = #out
  * min = 0
  * max = "*"
  * type = #ServiceRequest
* parameter[+]
  * name = #"Is Recommendation Applicable"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* dataRequirement[+]
  * type = #Procedure
  * profile = "http://hl7.org/fhir/StructureDefinition/Procedure"
* dataRequirement[+]
  * type = #Procedure
  * profile = "http://hl7.org/fhir/StructureDefinition/Procedure"
* dataRequirement[+]
  * type = #ServiceRequest
  * profile = "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
* dataRequirement[+]
  * type = #ServiceRequest
  * profile = "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
* content
  * id = "ig-loader-OrderService.cql"