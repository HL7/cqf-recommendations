<div id="cpg-servicerequest-usage"></div>

- `instantiatesCanonical` identifies source guidance. `status` and `intent` describe the request’s lifecycle and authority; this profile does not fix intent to proposal.

- `subject` targets CPGPatient and `encounter` targets CPGEncounter. `occurrence[x]`, `asNeeded[x]` and `doNotPerform` retain timing, conditional and negative-request meaning.

- `supportingInfo` carries pertinent patient information; rationale and rating extensions qualify the recommendation. Use the result resource appropriate to the service, such as Procedure or Observation.

Related: [activity definition](StructureDefinition-cpg-servicerequestactivity.html); [procedure event](StructureDefinition-cpg-procedure.html); [observation result](StructureDefinition-cpg-observation.html); [Activity Flow](activityflow.html).
