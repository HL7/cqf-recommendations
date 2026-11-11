A computable clinical practice guideline connects reviewed recommendations with patient information and the work of delivering care. Its reusable definitions, logic, and terminology can support decision support, care planning, measurement, and reporting. A local implementation connects those artifacts to the data, people, and systems in a particular setting.

Approach explains how these parts fit together and the choices involved in using them. The chapters follow one thread from the clinical model through its artifacts and implementation, then development, maintenance, and evaluation. The existing heart failure example provides a concrete point of reference throughout.

### Where to start {#where-to-start}

Open a chapter below. Read in order for the full approach, or go directly to the topic you need.

<a id="chapters"></a>

| Chapter | What this page helps you do |
| --- | --- |
| <a id="conceptual-knowledge-architecture"></a>**[1. Case, Plan, and Workflow](approach-model.html)** | Understand how patient facts, reusable guidance, care plans, and local work relate. |
| <a id="knowledge-representation"></a>**[2. Guideline Artifacts](approach-artifacts.html)** | Identify the FHIR resources, CQL, terminology, and forms in a guideline package. |
| <a id="implementing-computable-knowledge"></a>**[3. Implementation and Integration](approach-implementation.html)** | Choose an integration method and connect evaluation results to clinical workflow. |
| <a id="guideline-development"></a><a id="knowledge-engineering"></a>**[4. Development and Maintenance](approach-development.html)** | Develop, review, release, and maintain the guideline and its computable artifacts. |
| **[5. Measurement and Evidence](approach-evaluation.html)** | Use metrics and reports, evaluate an implementation, and interpret CDS evidence. |
{:.grid}

For the step-by-step authoring procedure, use [Methodology](methodology.html).

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
{:.grid}

</details>

<div style="clear: both;">
  <img src="cpg-runtime-lifecycle.svg" alt="Evidence, guideline development, decision support, clinical care, measurement, and reporting form a learning cycle around shared FHIR data and knowledge." class="img-responsive" width="1000"/>
</div>

*The work continues after a package is released. Clinical and technical findings can lead to changes in the guideline, its computable representation, or the local implementation.*

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
