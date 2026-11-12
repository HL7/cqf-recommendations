<div id="cpg-plandefinition-apply-usage"></div>

- Identify a stored definition through an instance invocation, or use the type-level `planDefinition` input or `url` with an optional `version`. Supply the subject references using the declared string parameter and provide the relevant encounter and user context.
- Choose `data` or `prefetchData` for supplied evaluation data. Evaluation looks first at supplied data, then at server data if `useServerData` is true (the default), then at `dataEndpoint` when supplied. The `parameters` input supplies named Library parameters, and `artifactEndpointConfiguration` can configure canonical artifact resolution.
- In STU3, this operation drops the `mergeNestedCarePlans` and `terminologyEndpoint` parameters. See the [STU3 change log](changes.html#non-compatible-changes).
- The declared return cardinality is `0..*` Bundles, with a Bundle described for each evaluated subject. A result can contain individual requests, CarePlans, or RequestGroups. When a RequestGroup preserves the action structure, its child requests use `option` intent.
- For grouped actions, evaluate child applicability according to `cqf-applicabilityBehavior` and inspect the applicable children and copied behavior on any returned RequestGroup action. See the [processing rules](documentation-approach-09-methods-of-implementation.html#plandefinition-processing-semantics).
- Evaluation messages are described through `cqf-messages` on the topmost result, referencing a contained OperationOutcome; check it for warnings and informational messages when interpreting the proposals. A RequestGroup can provide a single topmost resource when the response contains multiple requests.
- Inspect the proposed resources and evaluation messages before committing actions. Invoking `$apply` does not persist its results or establish that care occurred.

Continue with [execution methods](documentation-approach-09-methods-of-implementation.html), [interactive CDS](interactive-cds.html), and [activity flow](activityflow.html).
