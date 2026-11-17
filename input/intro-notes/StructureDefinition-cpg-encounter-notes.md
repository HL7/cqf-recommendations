<div id="cpg-encounter-usage"></div>

- At least one encounter type is required. Subject, when present, references CPGPatient; episode-of-care references are restricted to CPGCase.
- Participant individuals reference CPGPractitioner or CPGPractitionerRole, and encounter locations reference CPGLocation.
- Status, class, period, participant roles, and reasons retain their Encounter meanings; an encounter does not replace the statuses of requests and events occurring within it.

Related guidance: [CPGCase](StructureDefinition-cpg-case.html); [CPGLocation](StructureDefinition-cpg-location.html); [common care pathway](common-care-pathway.html).
