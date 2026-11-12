<div id="cpg-recordinferenceactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGRecordInferenceTask](StructureDefinition-cpg-recordinferencetask.html). The `code` pattern includes `record-inference` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Populate the resulting Task’s inference input with a CPGObservation reference. Keep the inference’s supporting data and computational meaning separate from the decision to record it.

Related: [resulting request profile](StructureDefinition-cpg-recordinferencetask.html); [activity examples](examples-activities.html#record-an-inference); [Activity Flow](activityflow.html).
