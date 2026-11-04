Translation makes the recommendation precise enough to author and test. Begin with the [acquisition work products](documentation-approach-05-01-knowledge-acquisition.html); produce a clinically reviewed semi-structured specification before committing to a formal expression.

### Make the Decision Explicit

For each recommendation, identify eligibility/applicability, relevant observations or inferred features, exclusions, temporal relationships, missing-data behavior, and the proposed action. Separate the clinical decision from its delivery interface and from local fulfillment workflow.

<div style="clear: both;">
  <img src="cpg-method-translation.svg" alt="A source recommendation and data assumptions are resolved into a clinically reviewed specification, then expressed as FHIR and CQL artifacts." class="img-responsive center-block" width="1000"/>
</div>

| Work product | Minimum useful content for review |
| --- | --- |
| Data dictionary | Meaning, context, datatype, units, time, source, terminology and mapping qualifications |
| Decision specification | Inputs, conditions, exceptions, action and supporting facts; references to source passages |
| Workflow sketch | Actor, event, point of decision, available action, follow-up and responsibility |
| Ambiguity log | Open question, options, clinical decision-maker, approved resolution or remaining limitation |
| Example cases | Expected positive/negative, boundary, temporal and missing-data behavior with clinical rationale |
{:.grid}

### Resolve Ambiguities with the Right Reviewer

A term such as “recent” needs a source-supported clinical meaning. A missing result needs a defined response; it does not become a normal result. A code that is only a best fit needs a qualification rather than an assertion of equivalence. Clinical reviewers resolve clinical meaning; terminology and implementation specialists assess faithful representation and data availability.

WHO DAK terminology work found inexact matches and composite concepts that needed refinement. It supports explicit review of mappings, not automatic conversion of narrative labels into equivalent codes. [Pretty et al., 2023](https://doi.org/10.1136/bmjhci-2022-100691).

### Review the Handoff

Walk through the same cases using the recommendation text, data dictionary, decision description, and workflow. Resolve discrepancies before authoring, or record a bounded unresolved item and prevent unsupported use. If local practice differs from the source, record it as an adaptation with its own approval and version implications.

Continue to [knowledge representation](documentation-approach-05-03-knowledge-representation.html). The [Represent step](methodology.html#represent-step) contains the recipe and retained worked data-dictionary example.
