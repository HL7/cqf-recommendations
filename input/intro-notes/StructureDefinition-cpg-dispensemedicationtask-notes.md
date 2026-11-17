<div id="cpg-dispensemedicationtask-usage"></div>

- The `code` pattern includes `dispense-medication`. The profile inherits Task status and intent without fixing a particular phase.

- `input:medicationRequest` is required once, typed `order-medication`, with a Reference to CPGMedicationRequest. It can identify an existing request or one supplied with the recommendation.

- `output:medicationDispense` is optional 0..1, typed `dispense-medication`, and references CPGMedicationDispense. A first dispense may leave a prescription with remaining refills active.

Related: [activity definition](StructureDefinition-cpg-dispensemedicationactivity.html); [related clinical resource](StructureDefinition-cpg-medicationdispense.html); [Activity Flow](activityflow.html).
