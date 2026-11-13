This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

Separation of concerns is a design principle that creates a distinct and focused attention on each aspect of the domain or topic. This means that, from each aspect's point of view, the other aspect(s) are irrelevant; but it does not mean that the other aspects are ignored. It is “being one- and multiple-track minded simultaneously.” ([Dijkstra, 1982](documentation-approach-cds-implementation-evidence.html#ref-dijkstra-1982)).  This concept has been used to address efficient and effective approaches in software engineering, particularly as they pertain to developing larger, more complex information systems. (ref)  The most common application of this principle is to a three-tiered architecture (i.e. data, logic, UI) and corresponds to the tiers of functionality discussed earlier.

<details open>

<summary>

Figure 1. Illustrating the separation of the Case (patient clinicopathophysiological processes and their manifestations and qualifications thereof), the Plan (the approach to the patient’s current, historical, and potential future state of disease and well-being including medical decision-making), and the Workflow (how the Plan is implemented either through interactions with clinical information systems or through real-world human tasks and activities.

</summary>

<img src="CPG-12-01.png" alt="Separation of concerns" class="img-responsive img-rounded center-block"/>

</details>

In medicine, a very similar principal led Dr. Larry Weed to describe the problem-oriented approach to the medical record and reasoning about patients’ concerns, including the well-known and commonly used approach to the SOAP note (Subjective, Objective, Assessment, and Plan) ([Jaroudi and Payne, 2019](documentation-approach-cds-implementation-evidence.html#ref-jaroudi-2019)). Dr. Weed proposed that physicians were essentially scientists, except that as many scientist pursue a singular (or few) hypotheses throughout there careers, a physician must formulate and assess/test hypotheses for a given patient and often throughout the day and therefore must break each issue down into a concern or problem.  Problem-orientedness and the SOAP note have further been shown to be an effective cognitive framework for assessing and addressing patient concerns ([Wright et al., 2014](documentation-approach-cds-implementation-evidence.html#ref-wright-2014)).  Interestingly, Dr. Weed’s problem-oriented approach and SOAP note do play into the CPG knowledge architecture, though not exclusively.  In healthcare activities, there are at least several related but orthogonal axes on which to separate concerns.

One major axis of separation is by each disease or condition, intervention (e.g., procedure, therapy), and/or diagnostic (e.g., imaging, tests), though these concerns often intersect or interact significantly. Similarly, care setting (e.g., ambulatory, home, inpatient, ED, ICU) and generalized type of care activity (e.g., surveillance, prevention, diagnostic workup, treatment planning, disease and therapeutic response surveillance, recovery/convalescence, survivorship) can be conceptualized further as  separations of concerns.  Many of these separations are addressed through the scoping exercise of the guideline development group and a given guideline intentionally focuses on a singular topic or area of concern. This separation of concerns may be addressed by entirely distinct CPG’s or by [Strategies](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy) within individual CPG’s.  Relationships or interactions between separate CPG’s (or Strategies) may be addressed at the level of each separation (e.g., Plan-to-Plan, Case-to-Case) across CPG’s or by explicitly referencing features within a given separation of one CPG and following the same patterns of interactions between separations.  The latter should be done explicitly (e.g., by referencing and including the requisite [Case Features](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature) within all CPG’s whose [Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-plan)’s need to reason over them).

Another major axis of separation is by kind of process, including: 1) patient clinicopathological (i.e., pathophysiological and correlated clinical manifestations) processes, inclusive of normal physiology ([Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case)); 2) clinical decision-making and corresponding care processes as abstract from specific care settings (Plan); and 3) care delivery process or clinical workflow by which the care processes are carried out in the context of a specific care setting where multiple patients and healthcare professionals undergo, situational activities, which may be inclusive of clinical information system or EHRs.  The CPG-IG knowledge architecture is designed to respect the separation of these concerns as discussed below.

A third major axis of separation of importance to the CPG implementation guide is significantly related to the clinical workflow separation mentioned above, which itself may be separated into the real-world care delivery activities, those activities that are carried out in the context of clinical information systems (e.g., EHRs), and the means of interacting and relating to the Case and Plan.  This separation is covered in further detail in the section on [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html) in this implementation guide.

---

<div class="new-content" markdown="1">

The [congestive heart failure (CHF) example](examples-chf.html) illustrates the model with a pathway and a patient case. In [problem-oriented clinical documentation](documentation-approach-cds-implementation-evidence.html#ref-weed-1968), separating assessment from plan serves a similar purpose.

#### Scope Guidance across Clinical Concerns {#scope-and-shared-features}

A guideline can be scoped by condition, intervention, care setting, or activity such as prevention or follow-up. A strategy can group recommendations that address one concern within that scope. Where two guidelines or strategies need the same clinical fact, identify the Case Feature definition in each consumer's data requirements and check that its meaning, time window, and source fit both uses. When guidance in one scope depends on care proposed or delivered in another, identify the request or event each rule uses and which team reconciles competing plans.

</div>
