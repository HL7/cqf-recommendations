This page describes the systems, or _actors_, involved in implementing a computable guideline, and how they work together at each [level of enablement](documentation-approach-03-conformance-levels.html). Conformance statements that apply to a particular actor identify that actor in the [conformance statements](documentation-conformance.html#conformance-statements) table.

### Actors

This implementation guide defines three actors:

| Actor | Description |
|---|---|
| [CPG Knowledge Repository](ActorDefinition-cpg-knowledge-repository.html) | Stores and distributes the knowledge artifacts that make up a computable guideline. A CPG Knowledge Repository is a [CRMI Artifact Repository](http://hl7.org/fhir/uv/crmi/artifact-repository-service.html). |
| [CPG Service](ActorDefinition-cpg-service.html) | Evaluates the knowledge artifacts of a computable guideline against patient data to produce patient-specific guidance, such as recommendations, proposals, case summaries, and care plans. |
| [CPG Client](ActorDefinition-cpg-client.html) | Requests guidance from a CPG Service, presents that guidance to users, and records the resulting decisions and activities. A CPG Client is typically an EHR or a clinical application. |
{: .grid}

A CPG Service and a CPG Client always work as a pair. Both obtain knowledge artifacts from a CPG Knowledge Repository, either directly or by loading a package of the guideline's content. A single system may play more than one role. For example, an EHR that imports guideline content and executes it natively acts as both a CPG Service and a CPG Client.

The interactions between a CPG Service and a CPG Client depend on the level of enablement the guideline content supports. A guideline that provides only contextualized narrative needs very different interactions than one that supports interactive data capture or longitudinal pathway management. For this reason, the CPG Service and CPG Client actors are refined by level of enablement, as described below.

### Actors by Level of Enablement

<div class="stu-note" markdown="1">

This project is actively seeking feedback on the actor pairs below, including their names, scope, and the interactions each pair is expected to support.

</div>

Each level of enablement is supported by a CPG Service and CPG Client pair. Each actor in a pair is defined as an ActorDefinition derived from the CPG Service or CPG Client actor, with a CapabilityStatement describing its expected interactions. Pairs at higher levels typically build on the interactions of the levels below them.

| Level of enablement | CPG Service | CPG Client | Key interactions |
|---|---|---|---|
| Contextualized Narrative (searchable) | None. The narrative content is provided by the CPG Knowledge Repository. | Searches the repository and displays guideline narrative. | Artifact search and retrieval ([CRMI](http://hl7.org/fhir/uv/crmi/artifact-repository-service.html)) |
| Contextualized Narrative (delivered in context) | **[CPG Narrative Service](ActorDefinition-cpg-narrative-service.html)** ([capabilities](CapabilityStatement-cpg-narrative-service.html)): returns the guideline narrative relevant to a clinical context. | **[CPG Narrative Client](ActorDefinition-cpg-narrative-client.html)** ([capabilities](CapabilityStatement-cpg-narrative-client.html)): requests narrative at points in the workflow and displays it. | CDS Hooks cards that link to narrative, or [PlanDefinition/$apply](OperationDefinition-cpg-plandefinition-apply.html) returning documentation-only actions |
| Contextualized Narrative with Patient-level Information | **[CPG Summary Service](ActorDefinition-cpg-summary-service.html)** ([capabilities](CapabilityStatement-cpg-summary-service.html)): produces a summary of the patient's case features relevant to the guideline. | **[CPG Summary Client](ActorDefinition-cpg-summary-client.html)** ([capabilities](CapabilityStatement-cpg-summary-client.html)): requests and displays the case summary alongside the narrative. | [Patient/$summary](OperationDefinition-cpg-common-patient-summary.html), returning a [CPGCaseSummary](StructureDefinition-cpg-casesummary.html); [GraphDefinition/$apply](OperationDefinition-cpg-graphdefinition-apply.html), realizing a case summary definition |
| Actionable Intervention | **[CPG Recommendation Service](ActorDefinition-cpg-recommendation-service.html)** ([capabilities](CapabilityStatement-cpg-recommendation-service.html)): evaluates recommendation definitions and returns patient-specific proposals. | **[CPG Recommendation Client](ActorDefinition-cpg-recommendation-client.html)** ([capabilities](CapabilityStatement-cpg-recommendation-client.html)): presents proposals, records whether they are accepted or rejected, and records the resulting requests and events. | [PlanDefinition/$apply](OperationDefinition-cpg-plandefinition-apply.html) returning a RequestGroup whose proposals conform to the [activity profiles](profiles.html#activity-profiles); CDS Hooks |
| Actionable Summary View | **[CPG Interactive Service](ActorDefinition-cpg-interactive-service.html)** ([capabilities](CapabilityStatement-cpg-interactive-service.html)): generates questionnaires for missing case features, and re-evaluates recommendations as data is captured. | **[CPG Interactive Client](ActorDefinition-cpg-interactive-client.html)** ([capabilities](CapabilityStatement-cpg-interactive-client.html)): renders and completes questionnaires, and presents the resulting case plan summary. | [$questionnaire](OperationDefinition-cpg-planDefinition-questionnaire.html), SDC $populate and $extract, and repeated $apply, as described in [Interactive Clinical Decision Support](interactive-cds.html); [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html) |
| EHR Import of CPG | None. The EHR imports the content and acts as both the CPG Service and the CPG Client. | **[CPG Importing Client](ActorDefinition-cpg-importing-client.html)** ([capabilities](CapabilityStatement-cpg-importing-client.html)): retrieves a package of the guideline's content and implements the subset of features it supports natively. | Artifact packaging and retrieval ([CRMI](http://hl7.org/fhir/uv/crmi/packaging.html)) |
| Deep EHR Integration with CDS Service | **[CPG Pathway Service](ActorDefinition-cpg-pathway-service.html)** ([capabilities](CapabilityStatement-cpg-pathway-service.html)): manages pathway enrollment, strategies, and the patient's care plan over time. | **[CPG Pathway Client](ActorDefinition-cpg-pathway-client.html)** ([capabilities](CapabilityStatement-cpg-pathway-client.html)): maintains the care plan, records activities as they progress, and reports events back to the service. | Enrollment ([CPGCase](StructureDefinition-cpg-case.html)), [CPGCarePlan](StructureDefinition-cpg-careplan.html), and the state transitions described in [Activity Flow](activityflow.html) |
{: .grid}

Derived capabilities, such as metrics, case reporting, and case plan progress notes, add further pairs that can be combined with any of the levels above:

| Derived capability | CPG Service | CPG Client | Key interactions |
|---|---|---|---|
| Metrics | **[CPG Metric Service](ActorDefinition-cpg-metric-service.html)** ([capabilities](CapabilityStatement-cpg-metric-service.html)): evaluates computable metrics for a patient or population. | **[CPG Metric Client](ActorDefinition-cpg-metric-client.html)** ([capabilities](CapabilityStatement-cpg-metric-client.html)): requests and displays metric results, or submits them for reporting. | Measure/$evaluate-measure using [CPGComputableMetric](StructureDefinition-cpg-computablemetric.html), returning a [CPGMetricReport](StructureDefinition-cpg-metricreport.html) |
| Case Reporting | **[CPG Case Reporting Service](ActorDefinition-cpg-casereporting-service.html)**: produces a case report from the patient's case features and pathway. | **[CPG Case Reporting Client](ActorDefinition-cpg-casereporting-client.html)**: triggers and submits case reports. | Aligned with the [Electronic Case Reporting](http://hl7.org/fhir/us/ecr) implementation guide (see statement path-1 in [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html)) |
{: .grid}

### Declaring Conformance

A system declares which actors it implements, and at which levels of enablement, through its CapabilityStatement. A CPG Knowledge Repository declares conformance to the appropriate CRMI Artifact Repository capability statement. A CPG Service or CPG Client declares conformance to the CapabilityStatement of each actor it implements, listed in the tables above. The CPG Case Reporting actors do not define CapabilityStatements, because case reporting is expected to align with the [Electronic Case Reporting](http://hl7.org/fhir/us/ecr) implementation guide.
