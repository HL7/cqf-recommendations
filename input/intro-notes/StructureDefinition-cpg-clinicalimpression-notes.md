<div id="cpg-clinicalimpression-usage"></div>

- The subject references CPGPatient; encounter and assessor, when included, reference CPGEncounter and CPGPractitioner or CPGPractitionerRole.
- `impressionFor` provides an optional link to the case context. Effective time, date, protocol, code, and description are supported for describing the assessment.
- A progress note can reference this assessment through its impression section without turning the assessment into an order.

Related guidance: [CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html); [clinician assessments](approach-model.html#case-features).
