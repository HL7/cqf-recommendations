<div id="cpg-computableplandefinition-usage"></div>

- `type` and at least one `action` are required; `library` is limited to one reference. Child profiles further restrict action structure and definition targets.
- `enabled` distinguishes known content from actively enabled content. Its documentation says to implement the artifact’s behavior only when `enabled` is present and true. `partOf` follows containing pathway/strategy references recursively for enrollment checks.
- Action-level extensions support recommendation ratings; their cardinalities remain separate from the methodology requirements for authored content.
- Participants can identify roles using the preferred common-persona binding. A PlanDefinition reference or action does not by itself perform clinical work.

Related guidance: [Plan hierarchy](approach-model.html#plan); [supporting information](methodology-select.html#guideline-supporting-information); [processing semantics](approach-implementation.html#execution-methods).
