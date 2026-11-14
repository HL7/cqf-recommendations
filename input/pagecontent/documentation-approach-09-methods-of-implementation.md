This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

This section discusses methods of implementation, as well as conceptual execution semantics for computable artifacts described by this implementation guide.

### Methods of Implementation

Methods of implementation refers to three (3) broad approaches to moving from the computable, structured representation (L3) of guideline content to the executable representation (L4):

1. **Manual**: i.e. Treating the L3 content as a specification
2. **Translation**: Translating the content to another format suitable for execution in a given environment
3. **Native Execution**: Directly executing the L3 content in a clinical reasoning engine that understand the representation

<div class="modified-content" markdown="1">

{% include cpg-diagram.html src="cpg-runtime-execution.svg" ratio="1000 / 326" alt="Manual implementation, translation, and native execution are three routes from shared computable content to a locally tested implementation." caption="Figure 1. Methods of Implementation. Shared computable content can be implemented manually from the specification, translated to a supported language, or evaluated natively in a compatible engine. Each route needs local verification." %}

</div>


Note that there are numerous factors that must be considered as part of the local implementation of guideline content. The intent of the L3 artifacts described in this implementation guide is to ensure that these factors can be appropriately considered and addressed as part of implementation while still providing useful content that can accelerate the process.

#### Manual

Manual implementation involves development of clinical guideline functionality using the computable (L3) content as a set of rigorously specified requirements for the implementation. In the absence of computable (L3) content, this is the only method.

#### Automatic

Automatic implementation involves programmatic translation of the L3 content into an appropriate L4 format. For example, a CQL query may be translated into an equivalent SQL query for execution, or a PlanDefinition may be transformed into a production rule. This approach involves potentially significant effort to build the appropriate tooling but can pay dividends at scale once the tooling is in place.

#### Native

Native implementation involves direct execution of L3 content. For example, a CQL query may be run directly on a native CQL engine. As with the automatic approach, this approach may involve significant initial tooling effort but can dramatically reduce implementation time thereafter. In addition, there are open source reference implementations that support the use of the FHIR Clinical Reasoning module resources. In particular:

* CQL Engine - A java-based native engine for Clinical Quality Language
* HAPI FHIR - A java-based reference implementation of a FHIR Server and Client
* CQF Ruler - A java-based plug-in for the HAPI FHIR server that enables Clinical Reasoning use cases

### Execution Semantics

The knowledge architecture described here builds on the overall workflow patterns established by the base FHIR specification. In particular, activities are modeled as _requests_ and _events_: requests for proposed or planned actions that have not yet occurred, but are intended to be taken, and events for actions that are in progress, or have completed. The following sections detail these activity processing semantics, and how the knowledge architecture described here relies on these semantics to enable effective modeling of clinical reasoning logic.

#### Activity Processing Semantics

In general, activities within a computable practice guideline are modeled as requests that either have not yet occurred, but are proposed or planned, or events that have occurred. Requests have a `status`, typically indicating the level of completeness of the request; an `intent`, representing the level of authorization or certainty with which the request should be taken; and a `doNotPerform`, indicating whether the request is _to perform_ or _not to perform_ the action.

Note that although these elements are described by the base _request_ pattern within FHIR, the request resources do not necessarily follow these patterns exactly. Variability in use cases and scope of the request resources results in variability in how the request pattern is applied. In general, activities in the CPG move through the proposal plan, order, and event phases. See the [Activity Flow](activityflow.html) page for the rationale and for the states and transitions of each resource.

In addition, because of differences in the specific elements in each of the various request resources, the pattern for each activity varies slightly, depending on the actual `status` and `intent` values defined for use with each specific resource type.

Note also that an _event_ may be documented directly without a corresponding request, and that with or without a request, the _event_ may be documented as `not-done`, meaning explicitly that the event was not performed for some reason, typically provided via the `statusReason` element.

Following this pattern for a positive recommendation (i.e. a recommendation _to_ perform some activity), we can state the applicability logic generally as:

_If the activity has not been performed (nor documented as not having been performed), and is not proposed, planned, or ordered, then propose the activity_

And similarly, for a negative recommendation (i.e. a recommendation _not to_ perform some activity), we can state the applicability logic generally as:

_If the activity is proposed, planned, ordered, or in-progress (and not documented as not having been performed), and there is no proposal (planned or rejected) to stop or not to perform the activity, then propose stopping and/or not performing the activity_

The [Activity Flow](activityflow.html) topic provides a detailed description of the above process, including how each activity is realized in each FHIR resource.

#### PlanDefinition Processing Semantics

The knowledge architecture presented here uses the PlanDefinition in various ways to represent recommendations, strategies, and pathways. Recommendations are represented with a PlanDefinition playing the role of an _event-condition-action_ rule, while strategies and pathways are represented with a PlanDefinition playing the role of a _workflow-definition_ or _clinical-protocol_. In all these cases, the following execution semantics are used to ensure consistent and meaningful interpretation of knowledge artifacts.

1. PlanDefinitions are hierarchies of _actions_, where each action may have any number of children (including zero)
2. {:.modified-content} PlanDefinition actions can be related to other actions in the same PlanDefinition using the _relatedAction_ element, where the profile permits it (the [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html) profile prohibits `action.relatedAction`)
3. {:.modified-content} Although the action element may appear multiple times, the order of appearance of action elements in a PlanDefinition does not by itself imply a sequence of execution, consistent with FHIR methodology that order of elements cannot be meaningful unless stated as such. The exception is the [cqf-applicabilityBehavior](http://hl7.org/fhir/extensions/StructureDefinition-cqf-applicabilityBehavior.html) extension: when a parent action specifies `any`, its child actions are evaluated in order, and only the first applicable child action is included
4. {:.modified-content} This means that the order in which alternatives are evaluated, and which of them are included, is established with `cqf-applicabilityBehavior` and the applicability conditions of the child actions, and how the user may select among the included actions is established with `selectionBehavior`, rather than by chaining related actions
5. The only way an action can be initiated is by _trigger_, or by being _invoked_ either through a parent or related action
6. In particular, the _timing_ element of actions cannot be used as part of execution semantics (with the exception of pathways and schedules, that are allowed to use timings to establish schedules of expected activities)
7. {:.modified-content} Related actions can use any of the relationships defined by the base specification, with or without an `offset` to allow for delays. The relationship describes the timing of the action relative to the target action; for example, the [CHF body weight change recommendation](PlanDefinition-chf-bodyweight-change-pd.html) uses `after-end` to report after recording the weight change. Related actions describe dependencies and timing between activities; they are not used to choose among alternatives (see rule 4)
8. {:.modified-content} Related actions can be cyclic, either directly, or indirectly. A cycle is not necessarily an infinite loop, because the applicability conditions of each action are still evaluated, so a review of cycles needs to take that logic into account. (NOTE: Execution environments must nevertheless take care to guard against runaway and infinite loops)
9. {:.modified-content} Recommendations and strategies can have only one action that specifies a `trigger`, with all other action execution occurring through either child or related actions; pathways can have multiple triggering actions

In addition, when a request is referenced by a RequestGroup, then its intent must be `option`, and it is treated as part of the overall RequestGroup, implying that the intent of the request is established by the intent of the RequestGroup. For PlanDefinition apply processing, this means the returned RequestGroup will have an intent of `proposal`, while all the referenced requests will have an intent of `option`, and when the "options" are selected by the user or application for processing into a Plan, Order, or Event, they will no longer be part of the RequestGroup, will have an intent of Plan or Order as appropriate, and will be independent requests at that point.

<div class="new-content" markdown="1">

For a parent action, the `cqf-applicabilityBehavior` extension controls which child actions are evaluated and included. With `all` (the default), evaluate each child independently and include each applicable child. With `any`, evaluate in order and stop at the first applicable child. The corresponding RequestGroup action carries the same extension value when the result uses a RequestGroup. The parent's `selectionBehavior` describes how a user may select among the included actions. See [Mapping and Other Formalisms](documentation-methodology.html) for parallel and exclusive splits.

</div>


##### Enabled vs Known Content

When used as a knowledge artifact, a PlanDefinition only describes a specific expected process. The cpg-enabled extension is used to indicate that the PlanDefinition is not only registered (or _known_) but is active in the sense that its behavior is active and will be applied by the system.


##### Initiation

Initiation of a PlanDefinition can only occur by _trigger_, as in the conditions defined by the triggering conditions of any action within the PlanDefinition are met, or by _call_, as in the PlanDefinition is invoked directly, or called directly by reference from another PlanDefinition.

##### Recommendations, Strategies, and Pathways

Recommendations are represented as _event-condition-action_ PlanDefinitions, meaning in particular that they can have at most one triggering action. Their action definitions reference a [CPGComputableActivityDefinition](StructureDefinition-cpg-computableactivity.html) or a [CPGOrderSetDefinition](StructureDefinition-cpg-ordersetdefinition.html), but not recommendation, strategy, or pathway definitions.
{:.modified-content}

Strategies are represented as _workflow-definition_ PlanDefinitions, meaning in particular that they can have at most one triggering action (the _start_ action). Their action definitions reference recommendation definitions ([CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html)), and do _not_ reference ActivityDefinitions directly.
{:.modified-content}

And finally, [Pathways](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-pathway) are represented as _clinical-protocol_ PlanDefinitions, meaning that they may have multiple triggering actions. Their action definitions reference strategy definitions or workflow definitions ([CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html) or [CPGWorkflowDefinition](StructureDefinition-cpg-workflowdefinition.html)), and the [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html) profile prohibits `action.relatedAction`, `action.input`, and `action.output`.
{:.modified-content}

In addition, pathways (and to a lesser extent, strategies) may have _eligibility_ and _enrollment_. When a pathway or strategy is _invoked_, enrollment is checked.

* Enrollment is _true_ if the Patient has an active episodeOfCare ([Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case)) for this Pathway or [Strategy](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy), or with the `partOf` PlanDefinition (an extension on PlanDefinitions to indicate that the Pathway or Strategy is part of another, higher-level Strategy or Pathway).
* Eligibility criteria are evaluated as part of the enrollment process described in the next section.

Note that for Recommendations, "eligibility criteria" is typically expressed as part of the recommendation logic, as inclusion criteria directly.

##### Enrollment

These capabilities support the description of enrollment in various ways, including:

* Automatic: An _enrollment_ ECA rule configured for a pathway can be used to establish enrollment automatically
* Prompted: An _enrollment_ ECA rule with user feedback can be used to establish prompted enrollment
* Manual: The creation of a specific EpisodeOfCare (Case) referencing a Pathway or Strategy can establish enrollment manually

### Orchestration

By applying these execution semantics to the creation of recommendations, strategies, and pathways, orchestration of complex guideline-directed care can be represented. In the most straight-forward case, a guideline consists of:

* A **Pathway** that describes a longitudinal schedule of expected activities
* A set of **Strategy** artifacts that describe the expected activities for specific contexts such as a _visit_
* A set of **Recommendation** artifacts that describe individual activities to be performed

The **Pathway** specifies eligibility and enrollment, the **Strategy** specifies the triggering event, and incorporates all the **Recommendation** artifacts as children.

This pattern allows for a straightforward implementation that only needs to integrate with well-known triggers such as `encounter-start`. Initiation always occurs from that event, and enrollment is checked for any PlanDefinition that is a Pathway or Strategy, or that has a partOf that references a Pathway or Strategy.


Applications can then implement the guideline by tracking and invoking known (and enabled) PlanDefinitions directly. The result of these calls are a set of proposals for actions that should be considered or taken.

In addition, the interactive process of gathering information based on the input data requirements for PlanDefinition actions is supported by use of the StructureDefinition/$questionnaire and PlanDefinition/$questionnaire operations, as described in the [Interactive CDS](interactive-cds.html) topic.
{:.new-content}

### Care Planning

The [Care Planning](documentation-careplanning.html) topic describes expectations for the use of dynamic care planning with computable guideline content.
