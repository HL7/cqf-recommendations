<div id="cpg-caseplansummary-usage"></div>

- `generatedFrom` can identify a generating definition, and repeatable `summaryFor` references can identify the summarized context. Both extensions remain optional.
- Subject and encounter, when present, reference CPGPatient and CPGEncounter; authors reference CPGPractitioner or CPGPractitionerRole. Base Composition status, type, date, author, and title requirements apply.
- The profile does not prescribe a section layout or calculate applicability. The generating implementation supplies those contents and their clinical interpretation.

Related guidance: [CPGCasePlanSummaryDefinition](StructureDefinition-cpg-caseplansummarydefinition.html); [CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html); [care plans](documentation-approach-12-05-cpg-careplan.html).
