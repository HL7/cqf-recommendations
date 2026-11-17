<div id="cpg-generatereporttask-usage"></div>

- The `code` pattern and input/output types use `generate-report`. `input:definition` is required once and carries a canonical targeting CPGComputableMetric, CPGComputableGraphDefinition or CPGCaseFeatureDefinition.

- `output:report` is optional 0..1 and holds a Reference without a narrowed target type. The profile’s guidance pairs Measure with MeasureReport, GraphDefinition with Composition, and StructureDefinition with an instance of the profiled resource type.

- Keep Task status separate from report status and content validity. A generated report can still need validation or review before use or disclosure.

Related: [activity definition](StructureDefinition-cpg-generatereportactivity.html); [related clinical resource](StructureDefinition-cpg-metricreport.html); [Activity Flow](activityflow.html).
