<div id="cpg-reportflagtask-usage"></div>

- The `code` pattern includes `report-flag`. `input:flag` is required once, typed `report-flag`, and references CPGFlag.

- No flag-specific output slice is added. Use the referenced Flag and the inherited Task links to distinguish the clinical information from the work performed.

- An active Flag expresses relevance; it does not mean a Task is in progress. Likewise, completing the Task does not itself change Flag status or document a clinical intervention.

Related: [activity definition](StructureDefinition-cpg-reportflagactivity.html); [related clinical resource](StructureDefinition-cpg-flag.html); [Activity Flow](activityflow.html).
