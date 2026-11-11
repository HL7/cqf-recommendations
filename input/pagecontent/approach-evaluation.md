The same guideline can support an individual care decision, a patient summary, and an assessment of care across a population. Those uses can share clinical definitions and logic. Each output still needs its own purpose, population or patient scope, time window, interpretation, and validation. In the heart failure example, the case-plan view brings together observations, goals, planned activities, and events. Patient-level metrics for weight and weight change appear alongside those facts so the care team can interpret progress in context. [Congestive heart failure example](examples-chf.html)

### Follow progress for a patient {#metrics}

A metric is a patient-level indicator. It can express progress toward a goal or elapsed time from a proposal to documented care. Specify the facts it uses, the event that starts the interval, the scoring rule, and what a result means. Explain how unavailable or stale data affect the result. For example, a missing administration record may leave fulfillment unknown. Preserve the distinction between a recommendation that was inapplicable, a proposal that was declined, and care explicitly documented as not done.

`CPGComputableMetric` profiles Measure for the definition. `CPGMetricReport` profiles MeasureReport for a patient-specific result. A result can also be exposed as an inferred Case Feature when that representation fits its clinical use. Retain its time and source so the receiving workflow can distinguish the inference from a clinician's assessment. [Metric definition profile](StructureDefinition-cpg-computablemetric.html) · [Metric result profile](StructureDefinition-cpg-metricreport.html)

An elapsed-time metric can start with a proposal or another Case Feature used in the guideline logic, such as the event that triggered evaluation. A patient outcome metric can compare an observation with a goal or a Case Feature threshold. Composite metrics can bring together several process or intermediate-outcome results. A correlative metric can relate those process results to patient outcomes. Results can inform care directly, appear in summaries and progress notes, or be reused for cohort measurement and reporting.

<div class="new-content" markdown="1">

#### Metric types and results {#metric-types-and-results}

Three things about a metric vary independently. Its type describes what kind of metric it is, its scope identifies the guideline element it evaluates, and its result describes where the patient stands. Keeping them separate lets the same result be shown in the workflow, reused as a Case Feature, or used in a population measure.

The [CPG Measure Type](ValueSet-cpg-measure-type-vs.html) value set identifies two types with coded results. A compliance metric asks whether the care delivered conforms to a single recommendation. An adherence metric, a kind of composite metric, asks whether the requirements of a strategy are met together. Both evaluate the process of care by the care team and patient together.

A result can record a fulfillment window that is still open (pending), an expectation that is temporarily suspended (on hold) or removed by an accepted exemption (exempted), a recommendation that does not apply (not applicable), or insufficient data to decide (unknown). The metric declares criteria such as its exemptions and lookback. See [Metrics](methodology-translate.html#metrics) for the definition rules and [Metric Results](methodology-translate.html#metric-results) for the codes and how to choose a result.

#### Pathway status terms {#pathway-status-terms}

Local implementations may use “on path,” “off path,” and “on with a history off” to describe a patient's status for the pathway as a whole. A “happy path” follows recommendations or strategies that subject matter experts designate as critical. The other activities may have lapses or periods of non-compliance, or may be exempted or out of scope. A “perfect path” means that all were followed on time, with no lapses or periods of non-compliance. The CPG coded results are for compliance and adherence metrics. This guide does not define codes for these pathway terms.

</div>

### Define population measures {#measures}

A population quality measure defines whose care contributes to an assessment of a process or outcome. FHIR Measure defines the population criteria and references the Library that supplies the expression logic. MeasureReport represents the results. A quality measure can reuse guideline expressions, reference a calculated metric or a metric stored as a Case Feature, or relate to a guideline through metadata. Its measurement population, time window, exclusions, and scoring have their own definitions. A population measure can aggregate patient-level results according to those criteria. Test those rules with representative patient-level cases before interpreting results for a care team, facility, or research cohort. [FHIR R4 Measure](https://hl7.org/fhir/R4/measure.html) · [FHIR R4 MeasureReport](https://hl7.org/fhir/R4/measurereport.html) · [Quality Measure Implementation Guide](https://hl7.org/fhir/uv/cqm/index.html)

### Summarize the case, plan, and progress {#summaries}

State whose care the view covers, which recommendation, strategy, or pathway defines its scope, and whether it describes the current state or a prior point in time. Show the source and time of important facts. Readers need to see which activities were proposed, authorized, or documented as performed, and where information is unavailable.

[GraphDefinition $apply](OperationDefinition-cpg-graphdefinition-apply.html) can realize the summary definition for a subject. It evaluates any applicability expression on a link to determine whether to follow it, and uses the target expression or link path to identify the referenced resources. The returned Bundle starts with the Composition and includes the resources it references. Preserve the source definition when presenting or storing a generated summary so it can be reproduced or reviewed.

#### Case Summary {#case-summary}

A Case Summary represents the Case Features and feature groups in scope at a point in time. The features can include events, requests, and metrics, as defined by the guideline. A GraphDefinition defines the feature graph and a Composition presents the patient-specific results. The summary can support clinical review, registries, quality and safety review, or guideline development. [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html) · [CPGCaseSummary](StructureDefinition-cpg-casesummary.html)

#### Case Plan Summary {#case-plan-summary}

A Case Plan Summary adds pertinent proposals, requests, and events to the patient features. It can include evidence supporting proposals and distinguish guidance that is inapplicable, guidance whose criteria have yet to be met, and guidance that has yet to be evaluated. A summary scoped to a prior event can show which strategies the team used to address a recurring concern. The same definition can support a document or an application view. [CPGCasePlanSummaryDefinition](StructureDefinition-cpg-caseplansummarydefinition.html) · [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html)

#### Case Plan Progressing Note {#case-plan-progressing-note}

A Case Plan Progressing Note documents progress and can combine a Case Plan Summary with clinical impressions collected through an adaptive form. The note can capture feedback from the care team on the patient's condition and the use of guideline recommendations. Keep the form's interaction rules separate from the definitions of features, the logic that proposes care, and metric calculations. [CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html) · [SDC Adaptive Forms](https://hl7.org/fhir/uv/sdc/adaptive.html)

### Report to a defined recipient {#reporting}

Case data defined by case-feature groups or features can also support a report at the end of a pathway. §path-1^^data:This approach **SHOULD** be aligned with the eCaseReporting implementation guide.§

A Case Summary can supply patient data for a report. A Case Plan Summary can add pertinent proposals, evidence, or metrics when the reporting contract calls for them. For example, requests awaiting fulfillment and recommendations that were declined can help explain the reported course of care. Relevant site configurations can help recipients interpret those findings when the contract provides for that context.

A public health eCR report, a registry submission, and feedback to a guideline developer serve different purposes. Confirm the recipient's scope, required terminology, disclosure authorization, and applicable reporting contract. Validate the report against that contract and test that a representative patient record yields the expected report, including the distinction between proposals, orders, and documented events. [Electronic Case Reporting Implementation Guide](https://hl7.org/fhir/us/ecr/)

### Connect to supporting knowledge {#infobutton}

A contextual link to knowledge can use the guideline's metadata and recommendation citations. An Infobutton uses clinical or user context to help the user discover relevant information. [HL7 Infobutton](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=208) · [OpenInfobutton](https://www.openinfobutton.org/)

### Validate each derivative {#validate-each-derivative}

| Output | What to check with representative cases |
| --- | --- |
| Patient metric | The clinical meaning, time anchor, scoring rules, and behavior when data are missing or late. |
| Population measure | The population criteria and exclusions, how patient results contribute to the score, and how aggregation is verified. |
| Summary or note | The patient and time scope, source of included facts, and presentation of proposals, authorized care, and documented events. |
| External report | The recipient's contract, required content and terminology, and what data the recipient is authorized to receive. |
{:.grid}

### Evaluate the implementation {#evaluate-implementation}

Plan evaluation around the decision the guideline supports. Review results at the level where a change can be made. An apparently low rate of completed activities can reflect eligibility logic, unavailable data, routing, a decision to decline care, or incomplete documentation. Inspect individual examples before attributing the pattern to the guideline or workflow.

| Evaluation question | Evidence to collect |
| --- | --- |
| Did the team follow its development and review process? | Decisions, their owners, reviewed changes, and disposition of open issues. |
| Does the content preserve its intended meaning and run correctly? | Clinical review, formal conformance, logic tests, and results against representative local data. |
| Can people act on it in the intended setting? | Timeliness, reach, workload, appropriate use and overrides, missed guidance, and failure behavior. |
| What changed in care? | Separately defined care-process and patient-outcome measures, including unintended effects. |
{:.grid}

Keep the strength of the evidence visible. An application log can show that guidance was presented or a suggestion was accepted. Clinical records and outcome evaluation answer what care occurred and what effects followed. [Tailor et al. evaluation framework](https://doi.org/10.1097/JMQ.0000000000000140) · [Development validation](approach-development.html#validation)

### Interpret evidence for CDS {#evidence-for-cds}

General CDS studies help frame questions about workflow fit, timely support, care processes, and patient effects. The studies in the selected bibliography report varied results. Some report improvements in desired care, while others document harms such as treatment delays. Choose local measures for both the intended action and unintended effects. [General CDS effects, workflow, and safety](documentation-approach-cds-implementation-evidence.html#general-cds-effects-workflow-and-safety)

Studies of implementations using FHIR, CQL, CDS Hooks, or SMART App Launch can show how teams shared logic, tested behavior, and handled local data or order mappings. Interpret their conclusions in light of the study design and setting. A retrospective accuracy study answers a different question from a prospective evaluation of care. [Standards-based CDS and computable guidelines](documentation-approach-cds-implementation-evidence.html#standards-based-cds-and-computable-guidelines) · [Selected bibliography](documentation-approach-cds-implementation-evidence.html#selected-bibliography-and-public-reading-paths)

### Learn from use and feed findings back {#learning-and-feedback}

The 6S model organizes access to evidence across studies, synopses of studies, syntheses, synopses of syntheses, summaries, and systems. At the systems level, knowledge is connected with a patient's information. Use the model to locate relevant evidence and appraise certainty from the evidence itself. A learning health system can connect that delivery back to evaluation and evidence review. It needs governed data, explicit measures, and accountable reviewers to interpret findings. Observed patterns can identify data problems or suggest new research and revision questions. They require further review before they support a change in clinical guidance. [DiCenso, Bayley, and Haynes](https://doi.org/10.7326/0003-4819-151-6-200909150-02002) · [AHRQ Learning Health Systems](https://www.ahrq.gov/learning-health-systems/about.html)

{% include cpg-diagram.html src="cpg-method-iteration.svg" alt="Eight activities connect practice to data, data to knowledge, and knowledge to practice around a problem of interest. Findings require review before guidance changes." center="true" %}

Monitor both guidance that appears inappropriately and guidance that should have appeared. Route findings to the people who own the source recommendation, computable logic, terminology, local data, or workflow. Review changes against affected cases and monitor the revised implementation. The historical COVID-19 case study illustrates co-development and review under time pressure. [CDS malfunction review](https://doi.org/10.1093/jamia/ocae187) · [Development feedback](approach-development.html#feedback) · [Historical COVID-19 case study](methodology-case-study.html)

{% include chapter-navigation.html section="Approach" unit="chapter" overview="approach.html" previous="approach-development.html" previous_title="Development and Maintenance" %}
