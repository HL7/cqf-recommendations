This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

A care plan can be conceptualized as the patient-specific or instantiated “plan” concretized against an individual case.  The Care Plan describes the intention of how one or more healthcare professionals intend to provide care for a specific patient, group, or community for a period of time, possibly limited to care for a specific condition or set of conditions.  In the CPG, the care plan is scoped to the condition(s), intervention(s), recommendation(s), and other relevant “plan” content in this limited context (e.g., contraindications, correlated orders and results such as drug levels, or other orders or fulfillments that must be considered in triggering, decision, or orchestration logic).

Covered in this Section:


*   Overview of the CPG Care Plan
*   Proposals
    *   Proposal as a Patient-specific Recommendation
    *   Patient Information Supporting the [Proposal](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-proposal)
*   Requests
*   Events
*   Shared Care Plans

<details open>

<summary>

Figure 1. The Care Plan With its Proposals and resulting or related Requests and Events.

</summary>

<img src="CPG-12-04.png" alt="Care Plan With Proposals" class="img-responsive img-rounded center-block"/>

</details>


The Care Plan is constrained to the set of proposals (i.e., patient-specific recommendations), clinical interventions (e.g., orders/ requests), or their fulfillments (e.g., events) scoped by a specific CPG.  This includes those related to the guideline recommendations, the strategies for combining guideline recommendations, the decision logic for each recommendation, the strategies for combining recommendations, and  how the overall guideline or pathway combines or orchestrates all of the recommendations and strategies in the context of a specific case (i.e., patient).  As described in the “Methodology” section, the Care Plan is represented by the [CPGCarePlan](StructureDefinition-cpg-careplan.html) profile on a [FHIR CarePlan Resource](https://www.hl7.org/fhir/careplan.html).

<div class="new-content" markdown="1">

{% include cpg-diagram.html src="cpg-model-care-flow.svg" ratio="1000 / 355" alt="A patient-specific proposal can lead to planned or authorized requests and then documented events; each transition requires the appropriate local decision." %}

</div>


<details open>

<summary>

Figure 2. The Care Plan consists of the patient-specific recommendations as [Proposals](http://hl7.org/fhir/codesystem-request-intent.html#request-intent-proposal), Requests that correspond (or are related) to the Proposals, and the corresponding or related Events.  Note that the Requests and Events are also referenced by the Case as Case Features.

</summary>

<img src="CPG-Main-InstantiatedPlan.png" alt="Instantiated Plan" class="img-responsive img-rounded center-block"/>

</details>


The Proposals, Requests, and Events of the Care Plan correspond to the patient-specific phases of the [Activity Flow](activityflow.html#purpose-and-rationale): a Proposal is the proposal phase, Requests cover the plan and order phases, and Events cover the event phase.

### Proposal

A patient-specific recommendation that has taken into account all the criteria in the computable decision logic, and that gives a care team member what is needed to make a [Request](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-request) (order, prescription, schedule), is known as a Proposal. A Proposal is the first patient-specific phase of the [Activity Flow](activityflow.html#purpose-and-rationale): if accepted it leads to a plan, if authorized to an order, and if fulfilled to an event. In FHIR, the phase is conveyed by the Request's [intent](http://hl7.org/fhir/codesystem-request-intent.html#4.3.14.226), and the state within that phase by its status. Proposals carry sufficient information to initiate a Request.

Further tracking of the state of completion of an activity may be supported through the FHIR Task Resource. See [Using FHIR Tasks with Requests and Events](documentation-approach-12-06-cpg-common-pathway.html#using-fhir-tasks-with-requests-and-events).


#### Proposal as a Patient-specific Recommendation

A Proposal is a patient-specific instantiation of a [Recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation).  As such, a Proposal carries forward much of the information content of the Recommendation, including all of the necessary definition for the request such as attributes or parameters that have been defined explicitly or inferred through the various decision logic or other formal expressions of the Recommendation or broader CPG.  Furthermore, a Proposal may similarly carry forward information specific to a Recommendation, such as the narrative guideline recommendation and its reference or provenance to through an Evidence Resource, including directionality, strength of recommendation, and quality of evidence qualifiers, which themselves reference Evidence Resources and Evidence Variables.  Of note, information contained in evidence variables, such as formalizations of various PICOTS variables (i.e., population, intervention, comparator, outcomes, timing, and setting) may not only be used in the Recommendation (i.e., semantics of request definition and decision logic), but may be used in end-user enablements (e.g., SMART-on-FHIR apps) to facilitate additional capabilities such as retrieving and displaying supplemental patient data (e.g., summary views) or for population-level aggregates for comparison (e.g., “patient-like-this” queries).

#### Patient Information Supporting the Proposal

Patient-specific recommendations or proposals, and clinical decision support in general, have been shown to be more effective and beneficial when supported by recommendations-specific patient information.  In the 6S evidence pyramid described in the “Guideline Development Process” section, this is referred to as real-world evidence.  This patient-specific information often includes the pertinent information from the case that informs the decision(s) that the clinician must make with respect to the recommendation (e.g., representing indications for an intervention). This often includes the primitive and inferred data elements used in the decision logic for the recommendation.  It may address contextual historical information and clinical information related to the clinical and disease processes (i.e., clinicopathology directly related to the medical decision(s)) implicit in the recommendation and made explicit by the knowledge formalizations. It may also include pertinent information related to contraindications (i.e., reasons not to perform the recommended intervention), that are both relative and absolute, though most absolute contraindications are addressed directly in the formalized decision logic.

In the CPG, this supporting information is closely correlated with the [Case Features](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature) used in the formalized decision logic for the Recommendation, or some subset thereof, as well as other data elements may have been specified as required in the Recommendation (i.e., as a scoped [Case Feature Group](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature-group) or [Case Plan Summary](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-plan-summary)).  These additional data elements (Case Features) may represent relevant historical or contextualizing information, the status or responses (Request, Events) of related Proposals, or even other Recommendations not yet proposed, as well as relative or absolute contraindications for the Proposal.  In order to specify this information, a Recommendation may include scoped definitions of Case Feature Groups or Case Plan Summaries.

<details open>

<summary>

Figure 3. A CPG Recommendation with its scoped Case Plan Summary.

</summary>

<img src="CPG-12-05.png" alt="CPG recommendation" class="img-responsive img-rounded center-block"/>

</details>


### Request (as part of the Care Plan)

Requests encompasses all types of orders (e.g., original orders, filler representations of orders, reflex orders, etc.) as well as proposals/recommendations for action to occur, plans, scheduling, etc. Any sort of description of an activity that is desired where the description is specific to the subject of the activity and the approximate timing of the activity would be considered a request.  (see [FHIR Request Pattern](https://www.hl7.org/fhir/request.html)).  In the CPG-IG, a request may be the result of a proposal or may at least correlate to the proposed request; however, there may be other requests of interest to the scope of a specific CPG, in particular a [Strategy](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy) and/or Recommendation, Care Plan, Case Plan Summary, Case Summary, or any of the numerous derived assets such as the [Metric](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-metric), [Measure](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-measure), [eCase Report](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-ecase-report), or Case Plan Progressing Note.

Of note, a request is at the boundary between the care plan and the case (i.e., Care Plan, [Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case)).  While an order may not necessarily represent something that was actually done to the patient (e.g., a medication administration as an ‘exposure’), there are several reasons to consider it as part of the case (i.e., patient specific information) as well as the care plan. First of all, it is not uncommon for an order or prescription (i.e., request) to be the only evidence that something was done for the patient without any data element in the clinical information system (e.g., EHR) that represents or documents the resulting event.  Secondly, requests (e.g., orders, prescriptions, scheduling services) conveys strong intent and timing information about the patient’s clinical state and/or interventions.  The approach the CPG-IG takes in addressing requests is to consider them as both part of the Care Plan as well as a Case Feature; it plays dual roles and is referenced by each.  Because the EHR manages its own orders, an order in the EHR may be a Case Feature without having followed from a Proposal (see [Activity Flow](activityflow.html#purpose-and-rationale)).

### Event (as part of the Care Plan)

Events are descriptions of activities that have taken place or that are currently taking place. This includes resources that primarily describe the result of a request (e.g., activity) or what was found (e.g., a condition or observation). Examples include medication dispense or administrations, procedures, encounters, questionnaire responses, observations, diagnostic report, clinical document (i.e., FHIR Composition), and many other found in the [FHIR Event pattern](https://www.hl7.org/fhir/event.html#mappings).

Similar to a request, an event also may be at the boundary between the care plan in the case (i.e., Care Plan, Case).  However, only events that correspond to the fulfillment of a request belong in the care plan.  These Events also serve as Case Features in the Case. Boundary issues for dealing with events that belong to both the Care Plan and Case are discussed in the section on [Separating and Defining Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html).

### Shared Care Plan


For more information on a “Shared Care Plan”, please refer to the [Multiple Chronic Conditions (MCC) eCare Plan Implementation Guide](http://hl7.org/fhir/us/mcc).  Shared Care Plans are but one means of interelating and interoperating between more than one CPG.
