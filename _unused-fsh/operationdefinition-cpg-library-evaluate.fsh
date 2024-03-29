Instance: cpg-library-evaluate
InstanceOf: OperationDefinition
Usage: #definition
Title: "CPG Library Evaluate"
Description: "Evaluates the contents of a library and returns the results as a Parameters resource."
* insert OperationDefinitionMetadata(cpg-library-evaluate)
* name = "CPGLibraryEvaluate"
* experimental = false
* purpose = "This operation is defined to support evaluating the contents of a library directly via an operation"
* affectsState = false
* code = #evaluate
* resource = #Library
* system = false
* type = true
* instance = true
* parameter[+]
  * documentation = "The canonical url (with optional version) of the library to be evaluated. This parameter is only used when the operation is invoked at the type level."
  * max = "1"
  * min = 0
  * name = #library
  * type = #canonical
  * use = #in
* parameter[+]
  * documentation = "Subject for which the library will be evaluated. This corresponds to the context in which the library will be evaluated and is represented as a relative FHIR id (e.g. Patient/123), which establishes both the context and context value for the evaluation"
  * max = "1"
  * min = 0
  * name = #subject
  * searchType = #reference
  * type = #string
  * use = #in
* parameter[+]
  * documentation = "Expression(s) to be evaluated. If no expression names are provided, the operation evaluates all public expression definitions in the library."
  * max = "*"
  * min = 0
  * name = #expression
  * type = #string
  * use = #in
* parameter[+]
  * documentation = "Any input parameters for the library. Parameters defined in this input will be bound by name to parameters defined in the CQL library (or referenced libraries). Parameter types are mapped to CQL as specified in the Using CQL section of this implementation guide. If a parameter appears more than once in the input Parameters resource, it is represented with a List in the input CQL. If a parameter has parts, it is represented as a Tuple in the input CQL."
  * max = "1"
  * min = 0
  * name = #parameters
  * type = #Parameters
  * use = #in
* parameter[+]
  * documentation = "Whether to use data from the server performing the evaluation. If this parameter is true (the default), then the operation will use data first from any bundles provided as parameters (through the data and prefetch parameters), second data from the server performing the operation, and third, data from the dataEndpoint parameter (if provided). If this parameter is false, the operation will use data first from the bundles provided in the data or prefetch parameters, and second from the dataEndpoint parameter (if provided)."
  * max = "1"
  * min = 0
  * name = #useServerData
  * type = #boolean
  * use = #in
* parameter[+]
  * documentation = "Data to be made available to the library evaluation. This parameter is exclusive with the prefetchData parameter (i.e. either provide all data as a single bundle, or provide data using multiple bundles with prefetch descriptions)."
  * max = "1"
  * min = 0
  * name = #data
  * type = #Bundle
  * use = #in
* parameter[+]
  * documentation = "Data to be made available to the library evaluation, organized as prefetch response bundles. Each prefetchData parameter specifies either the name of the prefetchKey it is satisfying, a DataRequirement describing the prefetch, or both."
  * max = "*"
  * min = 0
  * name = #prefetchData
  * use = #in
  * part[+]
    * documentation = "The key of the prefetch item. This typically corresponds to the name of a parameter in a library, or the name of a prefetch item in a CDS Hooks discovery response"
    * name = #key
    * max = "1"
    * min = 0
    * type = #string
    * use = #in
  * part[+]
    * documentation = "A DataRequirement describing the content of the prefetch item."
    * name = #descriptor
    * max = "1"
    * min = 0
    * type = #DataRequirement
    * use = #in
  * part[+]
    * documentation = "The prefetch data as a Bundle. If the prefetchData has no prefetchResult part, it indicates there is no data associated with this prefetch item."
    * name = #data
    * max = "1"
    * min = 0
    * type = #Bundle
    * use = #in
* parameter[+]
  * documentation = "An endpoint to use to access data referenced by retrieve operations in the library. If provided, this endpoint is used after the data or prefetchData bundles, and the server, if the useServerData parameter is true."
  * max = "1"
  * min = 0
  * name = #dataEndpoint
  * type = #Endpoint
  * use = #in
* parameter[+]
  * documentation = "An endpoint to use to access content (i.e. libraries) referenced by the library. If no content endpoint is supplied, the evaluation will attempt to retrieve content from the server on which the operation is being performed."
  * max = "1"
  * min = 0
  * name = #contentEndpoint
  * type = #Endpoint
  * use = #in
* parameter[+]
  * documentation = "An endpoint to use to access terminology (i.e. valuesets, codesystems, and membership testing) referenced by the library. If no terminology endpoint is supplied, the evaluation will attempt to use the server on which the operation is being performed as the terminology server."
  * max = "1"
  * min = 0
  * name = #terminologyEndpoint
  * type = #Endpoint
  * use = #in
* parameter[+]
  * documentation = "The results of the library evaluation, returned as a Parameters resource with a parameter for each named expression defined in the library. The value of each expression is returned as a FHIR type, either a resource, or a FHIR-defined type corresponding to the CQL return type, as defined in the Using CQL section of this implementation guide. If the result of an expression is a list of resources, that parameter will be repeated for each element in the result"
  * max = "1"
  * min = 1
  * name = #return
  * type = #Parameters
  * use = #out