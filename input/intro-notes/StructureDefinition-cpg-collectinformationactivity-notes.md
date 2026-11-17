<div id="cpg-collectinformationactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGQuestionnaireTask](StructureDefinition-cpg-questionnairetask.html). The `code` pattern includes `collect-information` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- The optional `collectWith` extension identifies a CPGComputableQuestionnaire. If it is omitted, the questionnaire can be resolved dynamically when constructing the Task.

Related: [resulting request profile](StructureDefinition-cpg-questionnairetask.html); [activity examples](examples-activities.html#collect-information); [Activity Flow](activityflow.html).
