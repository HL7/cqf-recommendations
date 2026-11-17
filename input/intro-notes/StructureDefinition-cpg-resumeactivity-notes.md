<div id="cpg-resumeactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGResumeTask](StructureDefinition-cpg-resumetask.html). The `code` pattern includes `resume-activity` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- Construct the resulting Task’s required `focus` reference to the paused activity. Resume behavior uses that target’s actual status vocabulary; the proposal is not itself a resumption event.

Related: [resulting request profile](StructureDefinition-cpg-resumetask.html); [activity examples](examples-activities.html#resume-a-medication-order); [Activity Flow](activityflow.html).
