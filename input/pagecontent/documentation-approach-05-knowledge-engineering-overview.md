This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

Knowledge Engineering (KE) is the discipline and profession of developing explicit representations of advanced, domain-oriented logic in computer systems (i.e., knowledge-based systems) in order to simulate human decision-making and high-level cognitive tasks. A knowledge engineer supplies or develops some or all of the "knowledge," typically stored in some knowledge base(s), that is built into or used by computational systems.

This section covers:

*   An overview of knowledge engineering (this page)
*   The key phases of the knowledge engineering lifecycle:
    *   [Knowledge Acquisition](documentation-approach-05-01-knowledge-acquisition.html)
    *   [Knowledge Translation](documentation-approach-05-02-knowledge-translation.html)
    *   [Knowledge Representation and Expression](documentation-approach-05-03-knowledge-representation.html)
    *   [Knowledge Execution and Validation](documentation-approach-05-04-knowledge-execution-and-validation.html)
    *   [Knowledge Implementation](documentation-approach-05-05-knowledge-implementation.html)
*   [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html)

In healthcare, knowledge engineers are further specialized with expertise that may span from those with deep domain understanding including knowledge elicitation tools and techniques with some familiarity with various knowledge representation formalisms to deep understanding of knowledge formalism (i.e., representation/ expression) and knowledge architecture (i.e., knowledge processes and technology requirements for creating, capturing, organizing, accessing and using knowledge assets with varying degrees of familiarity with the domain.)

Furthermore, some knowledge engineers are very specialized in a particular [level of knowledge representation](documentation-approach-06-01-levels-of-knowledge-representation.html) or [tier of functionality](documentation-approach-07-tiers-of-functionality.html), such as data modelers, terminologists, ontologists, and expression language (e.g., CQL) authors. Likewise, some knowledge engineers are very specialized in a healthcare domain (e.g., cardiology), broad domain conceptualizations and their respective formalisms (e.g., pathways, measures), or specialized methodologies that play a critical role in the overall knowledge engineering process (e.g., knowledge synthesis).

There are a few, experienced informaticians and knowledge architects that play a broader systems engineering (i.e., designing, integrating, and managing complex systems over their life cycles) role on a knowledge engineering team to bring the information, assets, processes, and individual knowledge engineers together, in part, through shared knowledge architecture and use of standardized representations (e.g., composite assets, terminologies, standards) as well as tooling (e.g., editors, validation tooling).

<details open>

<summary>

Figure 1. The Knowledge Engineering Lifecycle, illustrating the general flow of activities and information.

</summary>

<img src="CPG-05-00.png" alt="Knowledge Engineering Lifecycle" class="img-responsive img-rounded center-block"/>

</details>

### Knowledge Engineering Lifecycle Process

The knowledge engineering lifecycle process describes a progressively interdependent series of activities or steps taken in order to transform domain knowledge or content into a more formal computable set of assets for consumption, execution, and/or delivery.  Furthermore, it describes many of the sub-activities and their work products as well as their interdependencies and generalized information flow. These activities, work products, and information have a generalized flow, however as discussed in the [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html), many of these activities and their derivatives run concurrently, have numerous touch points, and are done iteratively. These various flows occur between and across the various tiers of functionality (i.e., data, logic, user interface), levels of representation (i.e., narrative to computable), and knowledge formalisms (i.e., asset types, representations, and expressions) (see [Knowledge Representation](documentation-approach-02-04-knowledge-representation.html)). The phases are listed above and described on their own pages. More detailed descriptions of these activities and their corresponding subactivies, methodologies, and tooling are available in various resources provided by respective communities of practice.

<div class="new-content" markdown="1">

The [Guideline Development](documentation-approach-04-guideline-development.html) page describes how these phases are carried out together with guideline development: [acquiring the knowledge](documentation-approach-04-guideline-development.html#knowledge-acquisition) needed for a decision, [producing a reviewed specification](documentation-approach-04-guideline-development.html#reviewed-specification) and preserving its meaning across representations, [reviewing clinical meaning](documentation-approach-04-guideline-development.html#clinical-review), [validating](documentation-approach-04-guideline-development.html#validation) the result, and [releasing and maintaining](documentation-approach-04-guideline-development.html#release-and-maintenance) it. The rest of this page describes how the same reviewed definitions support measurement, evaluation, and learning.

### Measurement and Evidence {#measurement-and-evidence}

Understanding a guideline's use requires connections between what it recommended, how the care team responded, what care was documented, and what happened to the patient. A recommendation displayed or accepted answers only part of that question. Linking the proposal, decision, and subsequent events helps reviewers investigate whether a finding concerns the guidance, its interpretation, local delivery, or incomplete information.

Measurement and reporting belong in the CPG architecture because they can use the same reviewed clinical definitions as decision support and care planning. That gives teams a shared basis for examining care instead of independently reconstructing the guideline's criteria for each output. Each metric, summary, measure, or report still needs its own purpose, scope, time window, interpretation, and validation. These connections support evaluation and reviewed improvement; demonstrating an effect on patient outcomes requires evidence appropriate to that question.

In the heart failure example, the [case plan summary](Composition-chf-scenario1-caseplansummary.html) brings together observations, goals, planned activities, and events, and patient-level metrics for weight and weight change appear alongside those facts so the care team can interpret progress in context. See the [Congestive heart failure example](examples-chf.html) and [Guideline, Derivative, and Related Assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html).

#### Follow Progress for a Patient {#metrics}

A metric is a patient-level indicator. It can express progress toward a goal or elapsed time from a proposal to documented care. Specify the facts it uses, the event that starts the interval, the scoring rule, and what a result means. Explain how unavailable or stale data affect the result. For example, a missing administration record may leave fulfillment unknown. Preserve the distinction between a recommendation that was inapplicable, a proposal that was declined, and care explicitly documented as not done.

[CPGComputableMetric](StructureDefinition-cpg-computablemetric.html) profiles Measure for the definition. [CPGMetricReport](StructureDefinition-cpg-metricreport.html) profiles MeasureReport for a patient-specific result. A result can also be exposed as an inferred Case Feature when that representation fits its clinical use. When a metric result is exposed as a Case Feature, retain its time and source so the receiving workflow can distinguish the inference from a clinician's assessment.

An elapsed-time metric can start with a proposal or another Case Feature used in the guideline logic, such as the event that triggered evaluation. A patient outcome metric can compare an observation with a goal or a Case Feature threshold. Composite metrics can bring together several process or intermediate-outcome results. Adherence is a composite metric that rolls up the compliance and intermediate-outcome results for a pathway or a strategy, taken as a whole. A correlative metric can relate those process results to patient outcomes. Results can inform care directly, appear in summaries and progress notes, or be reused for cohort measurement and reporting. See [Metrics](documentation-approach-12-07-cpg-derivative-and-related-assets.html#metrics).

A metric's type, scope, and result vary independently. This guide defines coded results for compliance with a recommendation and for adherence to a strategy, including results that record when no verdict exists yet, such as a fulfillment window that is still open. Coded results for pathway adherence and for goals are planned for a future version. See [Metric Types and Results](documentation-approach-12-07-cpg-derivative-and-related-assets.html#metric-types-and-results), and [Pathway Status Terms](documentation-approach-12-07-cpg-derivative-and-related-assets.html#pathway-status-terms) for the informal terms, such as "on path" and "off path", that local implementations use to describe pathway adherence. The [Metrics](methodology-translate.html#metrics) step in the Methodology gives the definition rules, and [Metric Results](methodology-translate.html#metric-results) gives the codes and how to choose a result.

#### Define Population Measures {#measures}

A population quality measure defines whose care contributes to an assessment of a process or outcome. FHIR Measure defines the population criteria and references the Library that supplies the expression logic. MeasureReport represents the results. A quality measure can reuse guideline expressions, reference a calculated metric or a metric stored as a Case Feature, or relate to a guideline through metadata. Its measurement population, time window, exclusions, and scoring have their own definitions. A population measure can aggregate patient-level results according to those criteria. Test those rules with representative patient-level cases before interpreting results for a care team, facility, or research cohort. See [Measure (eCQMs)](documentation-approach-12-07-cpg-derivative-and-related-assets.html#measure-ecqms), [FHIR R4 Measure](https://hl7.org/fhir/R4/measure.html), [FHIR R4 MeasureReport](https://hl7.org/fhir/R4/measurereport.html), and the [Quality Measure Implementation Guide](https://hl7.org/fhir/uv/cqm/index.html).

#### Summarize the Case, Plan, and Progress {#summaries}

State whose care the view covers, which recommendation, strategy, or pathway defines its scope, and whether it describes the current state or a prior point in time. Show the source and time of important facts. Readers need to see which activities were proposed, authorized, or documented as performed, and where information is unavailable.

[GraphDefinition $apply](OperationDefinition-cpg-graphdefinition-apply.html) can realize the summary definition for a subject. It evaluates any applicability expression on a link to determine whether to follow it, and uses the target expression or link path to identify the referenced resources. The returned Bundle starts with the Composition and includes the resources it references. Preserve the source definition when presenting or storing a generated summary so it can be reproduced or reviewed.

A **Case Summary** represents the Case Features and feature groups in scope at a point in time. The features can include events, requests, and metrics, as defined by the guideline. A GraphDefinition defines the feature graph and a Composition presents the patient-specific results. The summary can support clinical review, registries, quality and safety review, or guideline development. See [Case Summary](documentation-approach-12-07-cpg-derivative-and-related-assets.html#case-summary), [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html), and [CPGCaseSummary](StructureDefinition-cpg-casesummary.html).

A **Case Plan Summary** adds pertinent proposals, requests, and events to the patient features. It can include evidence supporting proposals and distinguish guidance that is inapplicable, guidance whose criteria have yet to be met, and guidance that has yet to be evaluated. A summary scoped to a prior event can show which strategies the team used to address a recurring concern. The same definition can support a document or an application view. See [Case Plan Summary](documentation-approach-12-07-cpg-derivative-and-related-assets.html#case-plan-summary), [CPGCasePlanSummaryDefinition](StructureDefinition-cpg-caseplansummarydefinition.html), and [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html).

A **Case Plan Progressing Note** documents progress and can combine a Case Plan Summary with clinical impressions collected through an adaptive form. The note can capture feedback from the care team on the patient's condition and the use of guideline recommendations. Keep the form's interaction rules separate from the definitions of features, the logic that proposes care, and metric calculations. See [Case Plan Progressing Note](documentation-approach-12-07-cpg-derivative-and-related-assets.html#case-plan-progressing-note), [CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html), and [SDC Adaptive Forms](https://hl7.org/fhir/uv/sdc/adaptive.html).

#### Report to a Defined Recipient {#reporting}

Case data defined by case-feature groups or features can also support a report at the end of a pathway, aligned with the [Electronic Case Reporting Implementation Guide](https://hl7.org/fhir/us/ecr/) (see [Workflow and Common Pathway](documentation-approach-12-06-cpg-common-pathway.html)). A Case Summary can supply patient data for a report. A Case Plan Summary can add pertinent proposals, evidence, or metrics when the reporting contract calls for them. For example, requests awaiting fulfillment and recommendations that were declined can help explain the reported course of care. Relevant site configurations can help recipients interpret those findings when the contract provides for that context.

A public health eCR report, a registry submission, and feedback to a guideline developer serve different purposes. Confirm the recipient's scope, required terminology, disclosure authorization, and applicable reporting contract. Validate the report against that contract and test that a representative patient record yields the expected report, including the distinction between proposals, orders, and documented events. See [eCase Report](documentation-approach-12-07-cpg-derivative-and-related-assets.html#ecase-report).

#### Connect to Supporting Knowledge {#infobutton}

A contextual link to knowledge can use the guideline's metadata and recommendation citations. An Infobutton uses clinical or user context to help the user discover relevant information. See [HL7 Infobutton](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=208) and [OpenInfobutton](https://www.openinfobutton.org/).

#### Validate Each Derivative {#validate-each-derivative}

Each patient metric, population measure, summary or note, and external report needs its own check with representative cases. The [Validate step](methodology-validate.html#derived-outputs) lists what to check for each kind of output.

#### Evaluate the Implementation {#evaluate-implementation}

Plan evaluation around the decision the guideline supports. Review results at the level where a change can be made. An apparently low rate of completed activities can reflect eligibility logic, unavailable data, routing, a decision to decline care, or incomplete documentation. Inspect individual examples before attributing the pattern to the guideline or workflow. The [Package step](methodology-package.html#evaluation) lists the evaluation questions and the evidence to collect for each.

Keep the strength of the evidence visible. An application log can show that guidance was presented or a suggestion was accepted. Clinical records and outcome evaluation answer what care occurred and what effects followed. See the [Tailor et al. evaluation framework](documentation-approach-cds-implementation-evidence.html#ref-tailor-2023), [Development of Computable Clinical Guideline Artifacts](documentation-approach-04-05-computable-guideline-artifacts.html), and [Keep validation findings separate](documentation-approach-04-guideline-development.html#validation).

#### Interpret Evidence for CDS {#evidence-for-cds}

General CDS studies help frame questions about workflow fit, timely support, care processes, and patient effects. The studies in the selected bibliography report varied results. Some report improvements in desired care, while others document harms such as treatment delays. Choose local measures for both the intended action and unintended effects. See [General CDS effects, workflow, and safety](documentation-approach-cds-implementation-evidence.html#general-cds-effects-workflow-and-safety).

Studies of implementations using FHIR, CQL, CDS Hooks, or SMART App Launch can show how teams shared logic, tested behavior, and handled local data or order mappings. Interpret their conclusions in light of the study design and setting. A retrospective accuracy study answers a different question from a prospective evaluation of care. See [Standards-based CDS and computable guidelines](documentation-approach-cds-implementation-evidence.html#standards-based-cds-and-computable-guidelines) and the [Selected bibliography](documentation-approach-cds-implementation-evidence.html#selected-bibliography-and-public-reading-paths).

#### Learn from Use and Feed Findings Back {#learning-and-feedback}

The 6S model organizes access to evidence across studies, synopses of studies, syntheses, synopses of syntheses, summaries, and systems. At the systems level, knowledge is connected with a patient's information. Use the model to locate relevant evidence and appraise certainty from the evidence itself. A learning health system can connect that delivery back to evaluation and evidence review. It needs governed data, explicit measures, and accountable reviewers to interpret findings. Observed patterns can identify data problems or suggest new research and revision questions. They require further review before they support a change in clinical guidance. See [6S Evidence Pyramid and Learning Health Systems](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html), [DiCenso, Bayley, and Haynes](documentation-approach-cds-implementation-evidence.html#ref-dicenso-2009), and [AHRQ Learning Health Systems](documentation-approach-cds-implementation-evidence.html#ref-ahrq-lhs).

{% include cpg-diagram.html src="cpg-method-iteration.svg" ratio="1200 / 935" alt="Eight activities connect practice to data, data to knowledge, and knowledge to practice around a problem of interest. Findings require review before guidance changes." caption="The feedback cycle connects observations from care to questions for evidence review and guideline development. Traceable data and explicit measures allow reviewers to investigate a finding before deciding what to change." %}

Monitor both guidance that appears inappropriately and guidance that should have appeared. Route findings to the people who own the source recommendation, computable logic, terminology, local data, or workflow. Review changes against affected cases and monitor the revised implementation. See [CDS malfunction review](documentation-approach-cds-implementation-evidence.html#ref-thayer-2024), [Route findings back to the right owner](documentation-approach-04-guideline-development.html#feedback), [Knowledge Implementation](documentation-approach-05-05-knowledge-implementation.html), and the historical [COVID-19 case study](methodology-case-study.html), which illustrates co-development and review under time pressure.

</div>

{% include chapter-navigation.html section="Approach" unit="section" overview="approach.html" previous="documentation-approach-04-guideline-development.html" previous_title="Guideline Development" next="documentation-approach-02-04-knowledge-representation.html" next_title="Knowledge Representation" %}
