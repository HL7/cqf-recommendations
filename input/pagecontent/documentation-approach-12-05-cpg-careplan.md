A patient-specific [Care Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-care-plan) relates clinical concerns, goals, proposed activities and documented outcomes. [CPGCarePlan](StructureDefinition-cpg-careplan.html) profiles CarePlan for that purpose. Keep it separate from the reusable [PlanDefinition profiles](documentation-approach-12-03-cpg-plan.html) that describe guideline recommendations.

<div style="clear: both;">
  <img src="cpg-model-care-flow.svg" alt="A patient-specific proposal can lead to planned or authorized requests and then documented events; each transition requires the appropriate local decision" class="img-responsive" width="1000"/>
</div>

*Patient-specific care flow. Original conceptual illustration; transitions are not automatic and the exact resources, references and status codes vary by activity.*

### Proposal

A [Proposal](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-proposal) is a patient-specific suggestion for an activity. It uses the relevant request profile, such as [CPGServiceRequest](StructureDefinition-cpg-servicerequest.html) or [CPGMedicationRequest](StructureDefinition-cpg-medicationrequest.html).

<a id="cpgproposal-as-a-patient-specific-cpgrecommendation"></a>

#### Proposal as a Patient-specific Recommendation

Applying a [Recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation) definition evaluates its conditions in context and constructs applicable requests. The [CPG apply operation](OperationDefinition-cpg-plandefinition-apply.html) returns transient requests in subject-specific Bundles. It does not persist or carry out those requests; the caller decides whether and how to proceed.

When preserving optionality, a RequestGroup can organize the resulting requests. Child requests then use intent `option`, with intent governed by the group. [CPGStrategy](StructureDefinition-cpg-strategy.html) is the RequestGroup profile for patient-specific realizations of a strategy definition. Selecting an option for subsequent care requires the appropriate independent request and intent, rather than silently treating every option as an order.

#### Patient Information Supporting the Proposal

A proposal is more useful when its recipient can see why it applies. Preserve links to the originating definition, guideline supporting information and relevant patient records. Recommendation-definition `action.input` describes information relevant to applicability; `action.output` describes supporting patient information to include with the recommendation. Use the elements supported by the resulting request type rather than assuming all requests have identical fields.

Show the source and time of a measurement or inference. Distinguish evidence supporting the guideline from patient information supporting this particular proposal. A cited study is not a patient observation, and a calculated patient value is not an evidence-quality rating.

<a id="request-as-part-of-the-cpgcareplan"></a>

### Requests in a Care Plan

[Requests](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-request) express desired or intended care. Proposal, plan and order intents distinguish suggestion, intention and authorization. Acceptance or authorization does not establish that the activity occurred. Keep links among resulting requests and their originating definitions/proposals using the resource-specific elements.

An order can also be a [case feature](documentation-approach-12-04-cpg-case.html), for example when another recommendation checks existing therapy. It remains a request in that role. Do not infer medication exposure solely from an order unless that interpretation is explicitly justified by the clinical logic and available data.

<a id="event-as-part-of-the-cpgcareplan"></a>

### Events in a Care Plan

[Events](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-event) document what is occurring, has occurred or is explicitly recorded as not done. An event that fulfills a care-plan request relates to both the care plan and the patient's case information. Other clinical events can inform the case without fulfilling any request in this care plan.

Use the correct fulfillment link, such as `basedOn`, `request` or `authorizingPrescription`, for the event type. A first medication dispense does not necessarily complete an order with refills. Task execution, request authorization and event lifecycle have different statuses; see [Activity Flow](activityflow.html#purpose-and-rationale) before implementing transitions.

### Shared Care Plan

A patient's plan can span several conditions, pathways, care teams and settings. Preserve concerns, goals, patient preferences and the originating guidance when combining activities. This guide supplies representations and traceability; it does not automatically resolve competing guideline recommendations or assign local decision authority.

Implementation review should establish who can accept or revise proposals, authorize orders, reconcile existing requests and document outcomes. Test the references and lifecycle behavior as well as the clinical applicability logic. The [care-planning discussion](documentation-careplanning.html) provides the concern/goal/intervention/outcome view; [integration mechanisms](documentation-approach-10-mechanisms-of-integration.html) address how the information reaches local systems.
