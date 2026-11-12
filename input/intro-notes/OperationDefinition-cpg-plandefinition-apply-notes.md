<div id="cpg-plandefinition-apply-usage"></div>

- Identify a stored definition through an instance invocation, or use the type-level `planDefinition` input or `url` with an optional `version`. Supply the subject references using the declared string parameter and provide the relevant encounter and user context.
- Choose `data` or `prefetchData` for supplied evaluation data. `useServerData` controls whether the evaluation also uses the service's data. The operation defines `dataEndpoint` for remote patient data and `artifactEndpointConfiguration` for locating knowledge artifacts.
- The declared return cardinality is `0..*` Bundles, with a Bundle described for each evaluated subject. A result can contain individual requests, CarePlans, or RequestGroups. When a RequestGroup preserves the action structure, its child requests use `option` intent.
- For grouped actions, evaluate child applicability according to `cqf-applicabilityBehavior` and inspect the applicable children and copied behavior on any returned RequestGroup action. See the [processing rules](documentation-approach-09-methods-of-implementation.html#plandefinition-processing-semantics).
- Inspect the proposed resources and evaluation messages before committing actions. Invoking `$apply` does not persist its results or establish that care occurred.

Continue with [execution methods](documentation-approach-09-methods-of-implementation.html), [interactive CDS](interactive-cds.html), and [activity flow](activityflow.html).
