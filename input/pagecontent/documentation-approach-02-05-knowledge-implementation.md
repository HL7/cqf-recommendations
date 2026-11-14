This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

Once computable representations and expressions of any clinical practice guideline have been developed (as a CPG-IG) they must be implemented and integrated with various clinical and operational information systems (e.g., EHRs, Workflow Apps, Quality and Practice Analytics tools, Quality and Registry Reporting tools, etc.)  Three main factors come into play. The first consideration is where and how these computable expressions and artifacts will be executed- natively withing systems of record, in an external reasoning engine, or translated and reimplemented in target system native logic languages (e.g. rules engines).  The second consideration, which is related to the first, Is how the inferences or insights (e.g. CaseFeatures, [Recommendations](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation)/Proposals, [Metrics](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-metric)) are to be integrated into existing clinical application ecosystems and/or the same or similar workflows supported by these applications.  The third consideration, which further relates to the first two, Is where and how these insights will be manifested in such a way to enable guideline-informed clinical workflows and related healthcare activities.  Partially orthogonal to, but just as important as these three considerations, is the ability to assess and ensure conformance of specific implementations of computable clinical practice guidelines using the specifications and requirements outlined in this implementation guide.

While all of these factors Have implications for the overall level of effort, the methods of implementing knowledge and mechanisms of integration are directly reflected in the overall selection of workflow enablements in a given setting. The last two sections further discuss trade-offs between effort, time to develop, and capabilities enabled (and value that can be derived) when developing a CPG. From very basic context for narrative snippets searchable in a library (or Infobutton from EHR) to full clinical workflow enablement, cognitive support, and pathway tracking (likely via SMART-on-FHIR App or deep EHR integration). CPGs also enable feedback loops with real-world evidence of actual guideline usage and outcomes, and provide a substrate for the evidence ecosystem and a feedforward loop for evidence updates. To support description of, and allow declaration of conformance to, these various capabilities enabled by CPGs, the CPG-IG defines levels of enablement that correlate to work effort, time to delivery, and capabilities enabled.

<ul>
  <li><a href="documentation-approach-09-methods-of-implementation.html">Methods of Implementing Knowledge</a> (expressions and artifacts)</li>
  <li><a href="documentation-approach-10-mechanisms-of-integration.html">Mechanisms of Integration with Clinical Information Systems</a></li>
  <li><a href="documentation-approach-03-conformance-levels.html">Levels of Workflow Enablement</a></li>
  <li><a href="documentation-conformance.html">Levels of Conformance</a></li>
</ul>

<div class="new-content" markdown="1">

Clinical guidance can be shared across organizations whose data, systems, and care processes differ. Separating reusable knowledge from its delivery lets each organization use the reviewed clinical interpretation while fitting it to the people and systems that will act on it. The package supplies definitions, logic, and terminology; the local implementation supplies data mappings, invocation points, user interaction, and responsibility for acting on the results.

Execution and delivery are separate choices. An organization may implement the content in its existing rules, translate it, or evaluate it in a compatible engine. The resulting guidance still needs a suitable place in care, whether through a service, an application, or the clinical system's own interface. Keeping these choices separate can let a team change the delivery channel while retaining the clinical decision logic. The new channel still needs to supply the expected inputs and support the intended actions.

In the [CHF example](examples-chf.html), bodyweight observations inform a derived weight-change feature. The guideline connects those patient features with recommended activities. Evaluating guidance is one step in a longer interaction: the care team reviews the result, decides what to do, and records care. This page follows that interaction from choosing an implementation approach through release and follow-up.

### Choose the Capabilities People Need {#capabilities}

Start with the decision and the person making it. Some uses need contextual guideline text, perhaps alongside a patient summary. Others need actionable suggestions, an interactive form, or coordination across a longer care pathway. Metrics, summaries, and reports can support follow-up. Select the capabilities that fit the clinical task and describe the expected behavior for each.

#### Levels of Enablement {#levels-of-enablement}

The guide defines seven levels of enablement.

1. Contextualized narrative that users can search.
2. Contextualized narrative delivered in the workflow.
3. Contextualized narrative with patient information in a basic summary view.
4. Actionable intervention, for example through CDS Hooks, with optional narrative or a summary view.
5. Actionable summary view delivered through cards, adaptive forms, or an embedded application.
6. EHR import of the CPG, with features determined by the receiving EHR.
7. Deep EHR integration with a CDS service, including longitudinal management of the pathway and care plan.

An implementation can use several levels or add capabilities over successive releases. Derived capabilities such as metrics, case reporting, and progress notes add work at any level and may reuse other capabilities. [Representation levels and functional tiers](documentation-approach-02-04-knowledge-representation.html#representation-levels) describe the content used to deliver the features. [Actors](actors.html) identifies the repository, service, and client roles, and maps them to CapabilityStatements by level. Feature-level conformance testing remains under development, as explained in [Conformance](documentation-conformance.html#conformance-testing). See [Levels of Enablement](documentation-approach-03-conformance-levels.html).

For each capability, identify the patient and encounter context, required facts, responsible actor, point of use, proposed action, and follow-up. Record how unavailable or outdated information affects the result. The [L4 checklist](clinical-guidelines-development-L4-checklist.html) helps collect the implementation evidence.

### Choose How to Execute the Content {#execution-methods}

A system can use a computable representation in three ways: manual implementation, translation, or native execution. The chosen method determines what must be compared with the source guideline and its test cases. The [Validate step](methodology-validate.html#execution-methods) describes the implementation work and the evidence to collect for each method.

Keep the relationship between the source release and local implementation explicit so that changes can be assessed. A native engine may serve several delivery interfaces. The [Using CQL With FHIR](https://hl7.org/fhir/uv/cql/) implementation guide provides related execution guidance, and [Libraries](libraries.html) identifies this guide's logic representations.

The routes involve different investments. Manual implementation can use existing local tooling but leaves the site responsible for translating and maintaining the specification in that environment. Translation and native execution require compatible tooling and integration work up front; that investment may be reused across guidelines and releases. The choice depends on the receiving system's capabilities and the content it must support, as well as the expected scale of reuse.

Translation can, for example, convert CQL to SQL or a PlanDefinition to production rules. For manual implementation or translation, use the content package's test cases to compare application-native logic and configuration with the intended behavior. Native evaluation can use the same tests to check the behavior of the reasoning engine against local data and mappings. See [Methods of Implementation](documentation-approach-09-methods-of-implementation.html).

{% include cpg-diagram.html src="cpg-runtime-execution.svg" ratio="1000 / 326" alt="Manual implementation, translation, and native execution are three routes from shared computable content to a locally tested implementation." caption="For each route, verify clinical meaning, data mappings, dependencies, and expected results. Choose the delivery interface separately, such as a service, application, or local workflow." %}

### Connect Evaluation to the Clinical System {#integration-mechanisms}

Local applications differ in where they can evaluate logic, display guidance, and accept actions. Several integration patterns may therefore be needed for one guideline: for example, a service can evaluate shared logic while a native order interface handles an accepted proposal. Decide where data are retrieved, content is evaluated, results are presented, and accepted actions are stored. That division of responsibility determines the integration contract. The [Package step](methodology-package.html#integration-contract) lists the contract to establish for each mechanism. See [Mechanisms of Integration](documentation-approach-10-mechanisms-of-integration.html).

{% include cpg-diagram.html src="cpg-runtime-integration.svg" ratio="1200 / 878" alt="Four panels compare content ingestion, CDS Hooks services, SMART applications, and data enrichment. They distinguish artifact imports, patient data exchange, evaluation, and receiving workflow responsibilities." caption="Integration patterns place content, evaluation, data exchange, and user interaction in different components. An implementation can combine patterns; the receiving workflow retains responsibility for authorization and persistence." %}

[CDS Hooks](https://cds-hooks.hl7.org/) defines service discovery, workflow-triggered calls, and responses with cards, suggestions, and application links. A service can evaluate CQL and CPG definitions behind that interface. When it does, the adapter translates evaluated results into the CDS Hooks response, and the client handles supported actions and interactions.

[SMART App Launch](https://hl7.org/fhir/smart-app-launch/) supplies application launch and authorization conventions. Establish the available patient context, data scopes, and write-back behavior for the actual deployment. A service and an application may work together, as illustrated by the [coordinated standards implementation](documentation-approach-cds-implementation-evidence.html#ref-thiess-2022). Published [SMART implementation experience](documentation-approach-cds-implementation-evidence.html#ref-kukhareva-2019) also describes the local interfaces sometimes needed to deliver the intended functionality.

#### Data Enrichment {#data-enrichment}

In a near-real-time enrichment pattern, the clinical system sends new or corrected information to a reasoning engine. The engine evaluates the affected content as facts arrive or when a guideline-defined interval elapses. It returns inferred Case Features, patient-specific proposals, or metrics for persistence and use by the clinical system. The system can use those results in later reasoning, display them in native views, or share them with another service or application. Common transports include FHIR writes and clinical messaging.

If several components reason over or store the same data, agree which system owns each input and each inference. Preserve links among source facts, proposals, and metrics, together with their effective times and content version. In a hybrid integration, these agreements allow an on-demand CDS service, an embedded application, and native order sets to use a consistent view of the case and its care plan.

### Follow a Patient-Specific Interaction {#patient-flow}

Begin with a locally supported trigger and the patient's current context. Resolve the intended content release and its dependencies, retrieve authorized data, and evaluate the applicable definitions. Present the resulting guidance with the information needed to review it. The receiving workflow then handles selection, authorization, fulfillment, and documentation.

#### Common Pathway and Localization {#common-pathway}

Content conforming to this implementation guide identifies processes using the [Common Processes code system](CodeSystem-cpg-common-process-cs.html) (see the requirement in [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html)). The [Common Care Pathway](common-care-pathway.html) supplies an abstract ambulatory process model for locating an intervention. A process such as evaluating test results still needs a concrete local trigger, responsible actor, and follow-up arrangement. A new result arriving and a clinician opening that result are different triggers; they can make different information available at the point of evaluation. Include patient and caregiver work and between-visit responsibilities when they affect the intervention, as illustrated by [Sittig et al.'s workflow models](documentation-approach-cds-implementation-evidence.html#ref-sittig-2024).

Map the common process to the local settings, roles, tasks, and information systems involved. Keep the clinical content reusable by expressing local trigger criteria and delivery in the implementation. Requests and events can carry the information needed to reason across settings, and Tasks can track fulfillment across systems. See the [FHIR R4 Workflow module](https://hl7.org/fhir/R4/workflow-module.html).

#### Workflow Enablements and Interventions {#workflow-enablement}

Apply the CDS Five Rights to each intervention. Deliver the right information to the right person, in the right intervention format, through the right channel, at the right time in the workflow. For example, the same follow-up recommendation may appear in a results-review view for a clinician or in a care-plan summary for the person coordinating outreach. Match the format to what the recipient needs to do. Options include reminders, order sets, documentation templates, adaptive forms, summaries, and application views. See [Campbell, The Five Rights of Clinical Decision Support](documentation-approach-cds-implementation-evidence.html#ref-campbell-2013), the [FHIR R4 Clinical Reasoning module](https://hl7.org/fhir/R4/clinicalreasoning-module.html), and [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html).

#### Interpret the Evaluation Results {#apply-results}

The [CPG PlanDefinition $apply operation](OperationDefinition-cpg-plandefinition-apply.html) returns a Bundle for each subject. Results are transient and may contain CarePlan, RequestGroup, and individual requests. The caller decides how to present, persist, and process them. [Base FHIR R4 $apply](https://hl7.org/fhir/R4/plandefinition-operation-apply.html) specifies a CarePlan return, so select the operation contract supported by the server.

Supply the `subject` and relevant context, such as `encounter`. At the type level, identify the definition with its canonical `url` and optional `version`, or pass the `planDefinition` resource. Provide data in one `data` Bundle or through `prefetchData` items. Evaluation looks first at supplied data, then at server data if `useServerData` is true (the default), then at `dataEndpoint` when supplied. The `parameters` input supplies named Library parameters, and `artifactEndpointConfiguration` can configure canonical artifact resolution. In STU3, the PlanDefinition operation drops `mergeNestedCarePlans` and `terminologyEndpoint`. [ActivityDefinition $apply](OperationDefinition-cpg-activitydefinition-apply.html) also drops `terminologyEndpoint`. See the [STU3 change log](changes.html#non-compatible-changes).

The operation describes evaluation messages through `cqf-messages` on the topmost result, referencing a contained OperationOutcome. Check that resource for warnings and informational messages when interpreting the proposals. A RequestGroup can provide a single topmost resource when the response contains multiple requests.

When a RequestGroup preserves action grouping, its child requests use intent `option` and the group establishes the overall intent. Preserve the choices represented by that grouping in the receiving interaction. Where the guideline regards the options differently, the [cpg-preferenceBehavior](StructureDefinition-cpg-preferenceBehavior.html) extension on each `RequestGroup.action` carries its stance (`preferred`, `recommended`, `neutral`, or `not-recommended`) so that the client can present it with the options. Preference describes how the guideline regards an included option; it does not determine whether the option is included, which is the role of applicability (see [Preference among Options](documentation-approach-12-03-cpg-plan.html#preference-among-options)). When an option advances to a plan or order, represent it as an independent request with the appropriate intent. Use the resource-specific [activity lifecycle reference](activityflow.html) for the transition from proposed activities to plans, authorized orders, and events. The `cqf-applicabilityBehavior` extension on a parent action controls which child actions are evaluated and included, and its `selectionBehavior` describes how a user may select among them; see [Methods of Implementation](documentation-approach-09-methods-of-implementation.html#plandefinition-processing-semantics).

#### Apply the Processing Rules {#processing-rules}

Actions form a hierarchy. Processing starts with a trigger or a direct invocation, including calls from another definition or through parent or related actions. Declaration order alone does not determine execution order, except that when a parent action's applicability behavior is `any`, its child actions are evaluated in order. Recommendations and strategies have one triggering action, while pathways can have several. Where the profile permits `relatedAction`, its relationship describes the timing of the action relative to the target. For example, the [CHF body weight change recommendation](PlanDefinition-chf-bodyweight-change-pd.html) uses `after-end` to report after recording the weight change. A cycle among related actions is not necessarily an infinite loop, because the applicability conditions of each action are still evaluated, but execution environments must guard against runaway loops. See the [PlanDefinition processing rules](documentation-approach-09-methods-of-implementation.html#plandefinition-processing-semantics).

Use the [definition relationships](documentation-approach-02-04-knowledge-representation.html#resource-map) permitted by each CPG profile. A recommendation targets an activity or order-set definition, a strategy targets recommendation definitions, and a pathway targets strategy or workflow definitions. The pathway profile prohibits `action.relatedAction`, `action.input`, and `action.output`.

A system may know about content before enabling it for use. The [cpg-enabled extension](StructureDefinition-cpg-enabled.html) identifies enabled behavior. Record the local activation decision and handle repeated or stale invocations in the implementation.

#### Check Enrollment When the Content Requires It {#enrollment}

For pathways and strategies that use enrollment, processing checks for an active [CPGCase](StructureDefinition-cpg-case.html) EpisodeOfCare whose `enrolledIn` extension identifies the relevant definition. The `partOf` extension on PlanDefinition connects a definition to its containing definition so that processing can find the enrollment context. Eligibility is assessed during enrollment, and a recommendation's inclusion criteria normally belong to its applicability logic.

Enrollment may be automatic, proposed for user review, or recorded manually. Specify who can establish it and how it is persisted. [Eligibility and Enrollment](documentation-approach-12-conceptual-knowledge-architecture.html#enrollment) explains the relationship among eligibility, enrollment, and patient information.

#### Orchestrate a Pathway {#orchestration}

One orchestration pattern uses a longitudinal pathway to describe the expected schedule and define eligibility and enrollment. It references visit strategies that start at an event such as `encounter-start`. Each strategy invokes the recommendation definitions for the specific visit context, and each recommendation determines whether to propose an individual activity.

For example, a follow-up pathway may schedule a visit after discharge. When the patient arrives, the `encounter-start` integration invokes the enabled follow-up strategy. The service checks the patient's active case for the strategy or its containing pathway, then evaluates the visit recommendations, such as reviewing a weight trend or considering a follow-up test. The resulting proposals are available for review in the encounter. The pathway schedule describes when visits are expected, and the encounter trigger starts evaluation when a visit occurs.

### Connect Proposals to a Care Plan {#care-planning}

Care planning relates health concerns, goals, interventions, and outcomes for an individual. Document the concerns being addressed, the patient's priorities, intended outcomes and milestones, proposed or authorized activities, and observations used to assess progress. [CPGCarePlan](StructureDefinition-cpg-careplan.html), [CPGGoal](StructureDefinition-cpg-goal.html), and the applicable request and event profiles provide the resource contracts. See [Evidence-Based Care Planning](documentation-careplanning.html).

| Care-planning building block | Information to retain |
| --- | --- |
| Health concern | The problems, risks, and concerns being addressed, along with their priority based on clinical evidence and the perspectives of the patient and care team. |
| Goal | The agreed outcome and any interim targets. Guideline targets inform the discussion alongside patient priorities, such as function or comfort, and the individual's circumstances. |
| Intervention | Evidence-based activities tailored to preferences and constraints, including recommendations for the patient, family, or other professionals and any agreed or authorized orders. |
| Outcome | Evaluation findings used to assess the agreed goals and milestones. |
{:.grid}

Record who will review each goal, authorize interventions, and follow up on new results. CarePlan, Goal, and CareTeam provide the underlying structures for evidence-based care planning and coordination. See [FHIR R4 CarePlan](https://hl7.org/fhir/R4/careplan.html), [FHIR R4 Goal](https://hl7.org/fhir/R4/goal.html), and [FHIR R4 CareTeam](https://hl7.org/fhir/R4/careteam.html).

Review the supporting information when selecting a recommendation. An order set can group potential orders, with the receiving workflow preserving which items are optional, selected, and authorized. A proposal to perform an activity and a proposal to avoid it need clear interpretations. The [transition reference](activityflow-transitions.html) covers planning, rejection, ordering, fulfillment, correction, and other lifecycle behaviors.

Keep request, Task, and event states distinct. Request status describes the state of the authorization or intent. One or more Tasks can track fulfillment, and a performed activity can create an event linked to the request. Some flows omit intermediate phases under the appropriate authority, and some events are recorded without a preceding request. An event recorded as `not-done` documents that the activity did not occur, with a reason where available. Request and event lifecycles can also proceed independently, such as a prescription with remaining refills after a dispense.

When a recommendation proposes an activity, a common applicability pattern checks for a matching event, explicit documentation that the event was not done, or an existing proposal, plan, or order. When a recommendation proposes avoiding or stopping an activity, check for relevant requests or ongoing activity and for any prior stop or avoid proposal, including one that was rejected. Apply the guideline's timing and exceptions, and account for what the available data can establish.

### Gather Information and Reevaluate {#interactive-cds}

When information is missing or needs confirmation, an interactive implementation can present a questionnaire, collect responses, extract supported resources, and evaluate again. Define when the patient context and prior proposals are refreshed and which component stores new data. Link an inferred result to its inputs, content version, and calculation time so that later corrections can be interpreted.

The [Interactive Clinical Decision Support](interactive-cds.html) reference describes the questionnaire-generation, population, extraction, and reevaluation contracts. It provides the detailed processing rules for this interaction.

### Verify the Complete Interaction and Maintain It {#operations-and-release}

Test the expected results and the behavior when prefetch is missing, patient data are incomplete, a service times out, or the context changes during an interaction. Define how repeated deliveries are recognized and how stored results are updated or superseded. Clinical review, logic tests, structural conformance, integration tests, usability, and outcome evaluation contribute different evidence to the release decision.

Confirm that the intended person sees relevant guidance at a useful time, can act on it, and can handle exceptions. Assign owners for content, terminology, data interfaces, service monitoring, and rollback. Published [deployment experience](documentation-approach-cds-implementation-evidence.html#ref-shenvi-2026) illustrates the local mapping and maintenance work involved. Use [Conformance](documentation-conformance.html), the [Validate step](methodology-validate.html), and [Evaluate the implementation](documentation-approach-05-knowledge-engineering-overview.html#evaluate-implementation) to organize the resulting review record.

</div>

{% include chapter-navigation.html section="Approach" unit="section" overview="approach.html" previous="documentation-approach-02-04-knowledge-representation.html" previous_title="Knowledge Representation" next="documentation-approach-04-guideline-development.html" next_title="Guideline Development" %}
