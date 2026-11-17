<div id="cpg-administermedicationtask-usage"></div>

- The `code` pattern includes `administer-medication`; inherited Task `status` and `intent` remain distinct and are not fixed to proposal by this profile.

- `input:medicationRequest` and `input:medicationDispense` are independently optional, each 0..1. Their types are `order-medication` and `dispense-medication`, and their values reference CPGMedicationRequest and CPGMedicationDispense respectively.

- `output:medicationAdministration` is 0..1, typed `administer-medication`, and references CPGMedicationAdministration. An administration event records what occurred; the Task alone does not.

Related: [activity definition](StructureDefinition-cpg-administermedicationactivity.html); [related clinical resource](StructureDefinition-cpg-medicationadministration.html); [Activity Flow](activityflow.html).
