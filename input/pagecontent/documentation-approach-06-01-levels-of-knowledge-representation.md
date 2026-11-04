### Approach

Use knowledge levels to describe the representation you are producing and the handoff it supports. The categories form a continuum: a narrative guideline can include structured tables, and a development team can revise several levels together. They are not certification grades or a requirement to finish one level before beginning another.

<div style="clear: both;">
  <img src="cpg-model-levels.svg" alt="L1 narrative and L2 explicit models inform L3 computable artifacts, which are adapted and validated as L4 local implementations" class="img-responsive" width="1000"/>
</div>

*Four representation levels, illustrated for this guide. The terminology follows the multi-layer approach of [Boxwala et al.](https://doi.org/10.1136/amiajnl-2011-000334); this is an original diagram, not a reproduction of the paper's figure. Review and feedback can revise any level.*

### Narrative

**L1** communicates the clinical [recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation) to people: purpose, population, interventions, exclusions, [evidence](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-evidence), recommendation strength, timing and setting. It can include prose, tables, figures, case examples and policy considerations. Its main review question is whether the clinical intent and evidence are clear.

Before translation, identify the authoritative source, version/date, recommendation citation and responsible clinical reviewers. Preserve uncertainty or conditional wording rather than strengthening a recommendation while making it computable.

### Semi-structured

**L2** makes the interpretation explicit for both clinical and technical reviewers. Typical products include a data dictionary, concept map, decision table, process diagram, user stories, personas, triggers and worked cases. They explain what the guideline means without requiring reviewers to read executable code.

Use L2 review to resolve ambiguity: which observation is current, what counts as an exclusion, when a rule runs and what activity it proposes. Record the decision and its owner. An attractive flowchart alone is not a complete or validated specification.

### Structured

**L3** is the computable, shareable representation that is this guide's main focus. It can include [case-feature](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature) profiles, terminology, Libraries, [recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation)/[strategy](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy)/[pathway](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-pathway) definitions, activity definitions and Questionnaires. Exact contents depend on the intended capabilities.

At this level, define data and logic contracts independently of a particular EHR interface. Validate artifact conformance and compare logic results with clinically reviewed examples. “Computable” does not mean every consumer can execute every artifact unchanged.

### Executable

**L4** is the local executable implementation. It includes the chosen engine or translation, local data and terminology mappings, workflow triggers, permissions, user interfaces and operational controls. The implementation may interpret L3 artifacts natively, translate them or use them as a specification; see [methods of implementation](documentation-approach-09-methods-of-implementation.html).

Test that the local implementation preserves intended meaning, not only that artifacts load. Deployment readiness includes data availability, clinical-reference cases, workflow review and monitoring. A local adaptation that changes clinical meaning needs review and traceability to the source.

### Use the levels without conflating other axes

[Data/Logic/Forms tiers](documentation-approach-07-tiers-of-functionality.html) describe responsibilities at each level. [Artifact capability profiles](profiles.html#artifact-profiles) such as Shareable or Executable describe artifact expectations; an executable-format artifact is not itself a deployed L4 clinical system. [Enablement options](documentation-approach-03-conformance-levels.html) describe delivered capabilities.

The [levels-by-tiers matrix](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html) gives one practical example across both axes. WHO's [SMART Guidelines approach](https://doi.org/10.1016/S2589-7500(21)00038-8) similarly describes layers and adaptation; WHO SMART Guidelines are distinct from SMART App Launch.
