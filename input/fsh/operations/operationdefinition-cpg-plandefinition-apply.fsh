Instance: cpg-plandefinition-apply
InstanceOf: OperationDefinition
Usage: #definition
Title: "CPG PlanDefinition Apply"
Description: "The apply operation applies a PlanDefinition to a given context"
* insert OperationDefinitionMetadata(cpg-plandefinition-apply)
* insert OperationExtensions
* name = "CPGPlanDefinitionApply"
* code = #apply
* comment = """
The result of this operation is a RequestGroup resource.

The RequestGroup will have actions for each of the applicable actions in the
plan based on evaluating the applicability condition in context. For each
applicable action, the definition is applied as described in the `$apply`
operation of the ActivityDefinition resource, and the resulting resource is
added as an activity to the RequestGroup.

If the ActivityDefinition includes library references, those
libraries will be available to the evaluated expressions. If those libraries
have parameters, those parameters will be bound by name to the parameters given
to the operation.  In addition, parameters to the `$apply` operation are available
within dynamicValue expressions as context variables, accessible by the name of
the parameter, prefixed with a percent (%) symbol.

For a more detailed description, refer to the PlanDefinition and
ActivityDefinition resource documentation. Note that result of this operation is
transient (i.e. none of the resources created by the operation are persisted in
the server, they are all returned as contained resources in the result). The
result effectively represents a proposed set of activities, and it is up to the
caller to determine whether and how those activities are actually carried out.
"""
* base = $plandefinition-apply
* resource = #PlanDefinition
* system = false
* type = true
* instance = true
* parameter[+]
  * name = #planDefinition
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The plan definition to be applied. If the operation is invoked at the instance level, this parameter is not allowed; if the operation is invoked at the type level, this parameter is required"
  * type = #PlanDefinition
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "The subject(s) that is/are the target of the plan to be applied. The subject may be a Patient, Practitioner, Organization, Location, Device, or Group. Subjects provided in this parameter will be resolved as the subject of the PlanDefinition based on the type of the subject. If multiple subjects of the same type are provided, the behavior is implementation-defined"
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
  * documentation = "The practitioner applying the plan definition"
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #organization
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The organization applying the plan definition"
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
  * name = #mergeNestedCarePlans
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "True if the result of any nested PlanDefinitions should be merged into the final care plan, false if they should be preserved as nested CarePlans in the output. If this parameter is not specified, the default behavior is to preserve nested care plans in the output."
  * type = #boolean
* parameter[+]
  * documentation = "Any input parameters defined in libraries referenced by the PlanDefinition.  Parameter types are mapped to CQL as specified in the Using CQL section of this implementation guide. If a parameter appears more than once in the input Parameters resource, it is represented with a List in the input CQL. If a parameter has parts, it is represented as a Tuple in the input CQL."
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
  * documentation = "Data to be made available to the PlanDefinition evaluation. This parameter is exclusive with the prefetchData parameter (i.e. either provide all data as a single bundle, or provide data using multiple bundles with prefetch descriptions)."
  * max = "1"
  * min = 0
  * name = #data
  * type = #Bundle
  * use = #in
* parameter[+]
  * documentation = "Data to be made available to the PlanDefinition evaluation, organized as prefetch response bundles. Each prefetchData parameter specifies either the name of the prefetchKey it is satisfying, a DataRequirement describing the prefetch, or both."
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
  * documentation = "An endpoint to use to access data referenced by retrieve operations in libraries referenced by the PlanDefinition. If provided, this endpoint is used after the data or prefetchData bundles, and the server, if the useServerData parameter is true."
  * max = "1"
  * min = 0
  * name = #dataEndpoint
  * type = #Endpoint
  * use = #in
* parameter[+]
  * documentation = "An endpoint to use to access content (i.e. libraries) referenced by the PlanDefinition. If no content endpoint is supplied, the evaluation will attempt to retrieve content from the server on which the operation is being performed."
  * max = "1"
  * min = 0
  * name = #contentEndpoint
  * type = #Endpoint
  * use = #in
* parameter[+]
  * documentation = "An endpoint to use to access terminology (i.e. valuesets, codesystems, and membership testing) referenced by the PlanDefinition. If no terminology endpoint is supplied, the evaluation will attempt to use the server on which the operation is being performed as the terminology server."
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
  * documentation = "The RequestGroup that is the result of applying the PlanDefinition"
  * type = #RequestGroup