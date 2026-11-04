Acquire the meaning needed to implement a scoped clinical decision. Start with an identified guideline/source version and access to appropriate clinical expertise. End with a source inventory, candidate concepts and decisions, representative cases, and an explicit list of unresolved questions.

### Knowledge Elicitation

Ask clinical experts to explain the recommendation's population, timing, action, exceptions, rationale, and relevant workflow. Use patient stories or concrete cases to uncover assumptions that are absent from the text. Distinguish what the source states from an expert interpretation and from a proposed local adaptation.

### Knowledge Authoring

When developing new guidance, capture these details while the guideline group is drafting it. Knowledge engineers make the implications explicit; the clinical group approves the clinical meaning. Do not create a definitive rule from an unresolved statement merely to complete an artifact.

### Knowledge Synthesis

Use the evidence reviewers' approved synthesis and rationale. Preserve source citations, versions, rating methods, and known gaps. Selecting or appraising clinical evidence follows the [guideline-development methods](documentation-approach-04-02-guideline-development-frameworks.html), not the syntax of the target expression language.

### Knowledge Discovery

Observational data and analytic findings can identify questions, data-quality issues, or candidate knowledge. A discovered association is not automatically a clinical recommendation. Its clinical validity and use need appropriate review before it becomes normative content or affects care.

### Hybrid Approaches

A project can combine published guidance, interviews, existing computable artifacts, and local data investigation. Record each source's role and the approval required for its use; do not obscure conflicting or differently dated sources behind a single derived statement.

### In Collaboration with the Guideline Development Group

| Acquire | Record for the handoff |
| --- | --- |
| Source recommendation | Citation, exact version, relevant passage, scope, and steward |
| Clinical meaning | Population, exclusions, timing, intended action, exceptions, supporting rationale |
| Clinical concepts | Definitions, candidate data elements, units/time, meaningful negatives and unknowns |
| Cases | Example inputs, expected decision, and clinical reason for that result |
| Ambiguities | Question, source conflict, responsible reviewer, decision or unresolved status |
{:.grid}

<div style="clear: both;">
  <img src="cpg-method-translation.svg" alt="Clinical meaning and data assumptions become a reviewed explicit specification before FHIR/CQL authoring." class="img-responsive center-block" width="1000"/>
</div>

### In Collaboration with Knowledge Implementers

Check early whether representative sites can obtain the required data and support the intended action and workflow. Keep source meaning separate from local mappings and capability constraints. WHO terminology-alignment experience shows that formal coding can expose ambiguities requiring clinical review. [Pretty et al., 2023](https://doi.org/10.1136/bmjhci-2022-100691).

The handoff is ready for [knowledge translation](documentation-approach-05-02-knowledge-translation.html) when the source and cases are traceable and unresolved clinical decisions have named owners. Remaining questions can be carried forward explicitly; they do not become invisible defaults.
