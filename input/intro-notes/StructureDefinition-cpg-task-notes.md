<div id="cpg-task-usage"></div>

- `instantiatesCanonical` links to the originating definition; `basedOn` can relate this work to a prior request. The extensible `code` binding identifies CPG activity types without making code mandatory.

- `for`, when present, targets CPGPatient; `encounter`, when present, targets CPGEncounter. Rationale, rating and pertinent-information extensions carry the recommendation’s context.

- The do-not-perform indicator is a modifier extension, not a native Task boolean field. `status`, `statusReason`, `intent` and `output` support tracking; this profile does not fix intent to proposal.

Related: [activity profiles](profiles.html#activity-profiles); [Activity Flow](activityflow.html); [FHIR R4 Task](https://hl7.org/fhir/R4/task.html).
