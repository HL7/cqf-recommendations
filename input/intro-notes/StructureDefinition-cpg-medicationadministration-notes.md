<div id="cpg-medicationadministration-usage"></div>

- `request` links to the medication request being fulfilled. `instantiates` carries source-definition URIs; it is not a native `instantiatesCanonical` field on this resource.

- `status` and `statusReason` describe administration. R4 has no preparation code for MedicationAdministration; use the actual event vocabulary.

- `medication[x]`, `subject`, `context` and `supportingInformation` describe the clinical event. Case-feature extensions preserve its role and pertinence in the patient view.

Related: [administration Task](StructureDefinition-cpg-administermedicationtask.html); [medication request](StructureDefinition-cpg-medicationrequest.html); [Activity Flow](activityflow.html).
