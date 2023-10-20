Instance: orderservice-library
InstanceOf: CPGExecutableLibrary
Usage: #example
Title: "Order Service Library"
* insert Profile(cpg-shareablelibrary)
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-publishablelibrary)
* insert KnowledgeArtifactMetadata(orderservice-library, Library)
* insert RelatedFHIRLibraries
* description = "Logic for an example recommendation to order a service"
* name = "OrderServiceLibrary"
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
  * profile = Canonical(Procedure)
* dataRequirement[+]
  * type = #Procedure
  * profile = Canonical(Procedure)
* dataRequirement[+]
  * type = #ServiceRequest
  * profile = Canonical(ServiceRequest)
* dataRequirement[+]
  * type = #ServiceRequest
  * profile = Canonical(ServiceRequest)
* content
  * id = "ig-loader-OrderService.cql"