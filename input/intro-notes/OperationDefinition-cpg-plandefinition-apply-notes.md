<div id="cpg-plandefinition-apply-usage"></div>

- Identify a stored definition through an instance invocation, or use the type-level `planDefinition` input or `url` with an optional `version`. Supply the subject references using the declared string parameter and provide the relevant encounter and user context.
- Choose `data` or `prefetchData` for supplied evaluation data. `useServerData` controls whether the evaluation also uses the service's data; its documented default is true. Resolve knowledge dependencies and terminology through the corresponding endpoint parameters.
- The declared return cardinality is `0..*` Bundles, with a Bundle described for each evaluated subject. A result can contain individual requests, CarePlans, or RequestGroups. When a RequestGroup preserves the action structure, its child requests use `option` intent. `mergeNestedCarePlans` concerns nested CarePlans; it does not change the Bundle return contract.
- Inspect the proposed resources and evaluation messages before committing actions. Invoking `$apply` does not persist its results or establish that care occurred.

Continue with [execution methods](approach-implementation.html#execution-methods), [interactive CDS](interactive-cds.html), and [activity flow](activityflow.html).
