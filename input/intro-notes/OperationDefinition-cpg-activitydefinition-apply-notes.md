<div id="cpg-activitydefinition-apply-usage"></div>

- For a stored definition, use the instance-level operation. For type-level invocation, confirm the supported selection form: `url` and `version` are documented as alternatives to `activityDefinition`, while the latter's description also calls it required at type level. The artifact retains that inconsistency; agree the service behavior rather than sending competing selectors.
- Supply subject references using the string parameter. Multiple subjects of the same type have implementation-defined behavior. The published output is one `Resource` with cardinality `1..1`; its concrete type follows the ActivityDefinition. CPG PlanDefinition `$apply` instead returns Bundles.
- Dynamic values are evaluated in their listed order. Referenced libraries supply expressions, and parameters bind by name. Choose `data` or `prefetchData`, then configure server-data use, data access, artifact resolution, and terminology as needed.
- Validate the returned resource against its intended profile and pass it to the receiving workflow for review and authorization. Evaluation does not perform or document the clinical activity.

See [activity flow](activityflow.html) and the [activity examples](examples-activities.html) for the transition from definition to request and event.
