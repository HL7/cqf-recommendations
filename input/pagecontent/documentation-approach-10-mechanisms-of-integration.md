Choose an integration mechanism by deciding where patient data comes from, where the guideline is evaluated, where results appear, and which system owns accepted actions. The [execution method](documentation-approach-09-methods-of-implementation.html) and the delivery interface are separate choices: a CQL engine can support several interfaces.

### Compare the mechanisms

| Mechanism | Where evaluation and interaction occur | Main integration contract |
| --- | --- | --- |
| Direct ingestion or translation | Within the receiving application | Supported content subset, dependency versions, and local behavior |
| Service | A reasoning service evaluates; the client presents or uses the result | Invocation context, authorized data access, result format, timing, and failure behavior |
| Data enrichment | Derived information is transferred to a receiving system | Meaning, provenance, identity, update/correction rules, and ownership of stored data |
| Application | A dedicated application presents the interaction and may evaluate locally or call a service | Launch context, authorized access, user interaction, and any write-back contract |
| Hybrid | Responsibilities are divided across these mechanisms | Explicit ownership at each boundary and consistent patient/content versions |
{:.grid}

<div>
  <img src="cpg-runtime-integration.svg" alt="A client invokes a CDS service with context; the service uses authorized patient data and versioned knowledge, returns guidance, and the receiving workflow handles accepted actions." class="img-responsive" width="1000"/>
</div>

*Figure 1. A service-based integration separates clinical data, reusable knowledge, evaluation, and action handling. An application can use the same service. The arrows describe responsibilities, not a new API.*

### Direct (Ingestion or Translation of Computable Artifacts)

The receiving system imports content, executes it natively, or translates it into local rules. The application supplies the user interface and manages clinical workflow. If import is unavailable, developers can use the content as a specification for manual implementation.

Document which profiles, expression features, terminology operations, and dependency versions the receiving system supports. Compare results with the content's test cases, and retain a mapping from local rules to the source so that updates can be reviewed. A successful import does not demonstrate equivalent clinical behavior.

<a id="reasoning-as-a-service-on-demand-data-ingest-and-insightinference-delivery"></a>
### As a Service

A service evaluates guidance outside the clinical application. [CDS Hooks](https://cds-hooks.hl7.org/) defines discovery, workflow-triggered calls, and responses containing cards, suggestions, and links to applications. It does not define the language used to compute those responses. A service can implement CPG PlanDefinition and CQL evaluation behind that interface.

A typical integration proceeds as follows:

1. The client discovers the service and configures a supported hook and its context.
2. The client sends the invocation context and available prefetch data. The service accesses additional FHIR data only through the supplied, authorized access arrangements.
3. The service evaluates the selected content and transforms the result into the response contract.
4. The client handles the cards, suggestions, app links, and any supported system actions according to its capabilities and authorization model.
5. The implementation records relevant use and action outcomes and manages later updates to stale guidance.

Specify behavior for missing prefetch, incomplete or invalid data, timeouts, unavailable services, and changed patient context. A response with no cards is not a general proof that no clinical issue exists. A successful service response also does not establish that an action was accepted or completed.

For FHIR operations, use the [CPG $apply contract](OperationDefinition-cpg-plandefinition-apply.html) explicitly; it returns transient Bundles. If exposing that evaluation through CDS Hooks, the adapter owns the response transformation. See [FHIR R4 Clinical Decision Support Services](https://hl7.org/fhir/R4/clinicalreasoning-cds-on-fhir.html) for the architectural connection and the published CDS Hooks specification for the current interface contract.

<a id="via-data-enrichment-real-time-data-ingest-and-insightinference-delivery"></a>
### Data Enrichment

An implementation can transfer calculated facts, [recommendations](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation), summaries, or reports into another system through supported data-exchange interfaces. Decide whether the receiving record is a derived result, a [proposal](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-proposal), an authorized request, or a record of performed care. These meanings affect its resource type and lifecycle.

Identify the source patient data, content and terminology versions, calculation time, and system responsible for a result. Define how a later evaluation updates or supersedes the result, how corrections propagate, and how repeated delivery is recognized. A receiving system needs a clear distinction between an inferred value and a directly observed fact.

Persisting results can support later review and reporting, but persistence is a separate responsibility from evaluating a definition. It requires an agreed data and authorization contract; there is no universal requirement to store every intermediate result.

<a id="as-an-application-data-ingest-with-external-reasoning-and-results-presentation"></a>
### As an Application

A dedicated application can present patient information and guidance together, collect missing data, or support shared decision making. [SMART App Launch](https://hl7.org/fhir/smart-app-launch/) supplies launch and authorization conventions. The app can evaluate content itself or call a reasoning service; a CDS Hooks card can provide the entry point to the app.

Confirm which patient/encounter context and scopes are available, what data can be retrieved, and whether the workflow permits write-back. Launching the app does not by itself authorize an order or establish that displayed data has been saved. The [interactive CDS](interactive-cds.html) topic describes data collection and reevaluation.

The original [SMART on FHIR publication](https://pmc.ncbi.nlm.nih.gov/articles/PMC4997036/) describes the platform approach. [Implementation experience](https://pmc.ncbi.nlm.nih.gov/articles/PMC7153075/) illustrates the tradeoff between functionality and portability when local interfaces are needed.

<a id="hybrid-combination-of-approaches-most-likely-for-cpgs"></a>
### Hybrid

Hybrid designs combine these mechanisms. For example, a service can return a card that launches an app, while a separate workflow stores an accepted request and later records its fulfillment. Make the boundaries explicit: patient identity, data freshness, authoritative records, content versions, failure recovery, and who can perform each write.

Use a small responsibility table for the actual deployment rather than assuming one component controls the entire lifecycle. A [coordinated standards implementation](https://pmc.ncbi.nlm.nih.gov/articles/PMC9703934/) shows how several specifications can support one application; it does not imply that every combination is supported by every EHR.

### Validate workflow and operations

Evaluate technical behavior and the clinical interaction separately. Check that the intended person sees relevant guidance at a useful time, can take the intended action, and can handle an exception. Measure burden and appropriateness as well as utilization. The [CDS Hooks app-utilization trial](https://doi.org/10.1093/jamia/ocac085) measured app use; it did not establish a patient-outcome benefit. The [2026 cloud-hosted CDS pilot](https://pmc.ncbi.nlm.nih.gov/articles/PMC13421373/) still needed local order and medication mappings, and did not establish turnkey cross-vendor deployment.

Assign responsibility for content updates, terminology and data-interface changes, service monitoring, and rollback. See [CDS implementation evidence](documentation-approach-cds-implementation-evidence.html), [validation](methodology-validate.html#validate-step), and the [L4 checklist](clinical-guidelines-development-L4-checklist.html).
