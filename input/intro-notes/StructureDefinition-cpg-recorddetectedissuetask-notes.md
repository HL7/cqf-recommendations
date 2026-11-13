<div id="cpg-recorddetectedissuetask-usage"></div>

- The `code` pattern includes `record-detected-issue`. Task status concerns the work and does not replace DetectedIssue status.

- `input:detectedIssue` is required once, typed `record-detected-issue`, and references CPGDetectedIssue.

- This profile adds no issue-specific output slice. The referenced issue and relevant supporting information can be reviewed separately before recording or acting on it.

Related: [activity definition](StructureDefinition-cpg-recorddetectedissueactivity.html); [related clinical resource](StructureDefinition-cpg-detectedissue.html); [Activity Flow](activityflow.html).
