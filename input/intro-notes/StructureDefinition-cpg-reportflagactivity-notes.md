<div id="cpg-reportflagactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGReportFlagTask](StructureDefinition-cpg-reportflagtask.html). The `code` pattern includes `report-flag` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Populate the resulting Task’s flag input with a CPGFlag reference. Flag relevance and Task execution status describe different things.

Related: [resulting request profile](StructureDefinition-cpg-reportflagtask.html); [activity examples](examples-activities.html#report-a-flag); [Activity Flow](activityflow.html).
