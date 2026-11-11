<div id="cpg-casefeaturedefinition-usage"></div>

- `kind` is fixed to `resource`, `abstract` to `false`, and `derivation` to `constraint`. This is a resource constraint profile, not an unconstrained logical model.
- Optional assertion, inference, and combined feature expressions describe computational semantics; `caseFeatureOf` can associate the definition with guideline elements.
- Patient instances retain their own resource type, clinical time, and provenance. A feature definition alone does not supply a patient value.

Related guidance: [Case features](approach-model.html#case); [translation](methodology-translate.html#profiles).
