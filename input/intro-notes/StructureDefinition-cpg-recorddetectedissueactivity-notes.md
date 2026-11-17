<div id="cpg-recorddetectedissueactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGRecordDetectedIssueTask](StructureDefinition-cpg-recorddetectedissuetask.html). The `code` pattern includes `record-detected-issue` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Populate the resulting Task’s detected-issue input with a CPGDetectedIssue reference. The definition and Task are distinct from the issue record and its assessment status.

Related: [resulting request profile](StructureDefinition-cpg-recorddetectedissuetask.html); [activity examples](examples-activities.html#record-a-detected-issue); [Activity Flow](activityflow.html).
