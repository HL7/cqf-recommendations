<div id="cpg-stopactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGStopTask](StructureDefinition-cpg-stoptask.html). The `code` pattern includes `stop-activity` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Construct the resulting Task’s required `focus` reference to the activity being stopped. Accepting or completing a stop Task is distinct from updating the focused request or event.

Related: [resulting request profile](StructureDefinition-cpg-stoptask.html); [activity examples](examples-activities.html#stop-a-medication-order); [Activity Flow](activityflow.html).
