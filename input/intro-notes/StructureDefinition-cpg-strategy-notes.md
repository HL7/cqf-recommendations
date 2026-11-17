<div id="cpg-strategy-usage"></div>

- Exactly one `instantiatesCanonical` references CPGStrategyDefinition, and a subject is required. The subject target is base Patient, not an additional restriction to CPGPatient.
- Each action requires title, description, and one `code` element with an extensible common-process binding. That CodeableConcept can contain multiple codings. Selection behavior and related actions are supported; type, grouping, required, precheck, and cardinality behavior fields are prohibited.
- Requests referenced by `action.resource` use `intent=option` under the inherited RequestGroup contract; the group governs their overall intent. The receiving workflow handles selection, acceptance, and authorization.

Related guidance: [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html); [CPGCarePlan](StructureDefinition-cpg-careplan.html); [activity flow](activityflow.html).
