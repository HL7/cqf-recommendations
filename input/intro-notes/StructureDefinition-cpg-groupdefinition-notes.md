<div id="cpg-groupdefinition-usage"></div>

- `type` is fixed to `person`, `actual` to `false`, and a name is required. Member entries are prohibited.
- The `gdf-1` FHIRPath invariant requires exactly one of a CQF expression extension or characteristics. Both present and both absent violate that expression.
- Use the selected expression language or characteristic semantics explicitly when evaluating membership; the profile does not supply an evaluation engine.

Related guidance: [CPGGroup](StructureDefinition-cpg-group.html); [criteria translation](methodology-translate.html#criteria-1); [execution and validation](documentation-approach-05-04-knowledge-execution-and-validation.html).
