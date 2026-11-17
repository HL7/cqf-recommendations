<div id="cpg-structureDefinition-questionnaire-usage"></div>

- Use an instance invocation for a known StructureDefinition, or a type-level selector supported by the service. The actual input names are `identifier`, `resource`, and `url`. The comment mentions `profile`, but no parameter with that name is declared. Servers may decline directly supplied `resource` inputs.
- With `minimalOnly` true, generation considers differential elements and required snapshot elements, including required children of required parents, while excluding fixed/pattern-constrained questions. Avoid combining it with `supportedOnly`, as the operation advises. These rules do not guarantee that every completed response will yield a profile-valid resource.
- Review the generated item definitions, types, cardinalities, terminology choices, and population/extraction expressions. Nested groups represent complex data. Preserve the source profile relationship so answers can be interpreted and extracted correctly.
- The declared result is one Questionnaire. Inspect reported errors and warnings, then validate the form's behavior with representative answers before using it in the collection workflow.

See [questionnaire generation processing](interactive-cds.html#structuredefinitionquestionnaire) and the [case-feature model](documentation-approach-12-04-cpg-case.html).
