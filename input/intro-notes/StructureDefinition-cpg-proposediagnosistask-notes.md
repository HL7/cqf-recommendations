<div id="cpg-proposediagnosistask-usage"></div>

- The `code` pattern includes `propose-diagnosis`; inherited Task status and intent are not fixed to a single workflow phase.

- `input:diagnosis` is required once, typed `propose-diagnosis`, with a Reference to base Condition. The target constraint does not require the narrower CPGCondition profile.

- No diagnosis-specific output slice is introduced here. Preserve the input Condition’s clinical/verification meaning and the applicable review decision rather than inferring confirmation from Task completion.

Related: [activity definition](StructureDefinition-cpg-proposediagnosisactivity.html); [related clinical resource](StructureDefinition-cpg-condition.html); [Activity Flow](activityflow.html).
