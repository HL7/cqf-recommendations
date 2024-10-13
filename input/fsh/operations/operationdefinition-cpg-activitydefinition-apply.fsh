Instance: cpg-activitydefinition-apply
InstanceOf: OperationDefinition
Usage: #definition
Title: "CPG ActivityDefinition Apply"
Description: "The apply operation applies a activityDefinition to a given context"
* insert OperationDefinitionMetadata(cpg-activitydefinition-apply)
* insert OperationExtensions
* name = "CPGActivityDefinitionApply"
* code = #apply
* comment = """
The result of invoking this operation is a resource of the type specified by the activity definition, with all the definitions resolved as appropriate for the type of resource. Any dynamicValue elements will be evaluated (in the order in which they appear in the resource) and the results applied to the returned resource.

If the ActivityDefinition includes library references, those libraries will be available to the evaluated expressions. If those libraries have parameters, those parameters will be bound by name to the parameters given to the operation. In addition, parameters to the $apply operation are available within dynamicValue expressions as context variables, accessible by the name of the parameter, prefixed with a percent (%) symbol. For a more detailed description, refer to the ActivityDefinition resource.

Note that the result of this operation is transient (i.e. the resource created by the operation is not persisted in the server, but returned as a contained resource in the result). The result effectively represents a proposed activity, and it is up to the caller to determine whether and how the activity is carried out.
"""
* resource = #ActivityDefinition
* system = false
* type = true
* instance = true
* parameter[+]
  * name = #url
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Canonical URL of the ActivityDefinition when invoked at the resource type level. This is exclusive with the `ActivityDefinition` parameter."
  * type = #uri
* parameter[+]
  * name = #version
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Version of the ActivityDefinition when invoked at the resource type level. This is exclusive with the `ActivityDefinition` parameter."
  * type = #string
* parameter[+]
  * name = #activityDefinition
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The activity definition to apply. If the operation is invoked on an instance, this parameter is not allowed. If the operation is invoked at the type level, this parameter is required"
  * type = #ActivityDefinition
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "The subject(s) that is/are the target of the activity definition to be applied. The subject may be a Patient, Practitioner, Organization, Location, Device, or Group. Subjects provided in this parameter will be resolved as the subject of the ActivityDefinition based on the type of the subject. If multiple subjects of the same type are provided, the behavior is implementation-defined"
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #encounter
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The encounter in context, if any"
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #practitioner
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The practitioner in context"
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #organization
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The organization in context"
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #userType
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The type of user initiating the request, e.g. patient, healthcare provider, or specific type of healthcare provider (physician, nurse, etc.)"
  * type = #CodeableConcept
* parameter[+]
  * name = #userLanguage
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Preferred language of the person using the system"
  * type = #CodeableConcept
* parameter[+]
  * name = #userTaskContext
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The task the system user is performing, e.g. laboratory results review, medication list review, etc. This information can be used to tailor decision support outputs, such as recommended information resources"
  * type = #CodeableConcept
* parameter[+]
  * name = #setting
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The current setting of the request (inpatient, outpatient, etc.)"
  * type = #CodeableConcept
* parameter[+]
  * name = #settingContext
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Additional detail about the setting of the request, if any"
  * type = #CodeableConcept
* parameter[+]
  * documentation = "Any input parameters defined in libraries referenced by the ActivityDefinition. Parameter types are mapped to CQL as specified in the Using CQL section of this implementation guide. If a parameter appears more than once in the input Parameters resource, it is represented with a List in the input CQL. If a parameter has parts, it is represented as a Tuple in the input CQL."
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
  * documentation = "Data to be made available to the ActivityDefinition evaluation. This parameter is exclusive with the prefetchData parameter (i.e. either provide all data as a single bundle, or provide data using multiple bundles with prefetch descriptions)."
  * max = "1"
  * min = 0
  * name = #data
  * type = #Bundle
  * use = #in
* parameter[+]
  * documentation = "Data to be made available to the ActivityDefinition evaluation, organized as prefetch response bundles. Each prefetchData parameter specifies either the name of the prefetchKey it is satisfying, a DataRequirement describing the prefetch, or both."
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
  * documentation = "An endpoint to use to access data referenced by retrieve operations in libraries referenced by the ActivityDefinition. If provided, this endpoint is used after the data or prefetchData bundles, and the server, if the useServerData parameter is true."
  * max = "1"
  * min = 0
  * name = #dataEndpoint
  * type = #Endpoint
  * use = #in
* parameter[+]
  * name = #artifactEndpointConfiguration
  * min = 0
  * max = "*"
  * use = #in
  * documentation = """
Configuration information to resolve canonical artifacts

Processing Semantics:

Create a canonical-like reference (e.g.
`{canonical.url}|{canonical.version}` or similar extensions for non-canonical artifacts).

* Given a single `artifactEndpointConfiguration`
  * When `artifactRoute` is present
    * And `artifactRoute` *starts with* canonical or artifact reference
    * Then attempt to resolve with `endpointUri` or `endpoint`
  * When `artifactRoute` is not present
    * Then attempt to resolve with `endpointUri` or `endpoint`
* Given multiple `artifactEndpointConfiguration`s
  * Then rank order each configuration (see below)
  * And attempt to resolve with `endpointUri` or `endpoint` in order until resolved

Rank each `artifactEndpointConfiguration` such that:
* if `artifactRoute` is present *and* `artifactRoute` *starts with* canonical or artifact reference: rank based on number of matching characters
* if `artifactRoute` is *not* present: include but rank lower

NOTE: For evenly ranked `artifactEndpointConfiguration`s, order as defined in the
OperationDefinition.
"""
  * part[+]
    * name = #artifactRoute
    * min = 0
    * max = "1"
    * use = #in
    * type = #uri
    * documentation = "An optional route used to determine whether this endpoint is expected to be able to resolve artifacts that match the route (i.e. start with the route, up to and including the entire url)"
  * part[+]
    * name = #endpointUri
    * min = 0
    * max = "1"
    * use = #in
    * type = #uri
    * documentation = "The URI of the endpoint, exclusive with the `endpoint` parameter"
  * part[+]
    * name = #endpoint
    * min = 0
    * max = "1"
    * use = #in
    * type = #Endpoint
    * documentation = "An Endpoint resource describing the endpoint, exclusive with the `endpointUri` parameter"
* parameter[+]
  * documentation = "An endpoint to use to access terminology (i.e. valuesets, codesystems, and membership testing) referenced by the ActivityDefinition. If no terminology endpoint is supplied, the evaluation will attempt to use the server on which the operation is being performed as the terminology server."
  * max = "1"
  * min = 0
  * name = #terminologyEndpoint
  * type = #Endpoint
  * use = #in
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "The request resource that is the result of applying the definition"
  * type = #Any