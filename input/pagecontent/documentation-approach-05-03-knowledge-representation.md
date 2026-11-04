Author the formal artifacts from a reviewed decision specification. The [Knowledge Representation Overview](documentation-approach-02-04-knowledge-representation.html) defines the levels, assets, and architecture; this page addresses the engineering work and its controls.

### Author and Relate the Artifacts

Map concepts to appropriate patient-data profiles; decisions to Library/CQL expressions and PlanDefinition conditions; activities to ActivityDefinition; and recommendation, strategy, and pathway definitions to their exact CPG profiles. A conceptual CPGPlan is not a FHIR resource type. Patient-specific requests and events remain separate from these definitions.

Use the [Translate step](methodology-translate.html#translate-step), [Profiles](profiles.html), [Terminology](terminology.html), and [Libraries](libraries.html) for the owning technical requirements.

### Knowledge Curation

Record each artifact's canonical identity, version, status, owner, source derivation, review state, dependencies, and distribution rights. Link artifacts to their source decision and tests. Store the work in a managed repository or knowledge-content system appropriate to the project; a particular platform is not required by this methodology.

| Managed item | Why it matters |
| --- | --- |
| Source and review record | Explains which clinical meaning and source version the artifact implements. |
| Library/model/terminology dependencies | Enables reproducible evaluation and identifies affected consumers when something changes. |
| Tests and expected outputs | Records behavior reviewers intended, including negative and missing-data cases. |
| Local adaptations | Separates reusable meaning from site-specific codes, capabilities, and workflow. |
| Release and maintenance record | Identifies approved versions, known limits, update responsibility, and retirement path. |
{:.grid}

### Knowledge Management

Review changes across the dependency graph. A shared value set or expression can affect multiple recommendations; a local code or engine change can alter behavior without changing the source guideline. Empirical CDS malfunction reports include terminology changes, environment migration, and unrecognized component reuse. [Wright et al., 2018](https://doi.org/10.1093/jamia/ocx106).

The output is a traceable artifact set with declared dependencies and tests, ready for [execution and validation](documentation-approach-05-04-knowledge-execution-and-validation.html). Precise canonical/version and package behavior follows [CRMI](http://hl7.org/fhir/uv/crmi) and the [knowledge-asset guidance](documentation-approach-06-02-knowledge-assets.html); descriptive metadata alone does not guarantee an engine can execute an artifact.
