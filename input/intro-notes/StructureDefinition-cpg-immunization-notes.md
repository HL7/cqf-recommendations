<div id="cpg-immunization-usage"></div>

- The named `basedOn` extension provides the request relationship; R4 Immunization has no native basedOn field. The recommendation/request uses CPGImmunizationRequest, a MedicationRequest profile.

- `status` uses `completed`, `not-done` or `entered-in-error`; `statusReason` qualifies the event rather than Task progress.

- `reasonCode`, `reasonReference` and pertinent-information extensions support interpretation. Case-feature definition, type and pertinence retain the record’s role in the guideline.

Related: [immunization request](StructureDefinition-cpg-immunizationrequest.html); [activity definition](StructureDefinition-cpg-immunizationactivity.html); [Activity Flow](activityflow.html).
