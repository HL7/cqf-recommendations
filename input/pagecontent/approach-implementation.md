Clinical guidance can be shared across organizations whose data, systems, and care processes differ. Separating reusable knowledge from its delivery lets each organization use the reviewed clinical interpretation while fitting it to the people and systems that will act on it. The package supplies definitions, logic, and terminology; the local implementation supplies data mappings, invocation points, user interaction, and responsibility for acting on the results.

Execution and delivery are separate choices. An organization may implement the content in its existing rules, translate it, or evaluate it in a compatible engine. The resulting guidance still needs a suitable place in care, whether through a service, an application, or the clinical system's own interface. Keeping these choices separate can let a team change the delivery channel while retaining the clinical decision logic. The new channel still needs to supply the expected inputs and support the intended actions.

In the [CHF example](examples-chf.html), bodyweight observations inform a derived weight-change feature. The guideline connects those patient features with recommended activities. Evaluating guidance is one step in a longer interaction. The care team reviews the result, decides what to do, and records care. This chapter follows that interaction from choosing an implementation approach through release and follow-up.

### Choose the capabilities people need {#capabilities}

Start with the decision and the person making it. Some uses need contextual guideline text, perhaps alongside a patient summary. Others need actionable suggestions, an interactive form, or coordination across a longer care pathway. Metrics, summaries, and reports can support follow-up. Select the capabilities that fit the clinical task and describe the expected behavior for each.

#### Levels of enablement {#levels-of-enablement}

The guide defines seven levels of enablement.

1. Contextualized narrative that users can search.
2. Contextualized narrative delivered in the workflow.
3. Contextualized narrative with patient information in a basic summary view.
4. Actionable intervention, for example through CDS Hooks, with optional narrative or a summary view.
5. Actionable summary view delivered through cards, adaptive forms, or an embedded application.
6. EHR import of the CPG, with features determined by the receiving EHR.
7. Deep EHR integration with a CDS service, including longitudinal management of the pathway and care plan.

An implementation can use several levels or add capabilities over successive releases. Derived capabilities such as metrics, case reporting, and progress notes add work at any level and may reuse other capabilities. [Representation levels and functional tiers](approach-artifacts.html#representation-levels) describe the content used to deliver the features. [Actors](actors.html) identifies the repository, service, and client roles, and maps them to CapabilityStatements by level. Feature-level conformance testing remains under development, as explained in [Conformance](documentation-conformance.html#conformance-testing).

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

The routes involve different investments. Manual implementation can use existing local tooling but leaves the site responsible for translating and maintaining the specification in that environment. Translation and native execution require compatible tooling and integration work up front; that investment may be reused across guidelines and releases. The choice depends on the receiving system's capabilities and the content it must support, as well as the expected scale of reuse.

Translation can, for example, convert CQL to SQL or a PlanDefinition to production rules. For manual implementation or translation, use the content package's test cases to compare application-native logic and configuration with the intended behavior. Native evaluation can use the same tests to check the behavior of the reasoning engine against local data and mappings.

{% include cpg-diagram.html src="cpg-runtime-execution.svg" alt="Manual implementation, translation, and native execution are three routes from shared computable content to a locally tested implementation." caption="For each route, verify clinical meaning, data mappings, dependencies, and expected results. Choose the delivery interface separately, such as a service, application, or local workflow." %}

### Connect evaluation to the clinical system {#integration-mechanisms}

Local applications differ in where they can evaluate logic, display guidance, and accept actions. Several integration patterns may therefore be needed for one guideline: for example, a service can evaluate shared logic while a native order interface handles an accepted proposal. Decide where data are retrieved, content is evaluated, results are presented, and accepted actions are stored. That division of responsibility determines the integration contract.

| Mechanism | Where work happens | Contract to establish |
| --- | --- | --- |
| Direct ingestion or translation | The receiving application imports content or implements it locally. | Supported artifact subset, dependencies, source-to-local mappings, and equivalent behavior. |
| Service | A service evaluates guidance for a clinical client. | Invocation context, authorized data access, response format, timing, and failure handling. |
| Data enrichment | Derived results are transferred to another system. | Clinical meaning, provenance, record identity, updates, corrections, and responsibility for stored data. |
| Application | A dedicated application presents guidance and may evaluate locally or call a service. | Launch context, access scopes, user interaction, and any write-back agreement. |
| Hybrid | Several components share these responsibilities. | Consistent patient and content context, authoritative records, and ownership of each interaction. |
{:.grid}

{% include cpg-diagram.html src="cpg-runtime-integration.svg" alt="Four panels compare content ingestion, CDS Hooks services, SMART applications, and data enrichment. They distinguish artifact imports, patient data exchange, evaluation, and receiving workflow responsibilities." caption="The original integration patterns place content, evaluation, data exchange, and user interaction in different components. An implementation can combine patterns; the receiving workflow retains responsibility for authorization and persistence." %}

[CDS Hooks](https://cds-hooks.hl7.org/) defines service discovery, workflow-triggered calls, and responses with cards, suggestions, and application links. A service can evaluate CQL and CPG definitions behind that interface. When it does, the adapter translates evaluated results into the CDS Hooks response, and the client handles supported actions and interactions.

[SMART App Launch](https://hl7.org/fhir/smart-app-launch/) supplies application launch and authorization conventions. Establish the available patient context, data scopes, and write-back behavior for the actual deployment. A service and an application may work together, as illustrated by the [coordinated standards implementation](https://pmc.ncbi.nlm.nih.gov/articles/PMC9703934/). Published [SMART implementation experience](https://pmc.ncbi.nlm.nih.gov/articles/PMC7153075/) also describes the local interfaces sometimes needed to deliver the intended functionality.

#### Data enrichment {#data-enrichment}

In a near-real-time enrichment pattern, the clinical system sends new or corrected information to a reasoning engine. The engine evaluates the affected content as facts arrive or when a guideline-defined interval elapses. It returns inferred Case Features, patient-specific proposals, or metrics for persistence and use by the clinical system. The system can use those results in later reasoning, display them in native views, or share them with another service or application. Common transports include FHIR writes and clinical messaging.

If several components reason over or store the same data, agree which system owns each input and each inference. Preserve links among source facts, proposals, and metrics, together with their effective times and content version. In a hybrid integration, these agreements allow an on-demand CDS service, an embedded application, and native order sets to use a consistent view of the case and its care plan.

### Follow a patient-specific interaction {#patient-flow}

Begin with a locally supported trigger and the patient's current context. Resolve the intended content release and its dependencies, retrieve authorized data, and evaluate the applicable definitions. Present the resulting guidance with the information needed to review it. The receiving workflow then handles selection, authorization, fulfillment, and documentation.

#### Common Pathway and localization {#common-pathway}

§path-2^^recommendation:Content conforming to this implementation guide **SHALL** identify processes using the [Common Processes code system](CodeSystem-cpg-common-process-cs.html).§

The [Common Care Pathway](common-care-pathway.html) supplies an abstract ambulatory process model for locating an intervention. A process such as evaluating test results still needs a concrete local trigger, responsible actor, and follow-up arrangement. Include patient and caregiver work and between-visit responsibilities when they affect the intervention. [Workflow research](https://pmc.ncbi.nlm.nih.gov/articles/PMC11258405/) illustrates why these responsibilities extend beyond a single alert or visit.

Map the common process to the local settings, roles, tasks, and information systems involved. Keep the clinical content reusable by expressing local trigger criteria and delivery in the implementation. Requests and events can carry the information needed to reason across settings, and Tasks can track fulfillment across systems. See the [FHIR R4 Workflow module](https://hl7.org/fhir/R4/workflow-module.html).

#### Workflow enablements and interventions {#workflow-enablement}

Apply the CDS Five Rights to each intervention. Deliver the right information to the right person, in the right intervention format, through the right channel, at the right time in the workflow. For example, the same follow-up recommendation may appear in a results-review view for a clinician or in a care-plan summary for the person coordinating outreach. Match the format to what the recipient needs to do. Options include reminders, order sets, documentation templates, adaptive forms, summaries, and application views. [Campbell, The Five Rights of Clinical Decision Support](https://pubmed.ncbi.nlm.nih.gov/24245088/) · [FHIR R4 Clinical Reasoning module](https://hl7.org/fhir/R4/clinicalreasoning-module.html)

#### Interpret the evaluation results {#apply-results}

The [CPG PlanDefinition $apply operation](OperationDefinition-cpg-plandefinition-apply.html) returns a Bundle for each subject. Results are transient and may contain CarePlan, RequestGroup, and individual requests. The caller decides how to present, persist, and process them. [Base FHIR R4 $apply](https://hl7.org/fhir/R4/plandefinition-operation-apply.html) specifies a CarePlan return, so select the operation contract supported by the server.

Supply the `subject` and relevant context, such as `encounter`. At the type level, identify the definition with its canonical `url` and optional `version`, or pass the `planDefinition` resource. Provide data in one `data` Bundle or through `prefetchData` items. Evaluation looks first at supplied data, then at server data if `useServerData` is true (the default), then at `dataEndpoint` when supplied. The `parameters` input supplies named Library parameters, and `artifactEndpointConfiguration` can configure canonical artifact resolution. In STU3, the PlanDefinition operation drops `mergeNestedCarePlans` and `terminologyEndpoint`. [ActivityDefinition $apply](OperationDefinition-cpg-activitydefinition-apply.html) also drops `terminologyEndpoint`. See the [STU3 change log](changes.html#non-compatible-changes).

The operation describes evaluation messages through `cqf-messages` on the topmost result, referencing a contained OperationOutcome. Check that resource for warnings and informational messages when interpreting the proposals. A RequestGroup can provide a single topmost resource when the response contains multiple requests.

When a RequestGroup preserves action grouping, its child requests use intent `option` and the group establishes the overall intent. Preserve the choices represented by that grouping in the receiving interaction. When an option advances to a plan or order, represent it as an independent request with the appropriate intent. Use the resource-specific [activity lifecycle reference](activityflow.html) for the transition from proposed activities to plans, authorized orders, and events.

For a parent action, `cqf-applicabilityBehavior` controls which child actions are evaluated and included. With `all` (the default), evaluate each child independently and include each applicable child. With `any`, evaluate in order and stop at the first applicable child. The corresponding RequestGroup action carries the same extension value when the result uses a RequestGroup. The parent's `selectionBehavior` describes how a user may select among the included actions. See [Process Patterns](documentation-methodology.html) for parallel and exclusive splits.

#### Apply the processing rules {#processing-rules}

Actions form a hierarchy. Processing starts with a trigger or a direct invocation, including calls from another definition or through parent or related actions. Declaration order alone does not determine execution order. With applicability behavior `any`, declaration order determines which child action is checked first. Recommendation and strategy patterns allow one triggering action, while pathways can have multiple triggers. Where the profile permits `relatedAction`, its relationship describes this action relative to the target. For example, the [CHF body weight change recommendation](PlanDefinition-chf-bodyweight-change-pd.html) uses `after-end` to report after recording the weight change. Check for cycles and distinguish timing and schedules from triggers and dependencies.

Use the [definition relationships](approach-artifacts.html#resource-map) permitted by each CPG profile. A recommendation targets an activity or order-set definition, a strategy targets recommendation definitions, and a pathway targets strategy or workflow definitions. The pathway profile prohibits `action.relatedAction`, `action.input`, and `action.output`.

A system may know about content before enabling it for use. The [cpg-enabled extension](StructureDefinition-cpg-enabled.html) identifies enabled behavior. Record the local activation decision and handle repeated or stale invocations in the implementation.

#### Check enrollment when the content requires it {#enrollment}

For pathways and strategies that use enrollment, processing checks for an active [CPGCase](StructureDefinition-cpg-case.html) EpisodeOfCare whose `enrolledIn` extension identifies the relevant definition. The `partOf` extension on PlanDefinition connects a definition to its containing definition so that processing can find the enrollment context. Eligibility is assessed during enrollment, and a recommendation's inclusion criteria normally belong to its applicability logic.

Enrollment may be automatic, proposed for user review, or recorded manually. Specify who can establish it and how it is persisted. The [clinical model](approach-model.html#enrollment) explains the relationship among eligibility, enrollment, and patient information.

#### Orchestrate a pathway {#orchestration}

One orchestration pattern uses a longitudinal pathway to describe the expected schedule and define eligibility and enrollment. It references visit strategies that start at an event such as `encounter-start`. Each strategy invokes the recommendation definitions for the specific visit context, and each recommendation determines whether to propose an individual activity.

For example, a follow-up pathway may schedule a visit after discharge. When the patient arrives, the `encounter-start` integration invokes the enabled follow-up strategy. The service checks the patient's active case for the strategy or its containing pathway, then evaluates the visit recommendations, such as reviewing a weight trend or considering a follow-up test. The resulting proposals are available for review in the encounter. The pathway schedule describes when visits are expected, and the encounter trigger starts evaluation when a visit occurs.

### Connect proposals to a care plan {#care-planning}

Care planning relates health concerns, goals, interventions, and outcomes for an individual. Document the concerns being addressed, the patient's priorities, intended outcomes and milestones, proposed or authorized activities, and observations used to assess progress. [CPGCarePlan](StructureDefinition-cpg-careplan.html), [CPGGoal](StructureDefinition-cpg-goal.html), and the applicable request and event profiles provide the resource contracts.

| Care-planning building block | Information to retain |
| --- | --- |
| Health concern | The problems, risks, and concerns being addressed, along with their priority based on clinical evidence and the perspectives of the patient and care team. |
| Goal | The agreed outcome and any interim targets. Guideline targets inform the discussion alongside patient priorities, such as function or comfort, and the individual's circumstances. |
| Intervention | Evidence-based activities tailored to preferences and constraints, including recommendations for the patient, family, or other professionals and any agreed or authorized orders. |
| Outcome | Evaluation findings used to assess the agreed goals and milestones. |
{:.grid}

Record who will review each goal, authorize interventions, and follow up on new results. CarePlan, Goal, and CareTeam provide the underlying structures for evidence-based care planning and coordination. [FHIR R4 CarePlan](https://hl7.org/fhir/R4/careplan.html) · [FHIR R4 Goal](https://hl7.org/fhir/R4/goal.html) · [FHIR R4 CareTeam](https://hl7.org/fhir/R4/careteam.html)

Review the supporting information when selecting a recommendation. An order set can group potential orders, with the receiving workflow preserving which items are optional, selected, and authorized. A proposal to perform an activity and a proposal to avoid it need clear interpretations. The [transition reference](activityflow-transitions.html) covers planning, rejection, ordering, fulfillment, correction, and other lifecycle behaviors.

Keep request, Task, and event states distinct. Request status describes the state of the authorization or intent. One or more Tasks can track fulfillment, and a performed activity can create an event linked to the request. Some flows omit intermediate phases under the appropriate authority, and some events are recorded without a preceding request. An event recorded as `not-done` documents that the activity did not occur, with a reason where available. Request and event lifecycles can also proceed independently, such as a prescription with remaining refills after a dispense.

When a recommendation proposes an activity, a common applicability pattern checks for a matching event, explicit documentation that the event was not done, or an existing proposal, plan, or order. When a recommendation proposes avoiding or stopping an activity, check for relevant requests or ongoing activity and for any prior stop or avoid proposal, including one that was rejected. Apply the guideline's timing and exceptions, and account for what the available data can establish.

### Gather information and reevaluate {#interactive-cds}

When information is missing or needs confirmation, an interactive implementation can present a questionnaire, collect responses, extract supported resources, and evaluate again. Define when the patient context and prior proposals are refreshed and which component stores new data. Link an inferred result to its inputs, content version, and calculation time so that later corrections can be interpreted.

The [interactive CDS reference](interactive-cds.html) describes the questionnaire-generation, population, extraction, and reevaluation contracts. It provides the detailed processing rules for this interaction.

### Verify the complete interaction and maintain it {#operations-and-release}

Test the expected results and the behavior when prefetch is missing, patient data are incomplete, a service times out, or the context changes during an interaction. Define how repeated deliveries are recognized and how stored results are updated or superseded. Clinical review, logic tests, structural conformance, integration tests, usability, and outcome evaluation contribute different evidence to the release decision.

Confirm that the intended person sees relevant guidance at a useful time, can act on it, and can handle exceptions. Assign owners for content, terminology, data interfaces, service monitoring, and rollback. Published [deployment experience](https://pmc.ncbi.nlm.nih.gov/articles/PMC13421373/) illustrates the local mapping and maintenance work involved. Use [Conformance](documentation-conformance.html), [Methodology validation](methodology-validate.html), and [Measurement and Evidence](approach-evaluation.html#evaluate-implementation) to organize the resulting review record.

{% include chapter-navigation.html section="Approach" unit="chapter" overview="approach.html" previous="approach-artifacts.html" previous_title="Guideline Artifacts" next="approach-development.html" next_title="Development and Maintenance" %}
