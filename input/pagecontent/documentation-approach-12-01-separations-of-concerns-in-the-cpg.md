Separate the clinical meaning of a guideline from the software and [Workflow](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-workflow) used to deliver it. This makes review more precise: a clinician can review a [Recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation), a terminology specialist can review a mapping, and an implementor can review a trigger without silently changing the other two.

### Separate the questions

| Concern | Example question | Keep separate from |
|---|---|---|
| Patient description | What is the patient's most recent documented weight? | Whether a treatment should change |
| Clinical inference | What change in weight follows from the selected measurements? | How a question is displayed |
| Clinical decision | Given the relevant state, should an activity be proposed? | Local order-entry permissions |
| Forms | Which information should the user enter or confirm next? | The clinical definition of the derived feature |
| Workflow | Who reviews the proposal, and when can it become an order? | The recommendation's evidence and strength |

The first three concerns distinguish patient descriptive logic in the [Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case) from decision logic in the [Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-plan). The [Data/Logic/Forms tiers](documentation-approach-07-tiers-of-functionality.html) separate implementation responsibilities. They overlap in use but answer different design questions.

### Keep the links explicit

A guideline can refer to a named patient feature without reproducing its calculation in every recommendation. A form can call that calculation without defining a competing clinical rule. A local workflow can display or route the result while preserving the originating recommendation and its supporting information.

For each link, record what is passed and what the receiver may infer. An order is evidence of an intention; it is not proof of an administration. An inferred result is not a clinician's assessment unless that assessment is separately documented. These boundaries are developed in [Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html).

### Apply the separation during review

1. Trace a recommendation back to its clinical source and intended population.
2. Identify the data and descriptive inferences used by its applicability logic.
3. Identify the activity proposed when the condition is met.
4. Identify the local actor, trigger, interaction and authorization needed to carry it out.
5. Test each boundary as well as the complete interaction.

A change to a questionnaire label may be editorial. A change to a feature's definition, time window or terminology can change clinical meaning and requires corresponding clinical review. The [knowledge engineering process](documentation-approach-05-knowledge-engineering-overview.html) provides the iterative setting for those decisions.

### Context

Dijkstra described separation of concerns as examining one aspect of a problem at a time.[<sup>3</sup>](#3) In a guideline, those aspects can include a condition, intervention or care setting as well as Case, Plan and Workflow.

The separation echoes the distinction between assessment and plan in problem-oriented clinical documentation. That analogy is useful for explanation; it does not mean every guideline artifact is a SOAP note or that a note supplies executable workflow.[<sup>1</sup>](#1)

Local workflow also includes work outside the EHR, including patients, caregivers and between-visit review. [Sittig et al.](https://doi.org/10.1093/jamia/ocae138) use workflow models to identify such responsibilities; their study is modeling evidence rather than a demonstration of improved clinical outcomes.[<sup>2</sup>](#2)

<a id="1"></a>1. Weed LL. Medical records that guide and teach. *N Engl J Med.* 1968;278:593–600. [doi:10.1056/NEJM196803142781105](https://doi.org/10.1056/NEJM196803142781105).

<a id="2"></a>2. Sittig DF, Boxwala A, Wright A, et al. Patient-centered clinical decision support challenges and opportunities identified from workflow execution models. *J Am Med Inform Assoc.* 2024;31:1682–1692. [doi:10.1093/jamia/ocae138](https://doi.org/10.1093/jamia/ocae138).

<a id="3"></a>3. Dijkstra EW. On the role of scientific thought. In: *Selected Writings on Computing: A Personal Perspective*. Springer-Verlag, 1982. pp. 60–66.
