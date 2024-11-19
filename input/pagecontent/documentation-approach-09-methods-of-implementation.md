This section discusses methods of implementation, as well as conceptual execution semantics for computable artifacts described by this implementation guide.

Once computable representations and expressions of any clinical practice guideline have been developed (as a CPG-IG) they must be implemented and integrated with various clinical and operational information systems (e.g., EHRs, Workflow Apps, Quality and Practice Analytics tools, Quality and Registry Reporting tools, etc.)  Three main factors come into play. The first consideration is where and how these computable expressions and artifacts will be executed- natively withing systems of record, in an external reasoning engine, or translated and reimplemented in target system native logic languages (e.g. rules engines).  The second consideration, which is related to the first, Is how the inferences or insights (e.g. CaseFeatures, Recommendations/Proposals, Metrics) are to be integrated into existing clinical application ecosystems and/or the same or similar workflows supported by these applications.  The third consideration, which further relates to the first two, Is where and how these insights will be manifested in such a way to enable guideline-informed clinical workflows and related healthcare activities.  Partially orthogonal to, but just as important as these three considerations, is the ability to assess and ensure conformance of specific implementations of computable clinical practice guidelines using the specifications and requirements outlined in this implementation guide.

While all of these factors Have implications for the overall level of effort, the methods of implementing knowledge and mechanisms of integration are directly reflected in the overall selection of workflow enablements in a given setting. The last two sections further discuss trade-offs between effort, time to develop, and capabilities enabled (and value that can be derived) when developing a CPG. From very basic context for narrative snippets searchable in a library (or Infobutton from EHR) to full clinical workflow enablement, cognitive support, and pathway tracking (likely via SMART-on-FHIR App or deep EHR integration). CPGs also enable feedback loops with real-world evidence of actual guideline usage and outcomes, and provide a substrate for the evidence ecosystem and a feedforward loop for evidence updates. To support description of, and allow declaration of conformance to, these various capabilities enabled by CPGs, the CPG-IG defines levels of enablement that correlate to work effort, time to delivery, and capabilities enabled.

### Methods of Implementation

Methods of implementation refers to three (3) broad approaches to moving from the computable, structured representation (L3) of guideline content to the executable representation (L4):

1. **Manual**: i.e. Treating the L3 content as a specification
2. **Translation**: Translating the content to another format suitable for execution in a given environment
3. **Native Execution**: Directly executing the L3 content in a clinical reasoning engine that understand the representation

<details open>

<summary>

FIG. 58. Methods of Implementation

</summary>

<img src="methods-of-implementation.png" alt="Methods of Implementation" class="img-responsive img-rounded center-block" width="750" height="385"/>

</details>

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

Note that although these elements are described by the base _request_ pattern within FHIR, the request resources do not necessarily follow these patterns exactly. Variability in use cases and scope of the request resources results in variability in how the request pattern is applied. This results in differences in the way the pattern is implemented, but in general, activities in the CPG move through the following basic steps:

1. Activities are proposed as requests with a status of `active` and an intent of `proposal`
2. Proposals that are accepted result in a new _request_, linked to the proposal and with a status of `active` and an intent of `plan`
3. Proposals that are rejected have a Task with a `focus` that references the rejected proposal and a status of `rejected`
4. Accepted proposals (plans) that are _authorized_ result in a new _request_, linked to the plan with an intent of `order`
5. Orders that are _fulfilled_ move to a status of `completed`, and result in the creation of a corresponding _event_ resource
6. Events are typically created with a status of `preparation` or `in-progress`, and the `basedOn` element is used to indicate the request the event is fulfilling
7. In-progress events that are completed move to a status of `completed`
8. In-progress events that are stopped or cancelled move to a status of `suspended` or `aborted`

Note that although this is the general pattern, because of the variability in request resources, the specific pattern for each activity varies slightly, depending on the actual `status` and `intent` values defined for use with each specific resource type.

Note also that an _event_ may be documented directly without a corresponding request, and that with or without a request, the _event_ may be documented as `not-done`, meaning explicitly that the event was not performed for some reason, typically provided via the `statusReason` element.

Following this pattern for a positive recommendation (i.e. a recommendation _to_ perform some activity), we can state the applicability logic generally as:

_If the activity has not been performed (nor documented as not having been performed), and is not proposed, planned, or ordered, then propose the activity_

And similarly, for a negative recommendation (i.e. a recommendation _not to_ perform some activity), we can state the applicability logic generally as:

_If the activity is proposed, planned, ordered, or in-progress (and not documented as not having been performed), and there is no proposal (planned or rejected) to stop or not to perform the activity, then propose stopping and/or not performing the activity_

The [Activity Flow](activityflow.html) topic provides a detailed description of the above process, including how each activity is realized in each FHIR resource.

#### PlanDefinition Processing Semantics

The knowledge architecture presented here uses the PlanDefinition in various ways to represent recommendations, strategies, and pathways. Recommendations are represented with a PlanDefinition playing the role of an _event-condition-action_ rule, while strategies and pathways are represented with a PlanDefinition playing the role of a _workflow-definition_ or _clinical-protocol_. In all these cases, the following execution semantics are used to ensure consistent and meaningful interpretation of knowledge artifacts.

1. PlanDefinitions are hierarchies of _actions_, where each action may have any number of children (including zero)
2. PlanDefinition actions can be related to other actions in the same PlanDefinition using the _relatedAction_ element
3. Although the action element may appear multiple times, there is no assumption of sequence of execution implied by the order of appearance of action elements in a PlanDefinition, consistent with FHIR methodology that order of elements cannot be meaningful unless stated as such in the base resource
4. This means that if required, sequencing must be established by chaining related actions
5. The only way an action can be initiated is by _trigger_, or by being _invoked_ either through a parent or related action
6. In particular, the _timing_ element of actions cannot be used as part of execution semantics (with the exception of pathways and schedules, that are allowed to use timings to establish schedules of expected activities)
7. Related actions can only use the `before-start` relationship, with or without an `offset` to allow for delays
8. Related actions can be cyclic, either directly, or indirectly. (NOTE: This means in particular that execution environments must take care to guard against runaway and infinite loops)
9. Only one action can specify a `trigger`, all other action execution occurs through either child or related actions

In addition, when a request is referenced by a RequestGroup, then its intent must be `option`, and it is treated as part of the overall RequestGroup, implying that the intent of the request is established by the intent of the RequestGroup. For PlanDefinition apply processing, this means the returned RequestGroup will have an intent of `proposal`, while all the referenced requests will have an intent of `option`, and when the "options" are selected by the user or application for processing into a Plan, Order, or Event, they will no longer be part of the RequestGroup, will have an intent of Plan or Order as appropriate, and will be independent requests at that point.

##### Enabled vs Known Content

When used as a knowledge artifact, a PlanDefinition only describes a specific expected process. The cpg-enabled extension is used to indicate that the PlanDefinition is not only registered (or _known_) but is active in the sense that its behavior is active and will be applied by the system.

##### Initiation

Initiation of a PlanDefinition can only occur by _trigger_, as in the conditions defined by the triggering conditions of any action within the PlanDefinition are met, or by _call_, as in the PlanDefinition is invoked directly, or called directly by reference from another PlanDefinition.

##### Recommendations, Strategies, and Pathways

Recommendations are represented as _event-condition-action_ PlanDefinitions, meaning in particular that they can have at most one triggering action, and that they cannot reference other PlanDefinitions.

Strategies are represented as _workflow-definition_ PlanDefinitions, meaning in particular that they can have at most one triggering action (the _start_ action), and that they can reference other PlanDefinitions, but typically do _not_ reference ActivityDefinitions directly.

And finally, Pathways are represented as _clinical-protocol_ PlanDefinitions, meaning that they may have multiple triggering actions, and that they can reference other PlanDefinitions (typically other pathways, strategies, and, less often, recommendations), and they typically do _not_ reference ActivityDefinitions directly.

In addition, pathways (and to a lesser extent, strategies) may have _eligibility_ and _enrollment_. When a pathway or strategy is _invoked_, enrollment is checked.

* Enrollment is _true_ if the Patient has an active episodeOfCare (CPGCase) for this Pathway or Strategy, or with the `partOf` PlanDefinition (an extension on PlanDefinitions to indicate that the Pathway or Strategy is part of another, higher-level Strategy or Pathway).
* Eligibility criteria are evaluated as part of the enrollment process described in the next section.

Note that for Recommendations, "eligibility criteria" is typically expressed as part of the recommendation logic, as inclusion criteria directly.

##### Enrollment

These capabilities support the description of enrollment in various ways, including:

* Automatic: An _enrollment_ ECA rule configured for a pathway can be used to establish enrollment automatically
* Prompted: An _enrollment_ ECA rule with user feedback can be used to establish prompted enrollment
* Manual: The creation of a specific EpisodeOfCare (CPGCase) referencing a Pathway or Strategy can establish enrollment manually

### Orchestration

By applying these execution semantics to the creation of recommendations, strategies, and pathways, orchestration of complex guideline-directed care can be represented. In the most straight-forward case, a guideline consists of:

* A **Pathway** that describes a longitudinal schedule of expected activities
* A set of **Strategy** artifacts that describe the expected activities for specific contexts such as a _visit_
* A set of **Recommendation** artifacts that describe individual activities to be performed

The **Pathway** specifies eligibility and enrollment, the **Strategy** specifies the triggering event, and incorporates all the **Recommendation** artifacts as children.

This pattern allows for a straightforward implementation that only needs to integrate with well-known triggers such as `encounter-start`. Initiation always occurs from that event, and enrollment is checked for any PlanDefinition that is a Pathway or Strategy, or that has a partOf that references a Pathway or Strategy.

Applications can then implement the guideline by tracking and invoking known (and enabled) PlanDefinitions directly. The result of these calls are a set of proposals for actions that should be considered or taken.

### Care Planning

The [Care Planning](documentation-careplanning.html) topic describes expectations for the use of dynamic care planning with computable guideline content.

In addition, to support the ability to resolve optional logic as part of request groups within a care plan, this implementation defines a CarePlan apply operation:

* [$apply](OperationDefinition-cpg-careplan-apply.html): An instance-level operation that supports resolution of optional logic within any RequestGroups contained in an existing CarePlan.
