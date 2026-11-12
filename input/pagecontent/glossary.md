These definitions distinguish clinical concepts, reusable knowledge and patient-specific resources. Capitalized profile names refer to formal artifacts; shorter conceptual names do not imply additional FHIR resource types. See the [conceptual architecture](documentation-approach-12-conceptual-knowledge-architecture.html) and [FHIR resource map](documentation-approach-05-03-knowledge-representation.html) for relationships.

### Activity

An action relevant to care, such as collecting information, requesting a service or administering medication. A definition describes an activity that can occur; a request describes desired care; an event documents an occurrence. See [Activity Flow](activityflow.html).

### Adherence

Adherence is where the patient is with respect to a strategy, taken as a whole, and is a special case of a composite metric. Adherence is a rollup of all or many of the compliance and/or intermediate-outcome metrics for the elements it covers. The business logic for determining adherence is often determined at the level of local implementation but may be recommended by the guideline development group as well. Of note to the knowledge engineer, adherence metrics are often scoped to a strategy.
{:.modified-content}

The colloquial terms “on path”, “off path”, “happy path”, and “perfect path” describe where a patient stands with respect to a pathway as a whole, and are treated separately from adherence (see [Pathway Status Terms](documentation-approach-12-07-cpg-derivative-and-related-assets.html#pathway-status-terms)).
{:.modified-content}

Adherence metrics scoped to a strategy report their results using the [CPG Adherence Result](ValueSet-cpg-adherence-result-vs.html) value set (see [Metrics](methodology-translate.html#metrics)).
{:.new-content}

### Assertion

A documented statement or value about a patient. It can be directly observed, clinically assessed or a previously inferred value that has been recorded. Preserve its source and time.

### Assessment

A clinical evaluation of the patient's state, potentially using observations and computational support. It is distinct from an automatically calculated value and from the decision about which care to propose.

### Case

The patient information relevant to a guideline, including recorded and inferred features. The exact **CPGCase** profile uses EpisodeOfCare to represent enrollment; it is narrower than this conceptual meaning of case.

### Case Feature

A clinically meaningful item of patient information, such as an observation, condition, request or derived state. **CPGCaseFeatureDefinition** profiles StructureDefinition to define its representation. A patient-specific clinical resource carries its value. See [Case](documentation-approach-12-04-cpg-case.html).

### Compliance

Compliance is where the patient is with respect to the individual recommendations (and in particular the workflow aspects). Compliance is often determined (and tracked) using metrics, which often correspond with, or are aggregated into, public health indicators or other population-level health analytics. Compliance metrics scoped to a recommendation report their results using the [CPG Compliance Result](ValueSet-cpg-compliance-result-vs.html) value set (see [Metrics](methodology-translate.html#metrics)).
{:.modified-content}

### Definition

Reusable knowledge describing an activity or process independently of a particular patient's decision or occurrence. PlanDefinition and ActivityDefinition are examples. Applying a definition can construct patient-specific requests; the definition is not itself such a request.

### Event

A record of a clinical/administrative occurrence, including activity in progress or explicitly documented as not done where the resource supports it. Event resource types have different status vocabularies and links to requests.

### Guideline

Recommendations and supporting information intended to guide care for a defined scope. A computable guideline package can include narrative, models, terminology, logic, definitions, profiles and tests. **CPGComputableGuideline** profiles ImplementationGuide for package description.

### Inference

A value or statement derived from other information using a defined expression or reasoning process. It can remain transient or be recorded. Preserve the inputs, time context and relevant computational definition when explaining its origin.

### Intervention

An activity intended to affect care or health, or the means of delivering support for such an activity. Clarify whether the term means a clinical action or a CDS interaction such as an alert or form.

### Measure

A defined quantitative assessment, often of a care process or outcome across a population. FHIR Measure represents its structure and expression references; MeasureReport represents evaluated results. See [derivative assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html).

### Metric

A [metric](documentation-approach-04-05-computable-guideline-artifacts.html#cpg-content-and-related-derivatives) is a patient-level measurement or indicator of recommendation compliance (corresponding to a process measure), strategy or guideline adherence (corresponding to a composite measure), reaching a stated goal or objective (corresponding to an end or intermediate outcome), or current status of a clinical activity. It is often related to a patient-specific recommendation (i.e. a proposal), usually as a process measurement, evaluating compliance (i.e., that a request and/or event fulfilled the proposal) and/or qualifying the timing between the proposal, its resulting request, and/or the fulfilling event(s).
{:.modified-content}

### Pathway

Longitudinal grouping of guidance and expected activities. **CPGPathwayDefinition** is the PlanDefinition profile with type `clinical-protocol`; the patient-specific course of care is separate from that reusable definition.

### Plan

Qualify this term in implementation discussions. **CPGPlan** is a conceptual grouping of reusable guidance. **CPGCarePlan** is a patient-specific CarePlan profile. The request intent `plan` expresses an intention distinct from an authorized order. See [plan boundaries](documentation-approach-12-03-cpg-plan.html).

### Proposal

A patient-specific suggestion for an activity, represented by the applicable request resource. **CPGProposal** is a conceptual label, not a separate profile. Grouped optional requests can use intent `option` under a RequestGroup; selection and authorization remain separate decisions.

### Recommendation

Guidance about an activity to consider or avoid in stated circumstances. **CPGRecommendationDefinition** is the reusable PlanDefinition profile for its event-condition-action representation. A patient-specific recommendation result is a proposal/request, not another definition.

### Request

A patient/context-specific representation of desired care, including proposal, plan or order where supported. Its intent conveys the nature of that request; its status concerns its lifecycle. It does not establish that the activity occurred.

### Strategy

A grouping of related recommendations, usually for a concern or context. **CPGStrategyDefinition** profiles PlanDefinition for the reusable structure. **CPGStrategy** profiles RequestGroup for patient-specific choices. These exact names identify different artifacts.

### Workflow

The actors, timing, dependencies and interactions by which work is performed. The guideline can identify abstract care processes; local implementation supplies concrete routing, triggers, permissions and interfaces. Task can track execution, while requests and events retain their own meanings.
