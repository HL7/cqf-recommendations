<div id="cpg-immunizationrequest-usage"></div>

- `status` and `intent` retain MedicationRequest semantics; this profile does not fix intent to proposal. `doNotPerform` distinguishes a negative request.

- The required `category:immunization` slice constrains its optional `coding` to the `recommend-immunization` pattern. `medication[x]` identifies the vaccine; the category code is not the vaccine identity.

- `subject` targets CPGPatient and `encounter` targets CPGEncounter. `supportingInformation`, rationale and rating qualify the recommendation; `instantiatesCanonical` identifies its definition.

Related: [activity definition](StructureDefinition-cpg-immunizationactivity.html); [administration record](StructureDefinition-cpg-immunization.html); [Activity Flow](activityflow.html).
