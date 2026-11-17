<div id="cpg-observation-usage"></div>

- `code`, `subject`, `encounter` and the inherited result/effective-time fields describe the observation. `basedOn` can connect it to a request.

- Use the case-feature definition, type and pertinence extensions to distinguish the guideline feature and its asserted or inferred origin. Pertinent-information extensions can carry supporting context.

- `status` follows Observation’s vocabulary; a final result is not a generic “activity completed” state. Keep the source and timing of inferred results interpretable.

Related: [record-inference Task](StructureDefinition-cpg-recordinferencetask.html); [case features](documentation-approach-12-04-cpg-case.html); [Interactive CDS](interactive-cds.html).
