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
- [Concept and profile index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html) maps current and earlier conceptual names to their explanations and profiles.
- [CDS literature and bibliography](documentation-approach-cds-implementation-evidence.html) provides the public research sources and their implementation implications.

The [CHF example](examples-chf.html) connects the model to existing artifacts and patient data. [Profiles](profiles.html), [Terminology](terminology.html), and [Libraries](libraries.html) provide the formal resource and logic entry points.

{% include chapter-navigation.html section="Approach" unit="chapter" next="approach-model.html" next_title="Case, Plan, and Workflow" %}
