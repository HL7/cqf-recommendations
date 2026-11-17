<div id="cpg-enrollmentactivity-usage"></div>

- `kind` is fixed to `Task`, and `profile` is fixed to [CPGEnrollmentTask](StructureDefinition-cpg-enrollmenttask.html). The `code` pattern includes `enrollment` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- The optional `enrollIn` canonical identifies the computable plan. `isUnenrollment` is a modifier extension; its documented absent-value behavior is enrollment, while true reverses that meaning.

Related: [resulting request profile](StructureDefinition-cpg-enrollmenttask.html); [activity examples](examples-activities.html#enroll-a-patient); [Activity Flow](activityflow.html).
