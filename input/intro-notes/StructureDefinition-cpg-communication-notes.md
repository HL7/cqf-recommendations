<div id="cpg-communication-usage"></div>

- `instantiatesCanonical` identifies source guidance; `basedOn`, when used, is restricted to CPGCommunicationRequest references.

- `status` and `statusReason` describe the communication event. `sent` and `received` convey separate times; they are not request authorization states.

- `about` supplies pertinent patient information. Case-feature definition, asserted/inferred type and pertinence extensions describe how this record contributes to the guideline’s patient view.

Related: [communication request](StructureDefinition-cpg-communicationrequest.html); [case features](documentation-approach-12-04-cpg-case.html); [Activity Flow](activityflow.html).
