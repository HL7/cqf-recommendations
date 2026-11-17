<div id="cpg-generatereportactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGGenerateReportTask](StructureDefinition-cpg-generatereporttask.html). The `code` pattern includes `generate-report` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- The optional `reportWith` canonical targets a computable metric, computable graph definition or case-feature definition. The resulting Task carries the selected definition and report reference.

Related: [resulting request profile](StructureDefinition-cpg-generatereporttask.html); [activity examples](examples-activities.html#generate-a-report); [Activity Flow](activityflow.html).
