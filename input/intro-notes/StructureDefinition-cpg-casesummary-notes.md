<div id="cpg-casesummary-usage"></div>

- `generatedFrom` can link to a generating artifact; `summaryFor` is limited to one occurrence. Both are optional. The shared summaryFor extension supports several target profiles, not only EpisodeOfCare.
- Subject and encounter, when present, reference CPGPatient and CPGEncounter; authors reference CPGPractitioner or CPGPractitionerRole. The base Composition requirements still apply.
- No section inventory enforces completeness. The implementation determines the content needed for the stated scope and retains its source/time context.

Related guidance: [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html); [case features and summaries](approach-model.html#case).
