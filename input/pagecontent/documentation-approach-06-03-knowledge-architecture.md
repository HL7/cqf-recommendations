Use this page to map the conceptual architecture to concrete FHIR resources and profile contracts. It complements the [conceptual view](documentation-approach-12-conceptual-knowledge-architecture.html); it does not introduce additional resource types.

### Conceptual Perspective on the CPG Knowledge Architecture

Keep patient description, recommended care and local delivery distinct. Reusable definitions describe guidance for a class of patients. Evaluation uses patient/context information to construct applicable patient-specific requests. Local workflow decides whether and how to act, then documents clinical events and execution state.

### Knowledge Architecture in FHIR for the CPG-IG

| Role | Resource/profile | Relationship to implementation |
|---|---|---|
| Feature definition | StructureDefinition / [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html) | Describes the expected clinical data representation and optional expressions |
| Logic | Library | Organizes computable expressions, parameters and dependencies |
| Activity template | ActivityDefinition / [CPGComputableActivityDefinition](StructureDefinition-cpg-computableactivity.html) | Describes a request to construct in context |
| Recommendation definition | PlanDefinition / [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html) | Relates applicability to proposed activity |
| Strategy definition | PlanDefinition / [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html) | Groups related recommendation definitions |
| Pathway definition | PlanDefinition / [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html) | Longitudinal grouping of strategy/workflow definitions |
| Workflow definition | PlanDefinition / [CPGWorkflowDefinition](StructureDefinition-cpg-workflowdefinition.html) | Describes supported workflow relationships and participants |
| Patient-specific choices | RequestGroup / [CPGStrategy](StructureDefinition-cpg-strategy.html) | Preserves optionality among related requests |
| Patient care plan | CarePlan / [CPGCarePlan](StructureDefinition-cpg-careplan.html) | Relates patient-specific activities, concerns and goals |
| Enrollment | EpisodeOfCare / [CPGCase](StructureDefinition-cpg-case.html) | Records a patient enrolled in the referenced pathway/strategy |
| Observed/requested care | Relevant clinical request/event profiles | Carries actual patient facts, intentions and occurrences |
| Summary | GraphDefinition-based definition; Composition-based result | Defines and presents a scoped patient view |
| Metric | Measure / CPGComputableMetric; MeasureReport / CPGMetricReport | Defines and reports a contextualized patient indicator |
| Guideline package | ImplementationGuide / CPGComputableGuideline | Identifies content and dependencies with documentation |

“CPGPlan,” “CPGProposal,” “CPGCaseFeatureGroup” and “CPGeCaseReport” are useful conceptual labels, not standalone FHIR resource types defined here. Where prose uses a shorter conceptual name such as “CPGPathway,” consult the linked formal profile before authoring instances.

#### Follow the definition-to-instance boundary

<div style="clear: both;">
  <img src="cpg-model-definitions.svg" alt="Pathway, strategy, recommendation and activity definitions form a constrained chain of reusable knowledge references" class="img-responsive" width="1000"/>
</div>

*Original definition-reference illustration for this guide. Actual patient-specific requests are results of applying definitions, not additional nodes inside the definition chain.*

The [CPG PlanDefinition apply operation](OperationDefinition-cpg-plandefinition-apply.html) returns subject-specific Bundles containing transient request resources. Optional grouping can preserve relationships in a RequestGroup, with child request intent `option`. The caller remains responsible for persistence and execution. This CPG operation differs from [base R4 apply](https://hl7.org/fhir/R4/plandefinition-operation-apply.html), whose specified return is CarePlan.

#### Review dependencies and constraints

Use the exact profile's allowed action targets, cardinalities, terminology bindings and extensions. For example, a pathway action's definition targets a strategy or workflow definition; its `relatedAction` is prohibited. The flexibility of base PlanDefinition does not override those constraints. [Profiles](profiles.html), [Libraries](libraries.html) and [Terminology](terminology.html) carry the detailed requirements.

### Boundary Issues at the Separations of Concerns

Keep request intent/status, Task execution and clinical event state separate. Reuse a request as patient information without converting it into evidence that the activity occurred. Preserve a derived feature's source even when it is recorded. Use the [boundary examples](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html) and [activity lifecycle](activityflow.html) when designing those transitions.

FHIR, CQL, CDS Hooks and SMART App Launch have complementary responsibilities, not interchangeable ones. A [coordinated-standards case study](https://doi.org/10.1016/j.ijmedinf.2022.104749) illustrates such composition; architectural feasibility does not establish turnkey portability or clinical benefit.

### Knowledge Architecture and Knowledge Content Management System

A repository or content-management system can support canonical lookup, dependency resolution, versioned releases, reviews and impact analysis. Those are implementation capabilities, not guarantees conferred by a profile. Preserve the difference between a registered artifact, an active published artifact and locally enabled content.

Before enabling a release, check profile validity, resolvable dependencies, clinical-reference examples and local data/workflow behavior separately. Continue with [assets and maintenance](documentation-approach-06-02-knowledge-assets.html) or [implementation methods](documentation-approach-09-methods-of-implementation.html).
