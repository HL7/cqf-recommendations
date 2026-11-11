// Capability statements for the CPG Service and CPG Client actors at each level of enablement.
// Each pair shares an interactions RuleSet, inserted with mode = server for the service and client for the client.

Alias: $cs-expectation = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation
Alias: $cpg-activitydefinition-apply-operation = http://hl7.org/fhir/uv/cpg/OperationDefinition/cpg-activitydefinition-apply
Alias: $cpg-plandefinition-apply-operation = http://hl7.org/fhir/uv/cpg/OperationDefinition/cpg-plandefinition-apply
Alias: $cpg-plandefinition-questionnaire-operation = http://hl7.org/fhir/uv/cpg/OperationDefinition/cpg-planDefinition-questionnaire
Alias: $cpg-structuredefinition-questionnaire-operation = http://hl7.org/fhir/uv/cpg/OperationDefinition/cpg-structureDefinition-questionnaire
Alias: $cpg-graphdefinition-apply-operation = http://hl7.org/fhir/uv/cpg/OperationDefinition/cpg-graphdefinition-apply
Alias: $sdc-questionnaire-populate-operation = http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-populate
Alias: $sdc-questionnaireresponse-extract-operation = http://hl7.org/fhir/uv/sdc/OperationDefinition/QuestionnaireResponse-extract
Alias: $measure-evaluate-measure = http://hl7.org/fhir/OperationDefinition/Measure-evaluate-measure

RuleSet: ActorCapabilityStatementMetadata(id)
* url = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/{id}"
* experimental = false
* status = #active
* date = "2026-11-02"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #json
* format[+] = #xml

RuleSet: Expectation(code)
* extension[+].url = $cs-expectation
* extension[=].valueCode = #{code}

RuleSet: ReadSearch
* interaction[+].code = #read
* interaction[+].code = #search-type

RuleSet: ReadSearchWrite
* insert ReadSearch
* interaction[+].code = #create
* interaction[+].code = #update

// Narrative

RuleSet: NarrativeInteractions(mode)
* rest
  * mode = #{mode}
  * resource[+]
    * type = #PlanDefinition
    * insert ReadSearch
    * operation[+]
      * insert Expectation(SHALL)
      * name = "apply"
      * definition = $cpg-plandefinition-apply-operation
      * documentation = "Returns the guideline narrative relevant to the given context as documentation-only actions. The same guidance MAY also be delivered as CDS Hooks cards that link to the narrative."

Instance: cpg-narrative-service-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Narrative Service Capabilities"
Description: "Expected capabilities of a CPG Narrative Service, which returns the guideline narrative relevant to a clinical context."
* id = "cpg-narrative-service"
* insert ActorCapabilityStatementMetadata(cpg-narrative-service)
* name = "CPGNarrativeServiceCapabilities"
* insert NarrativeInteractions(server)

Instance: cpg-narrative-client-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Narrative Client Capabilities"
Description: "Expected capabilities of a CPG Narrative Client, which requests guideline narrative at points in the workflow and displays it."
* id = "cpg-narrative-client"
* insert ActorCapabilityStatementMetadata(cpg-narrative-client)
* name = "CPGNarrativeClientCapabilities"
* insert NarrativeInteractions(client)

// Summary

RuleSet: SummaryInteractions(mode)
* rest
  * mode = #{mode}
  * resource[+]
    * type = #Patient
    * operation[+]
      * insert Expectation(SHALL)
      * name = "summary"
      * definition = $cpg-common-patient-summary-operation
      * documentation = "Returns a summary of the patient's case features relevant to the guideline, conforming to the CPGCaseSummary profile."
  * resource[+]
    * type = #GraphDefinition
    * insert ReadSearch
    * operation[+]
      * insert Expectation(SHALL)
      * name = "apply"
      * definition = $cpg-graphdefinition-apply-operation
      * documentation = "Realizes a case summary or case plan summary definition for the subject, returning a Composition (such as a CPGCaseSummary or CPGCasePlanSummary) that identifies the source definition using the cpg-generatedFrom extension."

Instance: cpg-summary-service-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Summary Service Capabilities"
Description: "Expected capabilities of a CPG Summary Service, which produces a summary of the patient's case features relevant to a guideline."
* id = "cpg-summary-service"
* insert ActorCapabilityStatementMetadata(cpg-summary-service)
* name = "CPGSummaryServiceCapabilities"
* insert SummaryInteractions(server)

Instance: cpg-summary-client-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Summary Client Capabilities"
Description: "Expected capabilities of a CPG Summary Client, which requests and displays the patient's case summary alongside the guideline narrative."
* id = "cpg-summary-client"
* insert ActorCapabilityStatementMetadata(cpg-summary-client)
* name = "CPGSummaryClientCapabilities"
* insert SummaryInteractions(client)

// Recommendation

RuleSet: RecommendationInteractions(mode)
* rest
  * mode = #{mode}
  * resource[+]
    * type = #PlanDefinition
    * insert ReadSearch
    * operation[+]
      * insert Expectation(SHALL)
      * name = "apply"
      * definition = $cpg-plandefinition-apply-operation
      * documentation = "Returns patient-specific proposals whose resources conform to the CPG activity profiles."
  * resource[+]
    * type = #ActivityDefinition
    * insert ReadSearch
    * operation[+]
      * insert Expectation(SHOULD)
      * name = "apply"
      * definition = $cpg-activitydefinition-apply-operation

Instance: cpg-recommendation-service-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Recommendation Service Capabilities"
Description: "Expected capabilities of a CPG Recommendation Service, which evaluates recommendation definitions and returns patient-specific proposals."
* id = "cpg-recommendation-service"
* insert ActorCapabilityStatementMetadata(cpg-recommendation-service)
* name = "CPGRecommendationServiceCapabilities"
* insert RecommendationInteractions(server)

Instance: cpg-recommendation-client-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Recommendation Client Capabilities"
Description: "Expected capabilities of a CPG Recommendation Client, which presents proposals, records whether they are accepted or rejected, and records the resulting requests and events."
* id = "cpg-recommendation-client"
* insert ActorCapabilityStatementMetadata(cpg-recommendation-client)
* name = "CPGRecommendationClientCapabilities"
* insert RecommendationInteractions(client)

// Interactive

RuleSet: InteractiveInteractions(mode)
* rest
  * mode = #{mode}
  * resource[+]
    * type = #PlanDefinition
    * insert ReadSearch
    * operation[+]
      * insert Expectation(SHALL)
      * name = "apply"
      * definition = $cpg-plandefinition-apply-operation
    * operation[+]
      * insert Expectation(SHALL)
      * name = "questionnaire"
      * definition = $cpg-plandefinition-questionnaire-operation
  * resource[+]
    * type = #StructureDefinition
    * insert ReadSearch
    * operation[+]
      * insert Expectation(SHOULD)
      * name = "questionnaire"
      * definition = $cpg-structuredefinition-questionnaire-operation
      * documentation = "Supports adaptive questionnaires, returning only the questions relevant to the current state of the apply cycle."
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Questionnaire
    * operation[+]
      * insert Expectation(SHALL)
      * name = "populate"
      * definition = $sdc-questionnaire-populate-operation
      * documentation = "Populates the questionnaire using expression-based population."
  * resource[+]
    * insert Expectation(SHALL)
    * type = #QuestionnaireResponse
    * operation[+]
      * insert Expectation(SHALL)
      * name = "extract"
      * definition = $sdc-questionnaireresponse-extract-operation
      * documentation = "Extracts resources from the completed questionnaire response using definition-based extraction."

Instance: cpg-interactive-service-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Interactive Service Capabilities"
Description: "Expected capabilities of a CPG Interactive Service, which generates questionnaires for missing case features and re-evaluates recommendations as data is captured, as described in Interactive Clinical Decision Support."
* id = "cpg-interactive-service"
* insert ActorCapabilityStatementMetadata(cpg-interactive-service)
* name = "CPGInteractiveServiceCapabilities"
* insert InteractiveInteractions(server)

Instance: cpg-interactive-client-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Interactive Client Capabilities"
Description: "Expected capabilities of a CPG Interactive Client, which renders and completes questionnaires and presents the resulting case plan summary."
* id = "cpg-interactive-client"
* insert ActorCapabilityStatementMetadata(cpg-interactive-client)
* name = "CPGInteractiveClientCapabilities"
* insert InteractiveInteractions(client)

// Importing

Instance: cpg-importing-client-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Importing Client Capabilities"
Description: "Expected capabilities of a CPG Importing Client, which retrieves a package of a guideline's content from a CPG Knowledge Repository and implements the subset of features it supports natively."
* id = "cpg-importing-client"
* insert ActorCapabilityStatementMetadata(cpg-importing-client)
* name = "CPGImportingClientCapabilities"
* rest
  * mode = #client
  * resource[+]
    * type = #Library
    * insert ReadSearch
    * documentation = "SHOULD support retrieving the guideline's content using the [CRMI $package](http://hl7.org/fhir/uv/crmi/OperationDefinition/crmi-package) operation."
  * resource[+]
    * type = #PlanDefinition
    * insert ReadSearch
  * resource[+]
    * type = #ActivityDefinition
    * insert ReadSearch
  * resource[+]
    * type = #ValueSet
    * insert ReadSearch
  * resource[+]
    * type = #StructureDefinition
    * insert ReadSearch

// Pathway

RuleSet: PathwayInteractions(mode)
* rest
  * mode = #{mode}
  * resource[+]
    * type = #PlanDefinition
    * insert ReadSearch
    * operation[+]
      * insert Expectation(SHALL)
      * name = "apply"
      * definition = $cpg-plandefinition-apply-operation
  * resource[+]
    * type = #EpisodeOfCare
    * supportedProfile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-case"
    * insert ReadSearchWrite
  * resource[+]
    * type = #CarePlan
    * supportedProfile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-careplan"
    * insert ReadSearchWrite
  * resource[+]
    * type = #Task
    * insert ReadSearchWrite

Instance: cpg-pathway-service-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Pathway Service Capabilities"
Description: "Expected capabilities of a CPG Pathway Service, which manages pathway enrollment, strategies, and the patient's care plan over time."
* id = "cpg-pathway-service"
* insert ActorCapabilityStatementMetadata(cpg-pathway-service)
* name = "CPGPathwayServiceCapabilities"
* insert PathwayInteractions(server)

Instance: cpg-pathway-client-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Pathway Client Capabilities"
Description: "Expected capabilities of a CPG Pathway Client, which maintains the care plan, records activities as they progress, and reports events back to the service."
* id = "cpg-pathway-client"
* insert ActorCapabilityStatementMetadata(cpg-pathway-client)
* name = "CPGPathwayClientCapabilities"
* insert PathwayInteractions(client)

// Metric

RuleSet: MetricInteractions(mode)
* rest
  * mode = #{mode}
  * resource[+]
    * type = #Measure
    * supportedProfile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computablemetric"
    * insert ReadSearch
    * operation[+]
      * insert Expectation(SHALL)
      * name = "evaluate-measure"
      * definition = $measure-evaluate-measure
      * documentation = "Returns a MeasureReport conforming to the CPGMetricReport profile."
  * resource[+]
    * type = #MeasureReport
    * supportedProfile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-metricreport"
    * insert ReadSearch

Instance: cpg-metric-service-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Metric Service Capabilities"
Description: "Expected capabilities of a CPG Metric Service, which evaluates computable metrics for a patient or population."
* id = "cpg-metric-service"
* insert ActorCapabilityStatementMetadata(cpg-metric-service)
* name = "CPGMetricServiceCapabilities"
* insert MetricInteractions(server)

Instance: cpg-metric-client-capabilities
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Metric Client Capabilities"
Description: "Expected capabilities of a CPG Metric Client, which requests and displays metric results, or submits them for reporting."
* id = "cpg-metric-client"
* insert ActorCapabilityStatementMetadata(cpg-metric-client)
* name = "CPGMetricClientCapabilities"
* insert MetricInteractions(client)
