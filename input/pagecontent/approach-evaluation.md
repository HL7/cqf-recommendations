The same guideline can support an individual care decision, a patient summary, and an assessment of care across a population. Those uses can share clinical definitions and logic. Each output still needs its own purpose, population or patient scope, time window, interpretation, and validation. In the heart failure example, the case-plan view brings together observations, goals, planned activities, and events. Patient-level metrics for weight and weight change appear alongside those facts so the care team can interpret progress in context. [Congestive heart failure example](examples-chf.html)

### Follow progress for a patient {#metrics}

A metric is a patient-level indicator. It can express progress toward a goal or elapsed time from a proposal to documented care. Specify the facts it uses, the event that starts the interval, the scoring rule, and what a result means. Explain how unavailable or stale data affect the result. For example, a missing administration record may leave fulfillment unknown. Preserve the distinction between a recommendation that was inapplicable, a proposal that was declined, and care explicitly documented as not done.

`CPGComputableMetric` profiles Measure for the definition. `CPGMetricReport` profiles MeasureReport for a patient-specific result. A result can also be exposed as an inferred Case Feature when that representation fits its clinical use. Retain its time and source so the receiving workflow can distinguish the inference from a clinician's assessment. [Metric definition profile](StructureDefinition-cpg-computablemetric.html) · [Metric result profile](StructureDefinition-cpg-metricreport.html)

### Define population measures {#measures}

A population quality measure defines whose care contributes to an assessment of a process or outcome. FHIR Measure expresses the populations and references their logic, often supplied by Libraries. MeasureReport represents the results. A population measure can reuse logic from a guideline, but its measurement population, time window, exclusions, and aggregation can differ from the guideline's applicability criteria. Test the scoring rules with representative patient-level cases before interpreting the rollup. [FHIR R4 Measure](https://hl7.org/fhir/R4/measure.html) · [FHIR R4 MeasureReport](https://hl7.org/fhir/R4/measurereport.html) · [Quality Measure Implementation Guide](https://hl7.org/fhir/us/cqfmeasures/)

### Summarize the case, plan, and progress {#summaries}

State whose care the view covers, which recommendation, strategy, or pathway defines its scope, and whether it describes the current state or a prior point in time. Show the source and time of important facts. Readers need to see which activities were proposed, authorized, or documented as performed, and where information is unavailable.

#### Case Summary {#case-summary}

A Case Summary presents selected Case Features. A GraphDefinition defines the relevant feature graph, and a Composition presents a patient-specific selection of those features. [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html) · [CPGCaseSummary](StructureDefinition-cpg-casesummary.html)

#### Case Plan Summary {#case-plan-summary}

A Case Plan Summary adds pertinent proposals, requests, and events to the patient features. The same definition can support a document or an application view. [CPGCasePlanSummaryDefinition](StructureDefinition-cpg-caseplansummarydefinition.html) · [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html)

#### Case Plan Progressing Note {#case-plan-progressing-note}

A Case Plan Progressing Note documents progress and can include clinical impressions. A form can collect information for the note and reuse descriptive or decision logic. Keep the form's interaction rules separate from the definitions of features and the logic that proposes care. [CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html)

### Report to a defined recipient {#reporting}

Case data defined by case-feature groups or features can also support a report at the end of a pathway. This approach SHOULD be aligned with the eCaseReporting implementation guide. A case or case-plan summary can supply information for an eCase Report, subject to the recipient's scope, required terminology, disclosure authorization, and applicable reporting contract. A public-health eCR report, a registry submission, and feedback to a guideline developer serve different purposes. Confirm the applicable jurisdiction and specification for each. [Electronic Case Reporting Implementation Guide](https://hl7.org/fhir/us/ecr/)

### Connect to supporting knowledge {#infobutton}

A contextual link to knowledge can use the guideline's metadata and recommendation citations. An Infobutton uses clinical or user context to help the user discover relevant information. [HL7 Infobutton](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=208) · [OpenInfobutton](https://www.openinfobutton.org/)

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

<div style="clear: both;">
  <img src="cpg-method-iteration.svg" alt="Eight activities connect practice to data, data to knowledge, and knowledge to practice around a problem of interest. Findings require review before guidance changes." class="img-responsive center-block" width="1000"/>
</div>

Monitor both guidance that appears inappropriately and guidance that should have appeared. Route findings to the people who own the source recommendation, computable logic, terminology, local data, or workflow. Review changes against affected cases and monitor the revised implementation. The historical COVID-19 case study illustrates co-development and review under time pressure. [CDS malfunction review](https://doi.org/10.1093/jamia/ocae187) · [Development feedback](approach-development.html#feedback) · [Historical COVID-19 case study](methodology-case-study.html)

{% include chapter-navigation.html section="Approach" unit="chapter" overview="approach.html" previous="approach-development.html" previous_title="Development and Maintenance" %}
