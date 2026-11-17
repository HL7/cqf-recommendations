<div id="cpg-documentmedicationactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGDocumentMedicationTask](StructureDefinition-cpg-documentmedicationtask.html). The `code` pattern includes `document-medication` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Populate the resulting Task’s required medication-request input; its optional result is a MedicationStatement describing use, not a MedicationAdministration.

Related: [resulting request profile](StructureDefinition-cpg-documentmedicationtask.html); [activity examples](examples-activities.html#document-a-medication); [Activity Flow](activityflow.html).
