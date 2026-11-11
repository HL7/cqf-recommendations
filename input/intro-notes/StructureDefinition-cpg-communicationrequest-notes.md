<div id="cpg-communicationrequest-usage"></div>

- The originating definition uses the `instantiatesCanonical` extension. Intent is carried by the named modifier extension; R4 CommunicationRequest has no native intent field.

- `doNotPerform` distinguishes a request not to communicate. `status` and `statusReason` describe the request, while requester, sender, recipient and encounter describe its context.

- `about` carries pertinent patient information; rationale and rating extensions qualify the recommendation. These fields support interpretation without implying the message has been sent.

Related: [activity definition](StructureDefinition-cpg-communicationactivity.html); [communication event](StructureDefinition-cpg-communication.html); [Activity Flow](activityflow.html).
