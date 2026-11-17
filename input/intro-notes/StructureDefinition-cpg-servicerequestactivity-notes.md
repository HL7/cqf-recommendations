<div id="cpg-servicerequestactivity-usage"></div>

- `kind` is fixed to `ServiceRequest`, and `profile` is fixed to [CPGServiceRequest](StructureDefinition-cpg-servicerequest.html). The `code` pattern includes `order-service` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- The `order-service` activity code identifies the general action. Supply the clinical service, occurrence and other patient-specific ServiceRequest content through the guideline’s values and expressions.

Related: [resulting request profile](StructureDefinition-cpg-servicerequest.html); [activity examples](examples-activities.html#order-a-service); [Activity Flow](activityflow.html).
