<div id="cpg-medicationrequestactivity-usage"></div>

- `kind` is fixed to `MedicationRequest`, and `profile` is fixed to [CPGMedicationRequest](StructureDefinition-cpg-medicationrequest.html). The `code` pattern includes `order-medication` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- The `order-medication` activity code is not the medication identity. Supply medication, dosage and other request content through the guideline’s activity values and dynamic expressions.

Related: [resulting request profile](StructureDefinition-cpg-medicationrequest.html); [activity examples](examples-activities.html#order-a-medication); [Activity Flow](activityflow.html).
