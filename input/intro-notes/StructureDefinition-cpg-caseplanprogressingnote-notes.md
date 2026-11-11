<div id="cpg-caseplanprogressingnote-usage"></div>

- The document type includes LOINC `11506-3`. The open section slicing adds optional, repeatable impression sections identified by LOINC `51848-0`.
- Each included impression section has exactly one entry referencing CPGClinicalImpression. The profile does not require an impression section to be present.
- Keep form presentation, case-feature calculations, recommendation logic, and metric calculations separate when assembling the note.

Related guidance: [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html); [CPGClinicalImpression](StructureDefinition-cpg-clinicalimpression.html); [patient care plan](approach-model.html#care-plan).
