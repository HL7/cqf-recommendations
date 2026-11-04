<div id="cpg-immunizationactivity-usage"></div>

- `kind` is fixed to `MedicationRequest`, and `profile` is fixed to [CPGImmunizationRequest](StructureDefinition-cpg-immunizationrequest.html). The `code` pattern includes `recommend-immunization` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- The target is a MedicationRequest profile, not ImmunizationRecommendation. Supply the vaccine as request medication content; an Immunization record documents the later event.

Related: [resulting request profile](StructureDefinition-cpg-immunizationrequest.html); [activity examples](examples-activities.html#recommend-an-immunization); [Activity Flow](activityflow.html).
