An implementation connects a versioned guideline package to patient data and the people who deliver care. The package supplies reusable definitions, logic, and terminology. The local system supplies data mappings, invocation points, user interaction, and responsibility for acting on the results.

In the [CHF example](examples-chf.html), bodyweight observations inform a derived weight-change feature. The guideline connects those patient features with recommended activities. Evaluating guidance is one step in a longer interaction. The care team reviews the result, decides what to do, and records care. This chapter follows that interaction from choosing an implementation approach through release and follow-up.

### Choose the capabilities people need {#capabilities}

Start with the decision and the person making it. Some uses need contextual guideline text, perhaps alongside a patient summary. Others need actionable suggestions, an interactive form, or coordination across a longer care pathway. Metrics, summaries, and reports can support follow-up. Select the capabilities that fit the clinical task and describe the expected behavior for each.

The guide calls this range the *levels of enablement*. It includes searchable narrative, narrative delivered in context, guidance with patient information, actionable interventions and summary views, imported EHR content, deeper service integration, and derived capabilities. These choices describe what users receive. [Representation levels and functional tiers](approach-artifacts.html#representation-levels) describe the content used to deliver it. Feature-level conformance testing remains under development, as explained in [Conformance](documentation-conformance.html#conformance-testing).

For each capability, identify the patient and encounter context, required facts, responsible actor, point of use, proposed action, and follow-up. Record how unavailable or outdated information affects the result. The [L4 checklist](clinical-guidelines-development-L4-checklist.html) helps collect the implementation evidence.

### Choose how to execute the content {#execution-methods}

A system can use a computable representation in three ways. The chosen route determines what must be compared with the source guideline and its test cases.

| Execution method | Implementation work | Evidence to collect |
| --- | --- | --- |
| Manual implementation | Use the artifacts as a specification for local rules and interfaces. | Trace local behavior to the source, including exceptions, timing, missing data, and expected results. |
| Translation | Transform supported content into another executable representation. | Compare source and target behavior, including null handling, temporal logic, terminology, units, and unsupported constructs. |
| Native execution | Evaluate the supplied logic and definitions in a compatible engine. | Check model and engine versions, expression features, terminology services, artifact resolution, and local data behavior. |
{:.grid}

Keep the relationship between the source release and local implementation explicit so that changes can be assessed. A native engine may serve several delivery interfaces. The [Using CQL With FHIR guide](https://hl7.org/fhir/uv/cql/) provides related execution guidance, and [Libraries](libraries.html) identifies this guide's logic representations.

### Connect evaluation to the clinical system {#integration-mechanisms}

Decide where data are retrieved, content is evaluated, results are presented, and accepted actions are stored. That division of responsibility determines the integration contract.

| Mechanism | Where work happens | Contract to establish |
| --- | --- | --- |
| Direct ingestion or translation | The receiving application imports content or implements it locally. | Supported artifact subset, dependencies, source-to-local mappings, and equivalent behavior. |
| Service | A service evaluates guidance for a clinical client. | Invocation context, authorized data access, response format, timing, and failure handling. |
| Data enrichment | Derived results are transferred to another system. | Clinical meaning, provenance, record identity, updates, corrections, and responsibility for stored data. |
| Application | A dedicated application presents guidance and may evaluate locally or call a service. | Launch context, access scopes, user interaction, and any write-back agreement. |
| Hybrid | Several components share these responsibilities. | Consistent patient and content context, authoritative records, and ownership of each interaction. |
{:.grid}

<div style="clear: both;">
  <img src="cpg-runtime-integration.svg" alt="Four panels compare content ingestion, CDS Hooks services, SMART applications, and data enrichment. They distinguish artifact imports, patient data exchange, evaluation, and receiving workflow responsibilities." class="img-responsive" width="1000"/>
</div>

*The original integration patterns place content, evaluation, data exchange, and user interaction in different components. An implementation can combine patterns; the receiving workflow retains responsibility for authorization and persistence.*

[CDS Hooks](https://cds-hooks.hl7.org/) defines service discovery, workflow-triggered calls, and responses with cards, suggestions, and application links. A service can evaluate CQL and CPG definitions behind that interface. When it does, the adapter translates evaluated results into the CDS Hooks response, and the client handles supported actions and interactions.

[SMART App Launch](https://hl7.org/fhir/smart-app-launch/) supplies application launch and authorization conventions. Establish the available patient context, data scopes, and write-back behavior for the actual deployment. A service and an application may work together, as illustrated by the [coordinated standards implementation](https://pmc.ncbi.nlm.nih.gov/articles/PMC9703934/). Published [SMART implementation experience](https://pmc.ncbi.nlm.nih.gov/articles/PMC7153075/) also describes the local interfaces sometimes needed to deliver the intended functionality.

### Follow a patient-specific interaction {#patient-flow}

Begin with a locally supported trigger and the patient's current context. Resolve the intended content release and its dependencies, retrieve authorized data, and evaluate the applicable definitions. Present the resulting guidance with the information needed to review it. The receiving workflow then handles selection, authorization, fulfillment, and documentation.

Content conforming to this implementation guide SHALL identify processes using the [Common Processes code system](CodeSystem-cpg-common-process-cs.html).

The [Common Care Pathway](common-care-pathway.html) supplies an abstract ambulatory process model for locating an intervention. A process such as evaluating test results still needs a concrete local trigger, responsible actor, and follow-up arrangement. Include patient and caregiver work and between-visit responsibilities when they affect the intervention. [Workflow research](https://pmc.ncbi.nlm.nih.gov/articles/PMC11258405/) illustrates why these responsibilities extend beyond a single alert or visit.

#### Interpret the evaluation results {#apply-results}

The [CPG PlanDefinition $apply operation](OperationDefinition-cpg-plandefinition-apply.html) returns a Bundle for each subject. Results are transient and may contain CarePlan, RequestGroup, and individual requests. The caller decides how to present, persist, and process them. Base FHIR R4 $apply specifies a CarePlan return, so select the operation contract supported by the server.

Supply patient and other context deliberately. The CPG operation distinguishes supplied data, server data, and a data endpoint, including the effect of `useServerData`. A single `data` Bundle and `prefetchData` have their documented roles. Inspect every returned result and any evaluation or missing-data messages.

When a RequestGroup preserves action grouping, its child requests use intent `option` and the group establishes the overall intent. Preserve the choices represented by that grouping in the receiving interaction. Use the resource-specific [activity lifecycle reference](activityflow.html) for the transition from proposed activities to plans, authorized orders, and events.

#### Apply the processing rules {#processing-rules}

Actions form a hierarchy, and triggers or calls through related definitions initiate processing. Resource order alone does not specify execution order. Recommendation and strategy patterns use one triggering action, while pathways can have multiple triggers. Where the selected profile permits related actions, the pattern uses `before-start`, optionally with an offset. Check for cycles and distinguish timing and schedules from triggers and dependencies.

Use the [definition relationships](approach-artifacts.html#resource-map) permitted by each CPG profile. A recommendation targets an activity or order-set definition, a strategy targets recommendation definitions, and a pathway targets strategy or workflow definitions. The pathway profile prohibits `action.relatedAction`, `action.input`, and `action.output`.

A system may know about content before enabling it for use. The [cpg-enabled extension](StructureDefinition-cpg-enabled.html) identifies enabled behavior. Record the local activation decision and handle repeated or stale invocations in the implementation.

#### Check enrollment when the content requires it {#enrollment}

For pathways and strategies that use enrollment, processing checks for an active [CPGCase](StructureDefinition-cpg-case.html) EpisodeOfCare whose `enrolledIn` extension identifies the relevant definition. The `partOf` extension on PlanDefinition connects a definition to its containing definition so that processing can find the enrollment context. Eligibility is assessed during enrollment, and a recommendation's inclusion criteria normally belong to its applicability logic.

Enrollment may be automatic, proposed for user review, or recorded manually. Specify who can establish it and how it is persisted. The [clinical model](approach-model.html#enrollment) explains the relationship among eligibility, enrollment, and patient information.

### Connect proposals to a care plan {#care-planning}

Care planning relates health concerns, goals, interventions, and outcomes for an individual. Document the concerns being addressed, the patient's priorities, intended outcomes and milestones, proposed or authorized activities, and observations used to assess progress. [CPGCarePlan](StructureDefinition-cpg-careplan.html), [CPGGoal](StructureDefinition-cpg-goal.html), and the applicable request and event profiles provide the resource contracts.

Review the supporting information when selecting a recommendation. An order set can group potential orders, with the receiving workflow preserving which items are optional, selected, and authorized. A proposal to perform an activity and a proposal to avoid it need clear interpretations. The [transition reference](activityflow-transitions.html) covers planning, rejection, ordering, fulfillment, correction, and other lifecycle behaviors.

Keep request, Task, and event states distinct. A Task can track work associated with a request, and a performed activity can create an event linked to that request. Some flows omit intermediate phases under the appropriate authority, and some events are recorded without a preceding request. Request and event lifecycles can also proceed independently, such as a prescription with remaining refills after a dispense.

### Gather information and reevaluate {#interactive-cds}

When information is missing or needs confirmation, an interactive implementation can present a questionnaire, collect responses, extract supported resources, and evaluate again. Define when the patient context and prior proposals are refreshed and which component stores new data. Link an inferred result to its inputs, content version, and calculation time so that later corrections can be interpreted.

The [interactive CDS reference](interactive-cds.html) describes the questionnaire-generation, population, extraction, and reevaluation contracts. It provides the detailed processing rules for this interaction.

### Verify the complete interaction and maintain it {#operations-and-release}

Test the expected results and the behavior when prefetch is missing, patient data are incomplete, a service times out, or the context changes during an interaction. Define how repeated deliveries are recognized and how stored results are updated or superseded. Clinical review, logic tests, structural conformance, integration tests, usability, and outcome evaluation contribute different evidence to the release decision.

Confirm that the intended person sees relevant guidance at a useful time, can act on it, and can handle exceptions. Assign owners for content, terminology, data interfaces, service monitoring, and rollback. Published [deployment experience](https://pmc.ncbi.nlm.nih.gov/articles/PMC13421373/) illustrates the local mapping and maintenance work involved. Use [Conformance](documentation-conformance.html), [Methodology validation](methodology-validate.html), and [Measurement and Evidence](approach-evaluation.html#evaluate-implementation) to organize the resulting review record.

{% include chapter-navigation.html section="Approach" unit="chapter" overview="approach.html" previous="approach-artifacts.html" previous_title="Guideline Artifacts" next="approach-development.html" next_title="Development and Maintenance" %}
