Instance: cpg-cql
InstanceOf: OperationDefinition
Usage: #definition
Title: "CPG CQL"
Description: "Evaluates a CQL expression and returns the results as a Parameters resource."
* insert OperationDefinitionMetadata(cpg-cql)
* name = "CPGCQL"
* experimental = false
* purpose = "This operation is defined to support evaluating CQL expressions directly via an operation"
* affectsState = false
* code = #cql
* system = true
* type = false
* instance = false
* parameter[+]
  * documentation = "Subject for which the expression will be evaluated. This corresponds to the context in which the expression will be evaluated and is represented as a relative FHIR id (e.g. Patient/123), which establishes both the context and context value for the evaluation"
  * max = "1"
  * min = 0
  * name = #subject
  * searchType = #reference
  * type = #string
  * use = #in
* parameter[+]
  * documentation = "Expression to be evaluated. Note that this is an expression of CQL, not the text of a library with definition statements."
  * max = "1"
  * min = 1
  * name = #expression
  * type = #string
  * use = #in
* parameter[+]
  * documentation = "Any input parameters for the expression. Parameters defined in this input will be made available by name to the CQL expression. Parameter types are mapped to CQL as specified in the Using CQL section of this implementation guide. If a parameter appears more than once in the input Parameters resource, it is represented with a List in the input CQL. If a parameter has parts, it is represented as a Tuple in the input CQL."
  * max = "1"
  * min = 0
  * name = #parameters
  * type = #Parameters
  * use = #in
* parameter[+]
  * documentation = "A library to be included. The library is resolved by url and made available by name within the expression to be evaluated."
  * max = "*"
  * min = 0
  * name = #library
  * use = #in
  * part[+]
    * documentation = "The canonical url (with optional version) of the library to be included"
    * max = "1"
    * min = 1
    * name = #url
    * type = #canonical
    * use = #in
  * part[+]
    * documentation = "The name of the library to be used to reference the library within the CQL expression. If no name is provided, the name of the library will be used"
    * max = "1"
    * min = 0
    * name = #name
    * type = #string
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
  * documentation = "The result of evaluating the given expression, returned as a FHIR type, either a resource, or a FHIR-defined type corresponding to the CQL return type, as defined in the Using CQL section of this implementation guide. If the result is a List of resources, the result will be a Bundle. If the result is a CQL system-defined or FHIR-defined type, the result is returned as a Parameters resource"
  * max = "*"
  * min = 1
  * name = #return
  * type = #Any
  * use = #out