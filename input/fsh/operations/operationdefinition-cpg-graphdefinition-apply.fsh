Instance: cpg-graphdefinition-apply
InstanceOf: OperationDefinition
Usage: #definition
Title: "CPG GraphDefinition Apply"
Description: "The apply operation realizes a GraphDefinition for a given subject"
* insert OperationDefinitionMetadata(cpg-graphdefinition-apply)
* insert OperationExtensions(1)
* name = "CPGGraphDefinitionApply"
* code = #apply
* comment = """
The result of this operation is a Bundle for each subject, where the first entry in the Bundle is
a Composition resource that is the result of realizing the GraphDefinition with respect to that subject.
The remaining entries in the Bundle are the resources referenced by the Composition.

The GraphDefinition is realized by starting with the subject, which is a resource of the type given by
`GraphDefinition.start`, and following each link of the graph:

* If the link has a [cpg-applicabilityExpression](StructureDefinition-cpg-applicabilityExpression.html),
the expression is evaluated, and the link is only followed if the expression returns true.
* For each target of a link, if the target has a [cpg-targetExpression](StructureDefinition-cpg-targetExpression.html),
the expression is evaluated to determine the resources for that target. Otherwise, the resources for the
target are determined by the `path` of the link. The resources are consistent with the `type` (and `profile`, if
specified) of the target.
* The resulting resources are included in the Composition, and any nested links of the target are followed
for each resulting resource.

The target `profile` is typically a [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html),
in which case the target expression is typically the feature expression of that case feature.

The resulting Composition SHOULD identify the GraphDefinition it was realized from using the
[cpg-generatedFrom](StructureDefinition-cpg-generatedFrom.html) extension. When the GraphDefinition is a
[CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html) or a
[CPGCasePlanSummaryDefinition](StructureDefinition-cpg-caseplansummarydefinition.html), the resulting Composition
is typically a [CPGCaseSummary](StructureDefinition-cpg-casesummary.html) or a
[CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html), respectively.

If the GraphDefinition includes library references, those libraries will be available to the evaluated
expressions. If those libraries have parameters, those parameters will be bound by name to the parameters given
to the operation. In addition, parameters to the `$apply` operation are available within expressions as context
variables, accessible by the name of the parameter, prefixed with a percent (%) symbol.

Note that the result of this operation is transient (i.e. none of the resources created by the operation are
persisted in the server, they are all returned as entries in the result Bundle(s)).
"""
* resource = #GraphDefinition
* system = false
* type = true
* instance = true
* parameter[+]
  * name = #url
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Canonical URL of the GraphDefinition when invoked at the resource type level. This is exclusive with the `graphDefinition` parameter."
  * type = #uri
* parameter[+]
  * name = #version
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Version of the GraphDefinition when invoked at the resource type level. This is exclusive with the `graphDefinition` parameter."
  * type = #string
* parameter[+]
  * name = #graphDefinition
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The graph definition to be applied. If the operation is invoked at the instance level, this parameter is not allowed; if the operation is invoked at the type level, either this parameter or `url` (and optionally `version`) must be supplied."
  * type = #GraphDefinition
* parameter[+]
  * name = #subject
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Subject(s) for which the graph definition will be realized. Subjects provided in this parameter SHALL match the type given by the `start` element of the GraphDefinition being applied. For example, if the start is Patient, the subject is a reference to a Patient, or a Group of Patients. This parameter cannot be used with the subjectGroup parameter. If no subject or subjectGroup is provided, what subjects are evaluated is up to the server."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #subjectGroup
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Subjects for which the graph definition will be realized, provided as a Group resource. Subjects provided in this parameter SHALL match the type given by the `start` element of the GraphDefinition being applied. For example, if the start is Patient, the Group is a Group of Patients. This parameter cannot be used with the subject parameter. If no subject or subjectGroup is provided, what subjects are evaluated is up to the server."
  * type = #Group
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
  * documentation = "The practitioner applying the graph definition"
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #organization
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The organization applying the graph definition"
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
  * documentation = "Any input parameters defined in libraries referenced by the GraphDefinition.  Parameter types are mapped to CQL as specified in the Using CQL With FHIR implementation guide. If a parameter appears more than once in the input Parameters resource, it is represented with a List in the input CQL. If a parameter has parts, it is represented as a Tuple in the input CQL."
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
  * documentation = "Data to be made available to the GraphDefinition evaluation. This parameter is exclusive with the prefetchData parameter (i.e. either provide all data as a single bundle, or provide data using multiple bundles with prefetch descriptions)."
  * max = "1"
  * min = 0
  * name = #data
  * type = #Bundle
  * use = #in
* parameter[+]
  * documentation = "Data to be made available to the GraphDefinition evaluation, organized as prefetch response bundles. Each prefetchData parameter specifies either the name of the prefetchKey it is satisfying, a DataRequirement describing the prefetch, or both."
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
  * documentation = "An endpoint to use to access data referenced by retrieve operations in libraries referenced by the GraphDefinition. If provided, this endpoint is used after the data or prefetchData bundles, and the server, if the useServerData parameter is true."
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
    * And the canonical or artifact reference starts with the `artifactRoute` (up to and including the entire uri)
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
  * name = #return
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "A Bundle for each input subject, with a Composition resource as the first entry. The Composition is the result of realizing the graph definition with respect to that subject, and identifies the graph definition using the cpg-generatedFrom extension."
  * type = #Bundle
