{% include cpg-horizontal-table-style.html %}

This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

<div class="new-content" markdown="1">

Putting a clinical guideline into practice requires teams to interpret its recommendations, identify relevant patient information, and connect decisions to care delivery. When each site or application repeats that interpretation independently, differences can arise in clinical meaning, data assumptions, and behavior. Updates also require teams to find and review the implementations that depend on the guidance.

The CPG approach makes that interpretation explicit, reviewable, and reusable. It brings together three complementary ideas:

1. **A clinical model that separates Case, Plan, and Workflow.** Patient state, recommended care, and local delivery have different responsibilities. Keeping them distinct allows each to be reviewed and changed while preserving its relationship to the others.
2. **A framework for representing knowledge.** Narrative, reviewable specifications, computable artifacts, and local implementations serve different audiences and purposes. Shared definitions and expressions let those audiences work from the same clinical interpretation.
3. **An iterative, cross-functional development process.** Guideline developers, knowledge engineers, and implementers work together so that clinical questions, data limitations, and workflow constraints can inform the content while it is being developed.

These choices provide the rationale for the guide's [Profiles](profiles.html) and [Conformance](documentation-conformance.html) requirements. They support reuse across decision support, care planning, measurement, and reporting, with clinical judgment and local adaptation remaining part of implementation. Approach explains the choices and their tradeoffs; [Methodology](methodology.html) describes how to apply them.

### Where to Start {#where-to-start}

Each section of the Approach opens with a page that presents the approach for its topic, using the existing heart failure example, and links to detailed pages on each part. Read the section pages in order for the full approach, or go directly to the topic you need.

<a id="chapters"></a>

| Section | What this section explains |
| --- | --- |
| <a id="conceptual-knowledge-architecture"></a>**[Conceptual Knowledge Architecture](documentation-approach-12-conceptual-knowledge-architecture.html)** | Why patient facts, reusable guidance, and local care delivery need distinct, connected representations: the Case, Plan, and Workflow. |
| <a id="guideline-development"></a>**[Guideline Development](documentation-approach-04-guideline-development.html)** | Why clinical, knowledge engineering, and implementation work inform one another throughout development and maintenance. |
| <a id="knowledge-engineering"></a>**[Knowledge Engineering](documentation-approach-05-knowledge-engineering-overview.html)** | The knowledge engineering lifecycle, and why recommendations, delivered care, and outcomes need to be connected for measurement, evaluation, and learning. |
| <a id="knowledge-representation"></a>**[Knowledge Representation](documentation-approach-02-04-knowledge-representation.html)** | How representation levels, FHIR resources, CQL, terminology, and forms support shared interpretation and reuse. |
| <a id="implementing-computable-knowledge"></a>**[Implementing Computable Knowledge](documentation-approach-02-05-knowledge-implementation.html)** | Why shared guidance supports several execution and integration choices, and what remains local. |
{:.cpg-horizontal-table}

For the step-by-step authoring procedure, use [Methodology](methodology.html). When reviewing a work product or a local implementation, start with the [checklist for its representation level](checklists.html).

<details markdown="1">
<summary>Reading paths by role</summary>

The CPG development team is [cross-functional](documentation-approach-05-06-agile-cpg-development-approach.html#cross-functional-integrated-cpg-development-team), and one person may hold several of these roles. The [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) is a reference for each path.

| Role | Read in order | Then apply |
| --- | --- | --- |
| Guideline developer, clinical subject matter expert, or evidence methodologist | [Source and evidence](documentation-approach-04-guideline-development.html#source-and-scope) → [Co-development](documentation-approach-04-guideline-development.html#co-development) → [Clinical model](documentation-approach-12-conceptual-knowledge-architecture.html#model-at-a-glance) → [Plan](documentation-approach-12-conceptual-knowledge-architecture.html#plan) → [Metrics](documentation-approach-05-knowledge-engineering-overview.html#metrics) | [Select](methodology-select.html) and [Represent](methodology-represent.html) with the [L1](clinical-guidelines-development-L1-checklist.html) and [L2](clinical-guidelines-development-L2-checklist.html) checklists |
| Knowledge engineer working on acquisition and translation | [Knowledge acquisition](documentation-approach-04-guideline-development.html#knowledge-acquisition) → [Translation](documentation-approach-04-guideline-development.html#knowledge-translation) → [Clinical model](documentation-approach-12-conceptual-knowledge-architecture.html#model-at-a-glance) → [Representation levels](documentation-approach-02-04-knowledge-representation.html#representation-levels) → [Iterative development](documentation-approach-04-guideline-development.html#reviewed-increment) | [Select](methodology-select.html), [Represent](methodology-represent.html), and the [L2 checklist](clinical-guidelines-development-L2-checklist.html) |
| Knowledge engineer working on formal representation | [Clinical model](documentation-approach-12-conceptual-knowledge-architecture.html) → [Activity Flow](activityflow.html) → [Data, logic, and forms](documentation-approach-02-04-knowledge-representation.html#data-logic-forms) → [Artifact identity](documentation-approach-02-04-knowledge-representation.html#artifact-identity) | [Translate](methodology-translate.html), [Validate](methodology-validate.html), [Profiles](profiles.html), [Terminology](terminology.html), and the [L3 checklist](clinical-guidelines-development-L3-checklist.html) |
| Knowledge architect or team lead | [Clinical concerns and boundaries](documentation-approach-12-conceptual-knowledge-architecture.html#scope-and-shared-features) → [Knowledge architecture](documentation-approach-02-04-knowledge-representation.html#knowledge-architecture) → [Co-development](documentation-approach-04-guideline-development.html#co-development) → [Enablement](documentation-approach-02-05-knowledge-implementation.html#levels-of-enablement) → [Conformance](documentation-conformance.html) | [Methodology](methodology.html) |
| Metric or measure developer or evaluator | [Measurement and evidence](documentation-approach-05-knowledge-engineering-overview.html#measurement-and-evidence) → [Plan](documentation-approach-12-conceptual-knowledge-architecture.html#plan) → [Activity Flow](activityflow.html) → [Validation](documentation-approach-04-guideline-development.html#validation) | [Metric authoring](methodology-translate.html#metrics), [Terminology](terminology.html), and [Profiles](profiles.html) |
| EHR, CDS service, or application implementer | [Execution methods](documentation-approach-02-05-knowledge-implementation.html#execution-methods) → [Activity Flow](activityflow.html) → [Integration](documentation-approach-02-05-knowledge-implementation.html#integration-mechanisms) → [Enablement](documentation-approach-02-05-knowledge-implementation.html#levels-of-enablement) → [Conformance](documentation-conformance.html) | [Care planning](documentation-approach-02-05-knowledge-implementation.html#care-planning), [Interactive CDS](interactive-cds.html), and the [L4 checklist](clinical-guidelines-development-L4-checklist.html) |
| Local informatics or practice governance | [Local governance](documentation-approach-04-guideline-development.html#local-governance) → [Common Pathway and localization](documentation-approach-02-05-knowledge-implementation.html#common-pathway) → [Enablement](documentation-approach-02-05-knowledge-implementation.html#levels-of-enablement) → [Integration](documentation-approach-02-05-knowledge-implementation.html#integration-mechanisms) | [Common Care Pathway](common-care-pathway.html) and the [L4 checklist](clinical-guidelines-development-L4-checklist.html) |
{:.cpg-horizontal-table}

</details>

{% include cpg-diagram.html src="cpg-runtime-lifecycle.svg" ratio="1200 / 961" alt="Evidence, guideline development, decision support, clinical care, measurement, and reporting form a learning cycle around shared FHIR data and knowledge." caption="Shared definitions connect guidance, care, and evaluation. The return paths allow clinical and technical findings to inform reviewed changes to the guideline, its computable representation, or the local implementation." %}

### Look Up a Detail {#references}

These references are also linked from the sections where their detail is needed.

- [Activity Flow](activityflow.html) maps definitions, requests, and events to resource-specific states.
- [Activity Transitions](activityflow-transitions.html) describes planning, ordering, rejection, fulfillment, and correction behaviors.
- [Interactive Clinical Decision Support](interactive-cds.html) specifies questionnaire generation, population, extraction, and reevaluation.
- [Conformance](documentation-conformance.html) indexes the formal requirements and their assessment.
- [Actors](actors.html) describes the repository, service, and client roles at each level of enablement.
- [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) relates each concept to where it is defined and the profiles that represent it.
- [CDS Literature and Bibliography](documentation-approach-cds-implementation-evidence.html) provides the public research sources and their implementation implications.

The [CHF example](examples-chf.html) connects the model to existing artifacts and patient data. [Profiles](profiles.html), [Terminology](terminology.html), and [Libraries](libraries.html) provide the formal resource and logic entry points.

</div>

### Contents of the Approach {#contents}

* [Conceptual Knowledge Architecture](documentation-approach-12-conceptual-knowledge-architecture.html)
    * [Separations of Concerns](documentation-approach-12-01-separations-of-concerns-in-the-cpg.html)
    * [Separating and Defining Case, Plan, and Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html)
    * [Plan](documentation-approach-12-03-cpg-plan.html)
    * [Case](documentation-approach-12-04-cpg-case.html)
    * [Care Plan](documentation-approach-12-05-cpg-careplan.html)
    * [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html)
    * [Guideline, Derivative, and Related Assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html)
    * [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html)
* [Guideline Development](documentation-approach-04-guideline-development.html)
    * [Guideline Development Frameworks](documentation-approach-04-02-guideline-development-frameworks.html)
    * [6S Evidence Pyramid and Learning Health Systems](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html)
    * [Analysis of Evidence, Recommendations, and Reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html)
    * [Development of Computable Clinical Guideline Artifacts](documentation-approach-04-05-computable-guideline-artifacts.html)
* [Knowledge Engineering](documentation-approach-05-knowledge-engineering-overview.html)
    * [Knowledge Acquisition](documentation-approach-05-01-knowledge-acquisition.html)
    * [Knowledge Translation](documentation-approach-05-02-knowledge-translation.html)
    * [Knowledge Representation and Expression](documentation-approach-05-03-knowledge-representation.html)
    * [Knowledge Execution and Validation](documentation-approach-05-04-knowledge-execution-and-validation.html)
    * [Knowledge Implementation](documentation-approach-05-05-knowledge-implementation.html)
    * [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html)
* [Knowledge Representation](documentation-approach-02-04-knowledge-representation.html)
    * [Levels of Knowledge Representation](documentation-approach-06-01-levels-of-knowledge-representation.html)
    * [Tiers of Functionality](documentation-approach-07-tiers-of-functionality.html)
    * [Levels of Representation by Tiers of Functionality](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html)
    * [Knowledge Assets](documentation-approach-06-02-knowledge-assets.html)
    * [Knowledge Architecture](documentation-approach-06-03-knowledge-architecture.html)
* [Implementing Computable Knowledge](documentation-approach-02-05-knowledge-implementation.html)
    * [Methods of Implementation](documentation-approach-09-methods-of-implementation.html)
        * [Activity Flow](activityflow.html)
        * [Evidence-Based Care Planning](documentation-careplanning.html)
        * [Interactive Clinical Decision Support](interactive-cds.html)
    * [Mechanisms of Integration](documentation-approach-10-mechanisms-of-integration.html)
    * [CDS Literature and Bibliography](documentation-approach-cds-implementation-evidence.html)
    * [Levels of Enablement](documentation-approach-03-conformance-levels.html)
    * [Conformance](documentation-conformance.html)

{% include chapter-navigation.html section="Approach" unit="section" next="documentation-approach-12-conceptual-knowledge-architecture.html" next_title="Conceptual Knowledge Architecture" %}
