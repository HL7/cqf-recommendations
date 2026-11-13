This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

The conceptual knowledge architecture for the CPG describes how the concepts from a guideline and its recommendations described in [Guideline Development](documentation-approach-04-guideline-development.html) are realized as computable knowledge assets. The CPG knowledge architecture provides the framework through which the knowledge engineering team realizes the guideline, its recommendations, and their various features through explicit formalisms and ultimately as information. The CPG conceptual knowledge architecture together with the implementation instructions and examples in the [Methodology](methodology.html) section provide the means to develop and concretize a CPG representation that can be consumed through various mechanisms in end-user workflows.

This section covers:

*   [Separations of Concerns](documentation-approach-12-01-separations-of-concerns-in-the-cpg.html)
*   [Separating and Defining Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html)
*   [Plan](documentation-approach-12-03-cpg-plan.html)
*   [Case](documentation-approach-12-04-cpg-case.html)
*   [Care Plan](documentation-approach-12-05-cpg-careplan.html)
*   [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html)
*   [Guideline, Derivative, and Related Assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html)
*   [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html)

Figure 1. The CPG Pathway Definition that contains all the CPG-specific knowledge content and assets including the [Recommendations](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation) (and [Strategies](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy)); The Case that scopes all the required data elements ([Case Features](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature)) including many of the patient-specific inferences thereon (inferred Case Features); and the Care Plan that includes the patient-specific recommendations ([Proposals](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-proposal)) and any resulting or relevant orders, prescriptions, scheduling ([Requests](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-request)) and the data elements representing the events that fulfill these requests (a subset of the Case Features)

<div class="modified-content" markdown="1">

{% include cpg-diagram.html src="cpg-model-boundaries.svg" ratio="1200 / 832" alt="The orange Plan lane includes strategies, recommendations, and a reusable workflow definition. Local implementation connects the workflow definition to the blue lane's patient care processes and records. The green Case lane holds recorded and derived patient facts." %}

</div>

### Separation of Concerns

<div class="new-content" markdown="1">

Start with three questions: What do we know about this patient? What care does the guideline recommend? How will people and systems deliver that care? The answers define the Case, Plan, and Workflow. Keeping them separate lets a clinical reviewer assess a recommendation, a terminology specialist review its inputs, and an implementer change how it is delivered without silently changing its meaning.

</div>


Separation of concerns is a design principle that gives distinct, focused attention to each aspect of a domain. In healthcare, a critical axis of separation is by kind of process:

1. **Case**: the patient's clinicopathological processes (pathophysiology and its clinical manifestations, including normal physiology)
2. **Plan**: clinical decision-making and the corresponding care process, abstracted from the specifics of a care setting
3. **Workflow**: the care delivery process by which care is carried out in a specific setting, including the clinical information systems used

The CPG knowledge architecture is designed to respect these separations. See [Separations of Concerns](documentation-approach-12-01-separations-of-concerns-in-the-cpg.html) for other axes of separation (for example, by condition, intervention, or care setting), and [Separating and Defining Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html) for the definitions and the boundary issues between them.

Figure 2. Illustrating the separation of the [Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case) (patient clinicopathophysiological processes and their manifestations and qualifications thereof), the [Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-plan) (the approach to the patient’s current, historical, and potential future state of disease and well-being including medical decision-making), and the Workflow (how the Plan is implemented either through interactions with clinical information systems or through real-world human tasks and activities).

<img src="CPG-12-01.png" alt="Separation of Concerns" class="img-responsive img-rounded center-block" width=300/>

### Plan

The Plan describes how a class of patients should be managed given a set of clinical parameters, constrained to the interventions scoped by the guideline's recommendations. It is definitional and consists of Recommendations, Strategies that coordinate related recommendations, and a [Pathway](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-pathway) that coordinates strategies and recommendations across the whole guideline. If logic describes what to do for a patient, it very likely belongs in the Plan. A Recommendation's activity is the Definition phase of the [Activity Flow](activityflow.html#purpose-and-rationale). See [Plan](documentation-approach-12-03-cpg-plan.html).

### Case

The Case is the information that describes an individual patient's current and historical state of health, disease, and risks: patient descriptors, exposures, assessments, clinical presentation and progression, diagnostic findings, diagnoses, risk and severity scores, and outcomes. These descriptors are referred to as Case Features, which may be recorded directly or inferred. See [Case](documentation-approach-12-04-cpg-case.html).

### Care Plan

The Care Plan is the Plan applied to an individual Case. It contains the patient-specific recommendations (Proposals), the Requests that correspond to them, and the [Events](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-event) that fulfill those Requests, scoped to a specific CPG. These are the patient-specific phases of the [Activity Flow](activityflow.html#purpose-and-rationale). See [Care Plan](documentation-approach-12-05-cpg-careplan.html).

### Workflow and Common Pathway

This implementation guide does not specify local workflows. Instead it uses a "common pathway" (an abstraction of high-level clinical workflow), shared information (Case Features), and the standard FHIR request, event, and task patterns to connect guideline content to clinical information systems. See [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html). See also the [Activity Flow](activityflow.html), which carries an activity from definition to event in parallel with the EHR's own order lifecycle.

### Guideline, Derivative, and Related Assets

All of the knowledge assets produced by CPG development are packaged in a guideline container asset. Because the CPG formally expresses the intent of the guideline, other assets that have historically been developed by hand from the narrative (such as metrics, measures, case summaries, and case reports) can be derived from or related to it. See [Guideline, Derivative, and Related Assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html).

### Conceptual Knowledge Architecture Index

The [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) lists each concept used in these pages, such as Recommendation, Case Feature, and Proposal. For each one it links to where the concept is defined and shows how it is represented by the profiles in this implementation guide.
