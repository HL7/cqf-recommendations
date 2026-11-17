<div id="cpg-documentmedicationtask-usage"></div>

- The `code` pattern includes `document-medication`; Task status and intent follow their inherited vocabularies.

- `input:medicationRequest` is required once, typed `order-medication`, with a Reference to CPGMedicationRequest.

- `output:medicationStatement` is 0..1, typed `document-medication`, and references CPGMedicationStatement. Keep its information source and use status distinguishable from the Task’s completion.

Related: [activity definition](StructureDefinition-cpg-documentmedicationactivity.html); [related clinical resource](StructureDefinition-cpg-medicationstatement.html); [Activity Flow](activityflow.html).
