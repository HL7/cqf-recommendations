<div id="cpg-medicationrequest-usage"></div>

- `status` and `intent` retain MedicationRequest semantics; this profile does not fix intent to proposal. `doNotPerform` distinguishes a negative request.

- `medication[x]` carries the medication. `subject` targets CPGPatient and `encounter` targets CPGEncounter; supportingInformation supplies pertinent patient context.

- `instantiatesCanonical` identifies the originating definition; rationale and rating extensions qualify the recommendation. A valid request does not establish that a dose was supplied or taken.

Related: [activity definition](StructureDefinition-cpg-medicationrequestactivity.html); [administration record](StructureDefinition-cpg-medicationadministration.html); [Activity Flow](activityflow.html).
