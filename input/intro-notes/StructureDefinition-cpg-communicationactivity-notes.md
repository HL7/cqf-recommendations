<div id="cpg-communicationactivity-usage"></div>

- `kind` is fixed to `CommunicationRequest`, and `profile` is fixed to [CPGCommunicationRequest](StructureDefinition-cpg-communicationrequest.html). The `code` pattern includes `send-message` when code is present.

- `intent` is fixed to `proposal`. `doNotPerform` is required but has no fixed boolean value; distinguish recommending the activity from recommending that it not be performed.

- The `send-message` code identifies the activity type. The guideline supplies the message, recipient and other patient-specific CommunicationRequest content.

Related: [resulting request profile](StructureDefinition-cpg-communicationrequest.html); [activity examples](examples-activities.html#send-a-message); [Activity Flow](activityflow.html).
