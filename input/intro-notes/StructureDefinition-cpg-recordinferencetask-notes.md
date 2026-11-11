<div id="cpg-recordinferencetask-usage"></div>

- The `code` pattern includes `record-inference`. `input:inference` is required once, typed `record-inference`, with a Reference to CPGObservation.

- The profile adds no inference-specific output slice. Observation status and case-feature metadata describe the result independently of Task status.

- Recording an inference does not turn it into a directly observed measurement. Keep the source data, effective time and relevant computational provenance interpretable.

Related: [activity definition](StructureDefinition-cpg-recordinferenceactivity.html); [related clinical resource](StructureDefinition-cpg-observation.html); [Activity Flow](activityflow.html).
