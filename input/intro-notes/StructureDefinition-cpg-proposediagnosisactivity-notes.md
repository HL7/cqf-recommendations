<div id="cpg-proposediagnosisactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGProposeDiagnosisTask](StructureDefinition-cpg-proposediagnosistask.html). The `code` pattern includes `propose-diagnosis` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Populate the resulting Task’s required diagnosis input with a Condition reference. Applying the definition produces a Task; it does not by itself confirm or record a diagnosis.

Related: [resulting request profile](StructureDefinition-cpg-proposediagnosistask.html); [activity examples](examples-activities.html#propose-a-diagnosis); [Activity Flow](activityflow.html).
