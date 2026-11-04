A [Guideline](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-guideline) package can support summaries, patient-level indicators, population measures, documentation and reporting. Reuse the same clinical definitions where appropriate, but give each derivative an explicit purpose, data scope, time basis and validation plan. Similar inputs do not make two outputs clinically equivalent.

<a id="cpgguideline"></a>

### Guideline

[CPGComputableGuideline](StructureDefinition-cpg-computableguideline.html) profiles ImplementationGuide to describe a computable guideline. The package brings together definitions, terminology, profiles, logic, examples and documentation, including dependencies. The ImplementationGuide resource identifies package content; it does not embed every artifact as a nested resource or make every optional capability mandatory for every consumer.

A consumer can implement a scoped subset, provided its dependencies and applicable conformance obligations are understood. Distinguish the guideline's package identity from the canonical identity/version of each artifact. See [knowledge assets](documentation-approach-06-02-knowledge-assets.html) and [methodology packaging](methodology.html#packaging).

<a id="cpgmetrics"></a>

### Metrics

A [Metric](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-metric) is a patient-level indicator, such as time from a proposal to a documented action or a value relative to a clinical goal. [CPGComputableMetric](StructureDefinition-cpg-computablemetric.html) profiles Measure for its definition; [CPGMetricReport](StructureDefinition-cpg-metricreport.html) profiles MeasureReport for a patient-specific result. A result can also be exposed as an inferred case feature when the chosen clinical representation supports that purpose. Do not assume every metric is an Observation or every score is a quality measure.

Specify the anchor event, time interval, numerator/denominator or scoring rule as appropriate, missing-data behavior and interpretation. An “adherence” rollup needs an explicit definition; an unselected proposal or absent event record does not by itself demonstrate inappropriate care.

<a id="cpgmeasure-ecqms----rename-item-in-ecqm-to-population-and-feature-make-clear-an-ecqm-points-to-multiple-cases-use-1-many--------"></a>

<a id="cpgmeasure-ecqms"></a>

### Measure (eCQMs)

A population quality [Measure](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-measure) defines which patients and events contribute to a process or outcome assessment. FHIR [Measure](https://hl7.org/fhir/R4/measure.html) supplies the measure structure and expression references; associated Libraries can supply the logic. [MeasureReport](https://hl7.org/fhir/R4/measurereport.html) represents evaluation results.

A measure can reuse guideline data definitions and expressions, but its measurement population, time window, exclusions and aggregation may differ from recommendation applicability. Validate that translation explicitly. The [Quality Measure Implementation Guide](https://hl7.org/fhir/us/cqfmeasures/) provides separate measure-authoring guidance; consult the applicable published edition without changing this guide's R4 contracts.

<a id="cpgcasesummary"></a>

### Case Summary

A [Case Summary](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-summary) presents selected patient information. [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html) uses GraphDefinition to define the relevant feature graph. [CPGCaseSummary](StructureDefinition-cpg-casesummary.html) uses Composition to present a patient-specific selection of those features. State whether it describes “now,” a previous encounter or another time point, and retain sources and unavailable information.

<a id="cpgcaseplansummaryview"></a>

### Case Plan Summary

The [Case Plan Summary](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-plan-summary) combines patient features with proposed care and pertinent supporting information. Its exact profiles are [CPGCasePlanSummaryDefinition](StructureDefinition-cpg-caseplansummarydefinition.html), based on GraphDefinition, and [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html), based on Composition.

A view can be scoped to a recommendation, strategy or pathway. Distinguish an inapplicable recommendation from one not yet evaluated, and distinguish suggested care from authorized or completed care. The presentation can be a document or an application view; the definition does not prescribe a particular user interface.

<a id="cpgcaseplanprogressingnote"></a>

### Case Plan Progressing Note

The [Case Plan Progressing Note](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-plan-progressing-note) uses [CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html) to document progression, including clinical impressions. A form can collect information for the note while reusing descriptive and decision logic. Keep form behavior separate from the clinical meaning of the features and from the rules proposing care.

<a id="cpgecasereport"></a>

### eCase Report

An [eCase Report](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-ecase-report) can use guideline information to meet an applicable reporting requirement. A case or case-plan summary can supply source information, but the report still has to satisfy the recipient's scope, terminology, authorization and applicable reporting contract. The [workflow page](documentation-approach-12-06-cpg-common-pathway.html) retains this guide's expectation to align this approach with eCaseReporting.

The [electronic case reporting guide](https://hl7.org/fhir/us/ecr/) is a separate specification. A quality registry submission or feedback package to a guideline developer is not automatically a public-health eCR document. Check the appropriate jurisdiction and published edition before implementation.

### Infobutton

An [HL7 Infobutton](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=208) uses clinical/user context to link to relevant knowledge. Guideline metadata and recommendation citations can support discovery without evaluating all patient-specific applicability logic. [OpenInfobutton](https://www.openinfobutton.org/) is an implementation resource.

### Validate each derivative

| Output | Review beyond shared source logic |
|---|---|
| Patient indicator | Clinical meaning, temporal anchors and missing-data interpretation |
| Population measure | Population/scoring rules and aggregation validity |
| Summary or note | Scope, provenance, time and distinction between proposals and care delivered |
| External report | Recipient contract, required content and authorized disclosure |

Reuse can reduce duplication, but correctness, usability and outcomes remain separate questions. The [evaluation framework of Tailor et al.](https://doi.org/10.1097/JMQ.0000000000000140) distinguishes process, product and outcome evaluation; its illustrative case did not establish clinical outcome benefit.
