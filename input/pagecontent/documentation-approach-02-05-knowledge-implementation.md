Implementing a computable guideline means making its definitions and logic work with local patient data and clinical workflow. Begin with a specific content package and intended use, then make three separate decisions.

### Choose the execution, integration, and user experience

| Decision | Questions to answer | Owning topic |
| --- | --- | --- |
| Execute the knowledge | Will the system execute the supplied representation, translate it, or use it as a specification for a local implementation? | [Methods of implementation](documentation-approach-09-methods-of-implementation.html) |
| Connect the systems | Where are data retrieved, logic evaluated, results presented, and accepted actions persisted? | [Mechanisms of integration](documentation-approach-10-mechanisms-of-integration.html) |
| Select useful capabilities | Does the use case need narrative guidance, a patient summary, actionable suggestions, or longer-running care coordination? | [Levels of enablement](documentation-approach-03-conformance-levels.html) |

These choices interact, but they are independent of the [L1–L4 representation levels](documentation-approach-06-01-levels-of-knowledge-representation.html) and [Data/Logic/Forms tiers](documentation-approach-07-tiers-of-functionality.html). A native CQL engine, for example, can serve either a CDS Hooks interface or a standalone application.

### Gather the inputs

Before integration, identify the guideline's clinical source and version, the FHIR artifacts and their canonical dependencies, the applicable data profiles and terminology, and the expected test results. Establish the local patient and encounter context, available data, supported workflow triggers, authorized users, and the team responsible for clinical review and maintenance.

The resulting implementation record should explain local mappings and gaps, the chosen execution and delivery mechanisms, and the evidence supporting release. The [L4 checklist](clinical-guidelines-development-L4-checklist.html) provides a place to track that work.

### Follow the patient-specific flow

1. Resolve the content and evaluate it with the intended patient context.
2. Inspect the proposed activities and any missing-data or evaluation messages.
3. Gather additional data where appropriate using [interactive CDS](interactive-cds.html).
4. Let the responsible workflow accept, authorize, and carry out selected activities, following [activity flow](activityflow.html).
5. Track execution failures, clinical use, and effects; revisit local mappings and content when dependencies change.

The [CPG PlanDefinition $apply operation](OperationDefinition-cpg-plandefinition-apply.html) returns transient results. Its invocation alone neither persists those results nor completes a clinical activity.

### Verify the implementation

Keep [formal conformance](documentation-conformance.html), logic tests, clinical review, local integration tests, usability, and outcome evaluation visible as separate evidence. Experience with [standards-based CDS implementation](https://pmc.ncbi.nlm.nih.gov/articles/PMC13421373/) illustrates why shared logic still needs local data and order mappings. For a concrete artifact walkthrough, continue to the [congestive heart failure example](examples-chf.html).
