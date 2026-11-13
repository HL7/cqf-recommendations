<div id="cpg-enrollmenttask-usage"></div>

- The `code` pattern and named input/output types use `enrollment`. The optional `isUnenrollment` modifier distinguishes an unenrollment action.

- `input:pathway` is required once and carries a canonical targeting CPGComputablePlanDefinition, rather than a patient-specific CarePlan reference.

- `output:case` is optional 0..1 and references CPGCase. Check the episode’s own enrollment association and status; a Task result is not a QuestionnaireResponse.

Related: [activity definition](StructureDefinition-cpg-enrollmentactivity.html); [related clinical resource](StructureDefinition-cpg-case.html); [Activity Flow](activityflow.html).
