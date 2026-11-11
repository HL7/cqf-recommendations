These definitions distinguish clinical concepts, reusable knowledge and patient-specific resources. Capitalized profile names refer to formal artifacts; shorter conceptual names do not imply additional FHIR resource types. See the [conceptual architecture](approach-model.html) and [FHIR resource map](approach-artifacts.html#resource-map) for relationships.

### Activity

An action relevant to care, such as collecting information, requesting a service or administering medication. A definition describes an activity that can occur; a request describes desired care; an event documents an occurrence. See [Activity Flow](activityflow.html).

### Adherence

A defined assessment of how care relates to guideline recommendations over time. Its population, time window, exceptions and missing-data rules need to be explicit. An undocumented action is not automatically nonadherence.

### Assertion

A documented statement or value about a patient. It can be directly observed, clinically assessed or a previously inferred value that has been recorded. Preserve its source and time.

### Assessment

A clinical evaluation of the patient's state, potentially using observations and computational support. It is distinct from an automatically calculated value and from the decision about which care to propose.

### Case

The patient information relevant to a guideline, including recorded and inferred features. The exact **CPGCase** profile uses EpisodeOfCare to represent enrollment; it is narrower than this conceptual meaning of case.

### Case Feature

A clinically meaningful item of patient information, such as an observation, condition, request or derived state. **CPGCaseFeatureDefinition** profiles StructureDefinition to define its representation. A patient-specific clinical resource carries its value. See [Case](approach-model.html#case).

### Compliance

Satisfaction of a stated rule or expectation. Specify whether it concerns technical conformance, a care-process indicator or another obligation. Technical conformance is not equivalent to clinically appropriate care or clinical effectiveness.

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

A defined quantitative assessment, often of a care process or outcome across a population. FHIR Measure represents its structure and expression references; MeasureReport represents evaluated results. See [derivative assets](approach-evaluation.html).

### Metric

A patient-level indicator defined for a stated purpose and time context. **CPGComputableMetric** profiles Measure; **CPGMetricReport** profiles MeasureReport. A metric can inform a summary, care review or population measure without proving care quality by itself.

### Pathway

Longitudinal grouping of guidance and expected activities. **CPGPathwayDefinition** is the PlanDefinition profile with type `clinical-protocol`; the patient-specific course of care is separate from that reusable definition.

### Plan

Qualify this term in implementation discussions. **CPGPlan** is a conceptual grouping of reusable guidance. **CPGCarePlan** is a patient-specific CarePlan profile. The request intent `plan` expresses an intention distinct from an authorized order. See [plan boundaries](approach-model.html#plan).

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
