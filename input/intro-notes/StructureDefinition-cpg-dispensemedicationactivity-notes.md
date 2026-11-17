<div id="cpg-dispensemedicationactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGDispenseMedicationTask](StructureDefinition-cpg-dispensemedicationtask.html). The `code` pattern includes `dispense-medication` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Populate the resulting Task’s required medication-request input. Dispensing supplies medication; administration is a separate activity and result.

Related: [resulting request profile](StructureDefinition-cpg-dispensemedicationtask.html); [activity examples](examples-activities.html#dispense-a-medication); [Activity Flow](activityflow.html).
