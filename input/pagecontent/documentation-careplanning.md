Evidence-based care planning connects guideline recommendations to an individual's concerns, goals, preferences, and circumstances. Use [CPGCarePlan](StructureDefinition-cpg-careplan.html) for the patient-specific plan, and the [conceptual care-plan topic](documentation-approach-12-05-cpg-careplan.html) to understand its relationship to reusable definitions and recorded care.

### Connect concerns, goals, interventions, and outcomes

| Building block | Implementation question | FHIR connection |
| --- | --- | --- |
| Health concern | What problem, risk, or concern is the care team addressing? | Relevant clinical resources and the concerns addressed by the CarePlan |
| Goal | What outcome matters to the patient and care team, and how will progress be assessed? | [CPGGoal](StructureDefinition-cpg-goal.html) and CarePlan goal references |
| Intervention | What activity is proposed, agreed, authorized, or underway? | The request resources associated with the plan and their fulfillment events |
| Outcome | What was observed, and how does it relate to the goal? | Clinical observations, goal assessment, and relevant summaries or reports |
{:.grid}

These are the four building blocks used in the HL7 care-planning approach. They help keep the clinical reason for an action visible throughout planning and delivery. The [FHIR R4 CarePlan](https://hl7.org/fhir/R4/careplan.html), [Goal](https://hl7.org/fhir/R4/goal.html), and [CareTeam](https://hl7.org/fhir/R4/careteam.html) resources provide the underlying structures.

### Using Goals

Document the desired outcome, any target or milestone, and whose goal it is. Guideline targets inform the discussion; patient priorities and constraints affect the agreed plan. Retain the information needed to interpret progress over time rather than treating the presence of a goal as evidence it was achieved.

### Using Recommendations

Evaluate a recommendation in the patient's context and present the relevant supporting information. Selection, clinical authorization, and fulfillment are separate steps. A proposal to perform an activity and a proposal not to perform it both need a clear interpretation in the receiving workflow. See [activity flow](activityflow.html).

### Using Order Sets

An order set groups potential orders for a defined clinical situation. The receiving workflow determines which items are appropriate, selected, and authorized. Keep optional items and grouping behavior visible. An order set's existence or conformance does not establish its clinical effect; that depends on the content and implementation being evaluated.

### Review the local workflow

Identify who reviews goals, who can authorize activities, and who responds to new results or changes between encounters. Patient-centered CDS research highlights these responsibilities beyond the point of a single alert or visit ([Sittig et al., 2024](https://pmc.ncbi.nlm.nih.gov/articles/PMC11258405/)). Continue with the [CHF example](examples-chf.html) for the relationship between definitions, case features, and a patient-specific plan.
