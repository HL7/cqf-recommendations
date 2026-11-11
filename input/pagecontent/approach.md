{% include cpg-horizontal-table-style.html %}

Putting a clinical guideline into practice requires teams to interpret its recommendations, identify relevant patient information, and connect decisions to care delivery. When each site or application repeats that interpretation independently, differences can arise in clinical meaning, data assumptions, and behavior. Updates also require teams to find and review the implementations that depend on the guidance.

The CPG approach makes that interpretation explicit, reviewable, and reusable. It brings together three complementary ideas:

1. **A clinical model that separates Case, Plan, and Workflow.** Patient state, recommended care, and local delivery have different responsibilities. Keeping them distinct allows each to be reviewed and changed while preserving its relationship to the others.
2. **A framework for representing knowledge.** Narrative, reviewable specifications, computable artifacts, and local implementations serve different audiences and purposes. Shared definitions and expressions let those audiences work from the same clinical interpretation.
3. **An iterative, cross-functional development process.** Guideline developers, knowledge engineers, and implementers work together so that clinical questions, data limitations, and workflow constraints can inform the content while it is being developed.

These choices provide the rationale for the guide's profiles and conformance requirements. They support reuse across decision support, care planning, measurement, and reporting, with clinical judgment and local adaptation remaining part of implementation. Approach explains the choices and their tradeoffs; Methodology describes how to apply them. The five chapters develop this argument using the existing heart failure example.

### Where to start {#where-to-start}

Open a chapter below. Read in order for the full approach, or go directly to the topic you need.

<a id="chapters"></a>

| Chapter | What this chapter explains |
| --- | --- |
| <a id="conceptual-knowledge-architecture"></a>**[1. Case, Plan, and Workflow](approach-model.html)** | Why patient facts, reusable guidance, and local care delivery need distinct, connected representations. |
| <a id="knowledge-representation"></a>**[2. Guideline Artifacts](approach-artifacts.html)** | How representation levels, FHIR resources, CQL, terminology, and forms support shared interpretation and reuse. |
| <a id="implementing-computable-knowledge"></a>**[3. Implementation and Integration](approach-implementation.html)** | Why shared guidance supports several execution and integration choices, and what remains local. |
| <a id="guideline-development"></a><a id="knowledge-engineering"></a>**[4. Development and Maintenance](approach-development.html)** | Why clinical, knowledge engineering, and implementation work inform one another throughout development and maintenance. |
| **[5. Measurement and Evidence](approach-evaluation.html)** | Why recommendations, delivered care, and outcomes need to be connected for evaluation and learning. |
{:.cpg-horizontal-table}

For the step-by-step authoring procedure, use [Methodology](methodology.html). When reviewing a work product or a local implementation, start with the [checklist for its representation level](checklists.html).

<details markdown="1">
<summary>Reading paths by role</summary>

One person may fill several roles. The [Concept and Profile Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) is a reference for each path.

| Role | Read in order | Then apply |
| --- | --- | --- |
| Guideline developer, clinical subject matter expert, or evidence methodologist | [Source and evidence](approach-development.html#source-and-scope) → [Co-development](approach-development.html#co-development) → [Clinical model](approach-model.html#model-at-a-glance) → [Plan](approach-model.html#plan) → [Metrics](approach-evaluation.html#metrics) | [Select](methodology-select.html) and [Represent](methodology-represent.html) with the [L1](clinical-guidelines-development-L1-checklist.html) and [L2](clinical-guidelines-development-L2-checklist.html) checklists |
| Knowledge engineer working on acquisition and translation | [Knowledge acquisition](approach-development.html#knowledge-acquisition) → [Translation](approach-development.html#knowledge-translation) → [Clinical model](approach-model.html#model-at-a-glance) → [Representation levels](approach-artifacts.html#representation-levels) → [Iterative development](approach-development.html#reviewed-increment) | [Select](methodology-select.html), [Represent](methodology-represent.html), and the [L2 checklist](clinical-guidelines-development-L2-checklist.html) |
| Knowledge engineer working on formal representation | [Clinical model](approach-model.html) → [Activity Flow](activityflow.html) → [Data, logic, and forms](approach-artifacts.html#data-logic-forms) → [Artifact identity](approach-artifacts.html#artifact-identity) | [Translate](methodology-translate.html), [Validate](methodology-validate.html), [Profiles](profiles.html), [Terminology](terminology.html), and the [L3 checklist](clinical-guidelines-development-L3-checklist.html) |
| Knowledge architect or team lead | [Clinical concerns and boundaries](approach-model.html#scope-and-shared-features) → [Knowledge architecture](approach-artifacts.html#knowledge-architecture) → [Co-development](approach-development.html#co-development) → [Enablement](approach-implementation.html#levels-of-enablement) → [Conformance](documentation-conformance.html) | [Methodology](methodology.html) |
| Metric or measure developer or evaluator | [Measurement and Evidence](approach-evaluation.html) → [Plan](approach-model.html#plan) → [Activity Flow](activityflow.html) → [Validation](approach-development.html#validation) | [Metric authoring](methodology-translate.html#metrics), [Terminology](terminology.html), and [Profiles](profiles.html) |
| EHR, CDS service, or application implementer | [Execution methods](approach-implementation.html#execution-methods) → [Activity Flow](activityflow.html) → [Integration](approach-implementation.html#integration-mechanisms) → [Enablement](approach-implementation.html#levels-of-enablement) → [Conformance](documentation-conformance.html) | [Care planning](approach-implementation.html#care-planning), [Interactive CDS](interactive-cds.html), and the [L4 checklist](clinical-guidelines-development-L4-checklist.html) |
| Local informatics or practice governance | [Local governance](approach-development.html#local-governance) → [Common Pathway and localization](approach-implementation.html#common-pathway) → [Enablement](approach-implementation.html#levels-of-enablement) → [Integration](approach-implementation.html#integration-mechanisms) | [Common Care Pathway](common-care-pathway.html) and the [L4 checklist](clinical-guidelines-development-L4-checklist.html) |
{:.cpg-horizontal-table}

</details>

{% include cpg-diagram.html src="cpg-runtime-lifecycle.svg" ratio="1200 / 961" alt="Evidence, guideline development, decision support, clinical care, measurement, and reporting form a learning cycle around shared FHIR data and knowledge." caption="Shared definitions connect guidance, care, and evaluation. The return paths allow clinical and technical findings to inform reviewed changes to the guideline, its computable representation, or the local implementation." %}

### Look up a detail {#references}

These references are also linked from the chapters where their detail is needed.

- [Activity lifecycle](activityflow.html) maps definitions, requests, and events to resource-specific states.
- [Activity transitions](activityflow-transitions.html) describes planning, ordering, rejection, fulfillment, and correction behaviors.
- [Interactive CDS](interactive-cds.html) specifies questionnaire generation, population, extraction, and reevaluation.
- [Conformance](documentation-conformance.html) indexes the formal requirements and their assessment.
- [Actors](actors.html) describes the repository, service, and client roles at each level of enablement.
- [Concept and profile index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) maps current and earlier conceptual names to their explanations and profiles.
- [CDS literature and bibliography](documentation-approach-cds-implementation-evidence.html) provides the public research sources and their implementation implications.

The [CHF example](examples-chf.html) connects the model to existing artifacts and patient data. [Profiles](profiles.html), [Terminology](terminology.html), and [Libraries](libraries.html) provide the formal resource and logic entry points.

{% include chapter-navigation.html section="Approach" unit="chapter" next="approach-model.html" next_title="Case, Plan, and Workflow" %}
