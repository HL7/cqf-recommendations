<div id="cpg-administermedicationactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGAdministerMedicationTask](StructureDefinition-cpg-administermedicationtask.html). The `code` pattern includes `administer-medication` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Connect the resulting Task to the relevant medication request and/or dispense through its named input slices; its optional output identifies the administration record.

Related: [resulting request profile](StructureDefinition-cpg-administermedicationtask.html); [activity examples](examples-activities.html#administer-a-medication); [Activity Flow](activityflow.html).
