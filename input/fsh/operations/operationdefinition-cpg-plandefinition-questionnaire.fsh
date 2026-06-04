Instance: cpg-planDefinition-questionnaire
InstanceOf: OperationDefinition
Usage: #definition
Title: "CPG PlanDefinition Questionnaire"
Description: """
  Generates a Questionnaire instance based on a specified PlanDefinition, creating questionnaire group items for each data requirement (StructureDefinition) referenced by action.input. A child questionnaire item is generated for each of the StructureDefinition elements.
"""
* insert OperationDefinitionMetadata(cpg-planDefinition-questionnaire)
* name = "CPGPlanDefinitionQuestionnaire"
* experimental = false
* code = #questionnaire
* comment = """
\n\nIf the operation is not called at the instance level, one of the *identifier*, *profile* or *url* 'in' parameters must be provided. If more than one is specified, servers may raise an error or may resolve with the parameter of their choice. If called at the instance level, these parameters will be ignored. The response will contain a [Questionnaire](https://hl7.org/fhir/R4/questionnaire.html) instance that conforms to [SDC Extractable Questionnaire](http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-defn) and [SDC Populatable Questionnaire - Expression](http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp) based on the specified [PlanDefinition](https://hl7.org/fhir/R4/plandefinition.html) and/or an [OperationOutcome](https://hl7.org/fhir/R4/operationoutcome.html) resource with errors or warnings. Nested groups are used to handle complex structures and data types. If the 'minimalOnly' parameter is set to true, only minimal elements from the structure definition will be included. These are defined as:
  1. The element is a part of the differential; or
  2. The element is a part of the snapshot and has a cardinality of at least 1..\* (min > 0). Nested child elements with min > 0 should also be included if parent has min > 0; and
  3. The element is not constrained by fixed[x] or pattern[x]
  \n\nOf note, supportedOnly is not recommended for use with minimalOnly within CPG. See [Questionnaire Processing Semantics](interactive-cds.html#questionnaire-generation-processing-semantics) for further details.
"""
* resource = #PlanDefinition
* system = false
* type = true
* instance = true
* parameter[0]
  * name = #identifier
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "A logical identifier (i.e. 'PlanDefinition.identifier'). The server must know the PlanDefinition or be able to retrieve it from other known repositories."
  * type = #Identifier
* parameter[+]
  * name = #profile
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The PlanDefinition is provided directly as part of the request. Servers may choose not to accept profiles in this fashion"
  * type = #PlanDefinition
* parameter[+]
  * name = #url
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "The PlanDefinition's official URL (i.e. 'PlanDefinition.url'). The server must know the PlanDefinition or be able to retrieve it from other known repositories."
  * type = #canonical
  * targetProfile = "http://hl7.org/fhir/StructureDefinition/PlanDefinition"
* parameter[+]
  * name = #supportedOnly
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "If true, the questionnaire will only include those elements marked as \"mustSupport='true'\" in the StructureDefinition."
  * type = #boolean
* parameter[+]
  * name = #minimalOnly
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "If true, the questionnaire items are limited to the minimal set of elements  from the StructureDefinition."
  * type = #boolean
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
  * documentation = "The questionnaire form generated based on the PlanDefinition action.inputs"
  * type = #Questionnaire

