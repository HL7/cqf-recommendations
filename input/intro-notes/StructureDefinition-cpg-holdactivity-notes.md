<div id="cpg-holdactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGHoldTask](StructureDefinition-cpg-holdtask.html). The `code` pattern includes `hold-activity` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Construct the resulting Task’s required `focus` reference to the activity being held. The proposal does not itself change that target’s state; use its resource-specific lifecycle.

Related: [resulting request profile](StructureDefinition-cpg-holdtask.html); [activity examples](examples-activities.html#hold-a-medication-order); [Activity Flow](activityflow.html).
