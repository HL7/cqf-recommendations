Use this topic to choose how a system executes computable guideline content and to interpret its patient-specific results. Inputs are a versioned set of definitions, libraries, terminology, and patient context. The immediate output is evaluated guidance or proposed activities; the receiving workflow determines what is accepted and carried out.

### Methods of Implementation

There are three ways to move from a computable representation (L3) to a locally executable implementation (L4).

| Method | What the implementor does | What needs verification |
| --- | --- | --- |
| Manual | Treats the computable content as a specification and implements the behavior in local tools | Fidelity to source logic, exceptions, data requirements, and expected results |
| Translation | Converts the content into another executable representation | Semantic equivalence, supported constructs, and behavior on the same test cases |
| Native execution | Evaluates the supplied representation in a compatible reasoning engine | Engine and model versions, artifact resolution, terminology, and local data behavior |
{:.grid}

<div>
  <img src="cpg-runtime-execution.svg" alt="Manual implementation, translation, and native execution are three routes from shared computable content to a locally tested implementation." class="img-responsive" width="1000"/>
</div>

*Figure 1. The execution route changes; responsibility for validating the local implementation remains.*

#### Manual

A local developer can use L3 artifacts and their documentation as precise requirements, even when the target system cannot load them. Record the relationship between source expressions and local rules so that later changes can be assessed. Reimplementation still requires the [translation and validation work](methodology-validate.html#validate-step) needed to preserve clinical intent.

#### Automatic

Programmatic translation can target another language or execution platform. For example, an implementation might translate selected CQL queries into database queries. Successful translation or compilation is only one check: compare null handling, temporal logic, terminology membership, units, and returned results for supported expressions. Describe unsupported constructs explicitly.

#### Native

A native engine evaluates the supplied logic and definitions. FHIR data support alone does not imply support for CQL or PlanDefinition processing. Confirm the operations, language features, model information, terminology services, and dependency resolution supported by the chosen runtime. The [Using CQL With FHIR](https://hl7.org/fhir/uv/cql/) guide provides related implementation guidance; the [libraries](libraries.html) page explains the content package.

### Execution Semantics

#### Activity Processing Semantics

FHIR distinguishes a reusable **definition**, a patient-specific **request**, and an **event** recording what happened. Requests use intent to distinguish a proposal, plan, or order; status describes their current state. Where supported by the resource or profile, a do-not-perform indicator expresses a request not to carry out the activity.

The usual flow is:

1. Apply the definition to produce a proposal. A complete proposal can be considered for acceptance; a draft needs further information.
2. Acceptance produces a plan linked to the proposal. Rejection can be recorded by a fulfillment Task focused on the request.
3. Authorization produces an order linked to the preceding proposal or plan.
4. Fulfillment is recorded with the appropriate event resource and its link to the request.
5. Track the request and event independently. An initial medication dispense, for example, may leave a prescription with further refills active.

The flow can omit intermediate phases when the actor has the appropriate authority. Events can also be documented without a prior request. A not-performed event, a rejected proposal, and a request not to perform are different facts.

Resource types have different status vocabularies and linking elements. Use [Activity Flow](activityflow.html) for the concrete resource mapping; do not assign generic pattern codes to a resource that does not support them.

For a positive recommendation, a common applicability pattern is to propose the activity when it has not already been performed, explicitly documented as not performed, proposed, planned, or ordered. For a negative recommendation, the pattern is to consider stopping or avoiding an activity that is proposed, planned, ordered, or underway, while checking for an existing stop/avoid proposal or recorded rejection. These patterns rely on the available data and the content's explicit logic. Absence of a record does not establish that care did not occur.

#### PlanDefinition Processing Semantics

The [CPG PlanDefinition $apply operation](OperationDefinition-cpg-plandefinition-apply.html) applies a definition to a context and returns a **Bundle for each subject**. Its results are transient. Bundles can contain CarePlan, RequestGroup, and individual requests. If a RequestGroup preserves action grouping, its child requests have intent `option`; the group establishes their overall intent. Grouping is optional in this operation.

This is the CPG operation contract. [Base FHIR R4 PlanDefinition $apply](https://hl7.org/fhir/R4/plandefinition-operation-apply.html) has a CarePlan return contract. Implement against the operation a server actually supports, including its parameters and result handling.

An implementation calling CPG $apply resolves the intended definition and dependencies, supplies the subject and other context, and inspects every returned result. The operation defines how supplied data, server data, and a data endpoint are considered, including `useServerData`. It also distinguishes a single `data` Bundle from `prefetchData`. Use those parameters as documented rather than assuming that the engine sees every relevant clinical record.

The orchestration model uses these rules:

- Actions form a hierarchy. Their order in the resource does not imply execution order.
- Triggers or invocation through parent/related actions initiate processing. The guide's recommendation and [strategy](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy) pattern uses one triggering action; [pathways](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-pathway) can have multiple triggers.
- Where the profile permits related actions, the pattern uses `before-start`, optionally with an offset, to express ordering. Guard against cyclic related-action chains.
- Timing is not a general substitute for triggering or ordering. Pathways and schedules can use it to express expected activity schedules.
- Apply the constraints of the selected profile. Base PlanDefinition features are not automatically available in every CPG profile.

##### Enabled vs Known Content

A registered definition can be known to a system without being active in its workflow. The [cpg-enabled extension](StructureDefinition-cpg-enabled.html) identifies enabled behavior. Loading a package and enabling its clinical use are separate implementation decisions.

##### Initiation

A definition is initiated when its trigger conditions are met or when it is called directly, including through another definition. The implementation decides where those events are detected and how to avoid duplicate or stale processing. [Integration mechanisms](documentation-approach-10-mechanisms-of-integration.html) describe the interface choices.

##### Recommendations, Strategies, and Pathways

| Profile | PlanDefinition type | Allowed definition targets in this guide |
| --- | --- | --- |
| [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html) | `eca-rule` | CPGComputableActivityDefinition or CPGOrderSetDefinition |
| [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html) | `workflow-definition` | CPGRecommendationDefinition |
| [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html) | `clinical-protocol` | CPGStrategyDefinition or CPGWorkflowDefinition |
{:.grid}

A pathway groups strategies or workflows for a longitudinal view; a strategy groups recommendations for a particular context. The pathway profile prohibits `action.relatedAction`, `action.input`, and `action.output`. Consequently, do not implement its longitudinal grouping as an arbitrary related-action graph or assume that every base PlanDefinition nesting pattern conforms to this guide.

For pathways and strategies that use enrollment, invocation checks for an active [CPGCase](StructureDefinition-cpg-case.html), represented by EpisodeOfCare, whose `enrolledIn` extension identifies the pathway or strategy. The `partOf` extension belongs to PlanDefinition: it links contained definitions to a containing definition so that processing can find the relevant enrollment context. Eligibility is assessed as part of enrollment. A recommendation's inclusion criteria normally belong to its applicability logic.

##### Enrollment

Enrollment can be automatic through an enrollment rule, prompted through a rule with user feedback, or manual through an appropriate CPGCase. The local workflow determines who can establish it and how it is recorded. Eligibility, enrollment, and a newly returned proposal are distinct states; calling $apply does not itself persist an EpisodeOfCare.

### Orchestration

A common design has a pathway describing longitudinal expectations, strategies for contexts such as a visit, and recommendations for specific activities. A supported event such as an encounter start invokes enabled content, with enrollment checked where applicable. The returned proposals are then processed by the receiving application.

When further information is needed, use the [interactive CDS](interactive-cds.html) cycle to collect data and reevaluate. Rechecking the patient context and the status of earlier proposals helps prevent an old result from being treated as a current instruction.

### Care Planning

Continue to [care planning](documentation-careplanning.html) for the relationship among concerns, goals, interventions, and outcomes. Use the [L4 checklist](clinical-guidelines-development-L4-checklist.html) to record local implementation evidence. Published [retrospective assessment](https://pmc.ncbi.nlm.nih.gov/articles/PMC12309839/) and [deployment experience](https://pmc.ncbi.nlm.nih.gov/articles/PMC13421373/) illustrate useful test approaches, with limits specific to their sites and clinical use cases.
