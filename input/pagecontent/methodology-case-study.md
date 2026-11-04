### Introduction

**Historical worked example: ACEP COVID-19 emergency-department severity classification and disposition guidance.** This account records the team's work as described in **November 2020**, including the September 2020 narrative tool. It demonstrates knowledge-engineering work products and review. It is not current COVID-19 advice, a clinical update, or evidence that an implementation improved patient outcomes.

#### Problem Statement

During 2020, a coalition of nearly fifty private-sector organizations organized work on rapidly disseminating computable COVID-19 guidance. The use case concerned classifying patients presenting to emergency departments and supporting disposition decisions. The team used a rapid evidence review in a novel-disease context where evidence was limited.

#### Team

The COVID-19 Digital Guideline Working Group drew on CDC's Adapting Clinical Guidelines for the Digital Age initiative and organized program management, clinical content, knowledge engineering, terminology, validation, delivery/dissemination, and implementation responsibilities. It also consulted HL7 clinical decision support/informatics expertise. Clinical, subject-matter knowledge-engineering, and technical knowledge-engineering roles reviewed work together.

#### Process Overview

<div style="clear: both;">
  <img src="cpg-method-case-study.svg" alt="The historical 2020 project connected a narrative draft, explicit decisions and concepts, optional formal models, FHIR/CQL artifacts, and test/package work." class="img-responsive center-block" width="1000"/>
</div>


| Stage | Historical work product | Purpose of review |
| --- | --- | --- |
| Scope and draft | Rapid-review material, use cases, initial severity/disposition narrative | Agree the clinical problem, audience, setting, and provisional guidance |
| Make meaning explicit | Structured recommendation template, concepts/data dictionary, decision flow, case presentations | Resolve definitions, exceptions, timing and ambiguities with clinical authors |
| Formalize | Terminology/value sets, clinical ontology, DMN decision models, CMMN care-process models | Review concept, inference, and orchestration behavior individually and together |
| Express in FHIR/CQL | Candidate profiles, terminology, libraries, activity/recommendation/strategy/pathway definitions | Preserve source meaning across representations and identify translation limitations |
| Test and distribute | Example/test Bundles, validation findings, narrative and artifact package | Check expected behavior, dependencies, documentation and remaining implementation work |
{:.grid}

### Process In-Depth

#### Scope Guideline and Review Evidence

The clinical content team included frontline emergency physicians and ACEP participants. It scoped ED assessment and disposition, reviewed available evidence, and met weekly for approximately eight weeks during initial development. The source account noted that further updates were still under discussion in November 2020. This cadence describes that project; it does not establish a general time-to-implementation advantage.

#### Initial Draft of Guidance and Recommendations

The historical tool combined an initial clinical assessment with subsequent diagnostic information to inform five severity classifications and disposition recommendations. Assessment continued as information changed. Its ED model included escalation assumptions and a critical-care fast track. Those are descriptions of the 2020 source, not instructions for present care; consult the historical source for the original clinical details.

<a id="structured-information"></a>

#### Structuring and Making Explicit Content from Guideline Development Process

Subject-matter knowledge engineers attended clinical discussions and captured information in a structured template: recommendation narrative; PICOTS; rationale and evidence; data and clinical concepts; decision/orchestration logic; interventions; workflow; candidate metrics; and clinical cases/user stories. The source account says the team elected **not to use recommendation-strength and evidence-quality ratings** for this emergency guidance. That historical choice is not an exemption from this IG's current [rating requirements](methodology-select.html#guideline-supporting-information).

Some candidate concepts were collected for potential registry/research feedback even when not required by the recommendation logic. Required decision inputs and potential secondary-use data therefore needed separate scope and justification.

<a id="concepts-and-data-elements-for-structured-information"></a>
<a id="concepts-from-template-and-draft-guideline"></a>
<a id="concept-maps-as-needed"></a>

#### Identification and Description of Initial Clinical Concepts and Data Elements used in the Guideline

The team assembled a spreadsheet of concepts, definitions, candidate data elements, terminology/value-set choices, and potential local/interface mappings. Review linked these concepts back to the structured template and decision flow. Concept maps were used where useful to reconcile representations; a mapping did not by itself prove equivalence or local data availability.

<a id="review-and-cross-reference-template-concept-definitions-and-flow-diagram"></a>

#### Create Decision Flow Diagrams

Decision flows made the relationship among data, assessments, and recommendations inspectable. Cross-referencing the template, concepts, and flow exposed missing definitions and conflicting interpretations. Clinical authors resolved questions and revised the narrative; engineers revised the corresponding representations.

<a id="formalize-terminologies-codes-value-sets-mappings"></a>
<a id="iterate-update-draft-of-guideline"></a>
<a id="term-enrichment"></a>
<a id="cross-functional-team-review-open-questions-and-resolution-of-ambiguities"></a>
<a id="iterate-update-draft-of-guideline-based-on-feedback-from-community-ke-team"></a>
<a id="translate-case-presentations-into-case-examples-test-cases"></a>

<a id="term-enrichment-"></a>

<a id="iterate-update-draft-of-guideline-based-on-feedback-from-community--ke-team"></a>

#### Formalize Terminologies and Resolve Ambiguities

The terminology and clinical teams reviewed candidate codes/value sets and enriched concept definitions. Cross-functional reviews tracked open questions, assigned owners, and recorded resolutions or limitations. Clinical cases became test cases with expected outcomes, rather than examples generated only after the logic was implemented.

<a id="common-clinical-care-process-ontology-c3po"></a>

#### Finalize Clinical Ontology

The project explored a Common Clinical Care Process Ontology (C3PO) to organize concepts, roles, activities, information, and relationships. Its design reused existing ontologies, recorded version dependencies, and distinguished subsets, extensions, and bridge mappings. This was a project approach, not an ontology required by this IG.

#### Overall Translation Approach from L1/L2 Work-Products to L3 Artifacts

Different source models addressed different kinds of knowledge. Their target FHIR representation depends on clinical and processing meaning, not simply the source language. The table summarizes candidate mappings from the historical approach; it does not assert a general lossless conversion.

| Historical source work | Candidate FHIR/CQL expression | Review needed |
| --- | --- | --- |
| Concepts, mappings, data definitions | ConceptMap, terminology, data requirements, appropriate StructureDefinition profiles | Meaning, datatype, units/time, terminology scope and local representation |
| DMN decisions/FEEL expressions | CQL libraries and applicable PlanDefinition conditions/actions | Data retrieval, null/unknown behavior, operators and expected results |
| CMMN case/process models | PlanDefinition structures and referenced definitions | Triggers, applicability, task responsibility, timing and execution support |
| Candidate patient summaries and metrics | Appropriate summary/report resources and measure artifacts where specified | Definition versus instance, population versus patient scope, required data and validation |
{:.grid}

<a id="initial-draft-of-computable-decision-logic-decision-tables-in-dmn"></a>
<a id="refine-decision-logic-tables-and-inferred-clinical-concepts-dmn"></a>

#### Refine Decision Logic and Inferred Clinical Concepts

DMN models formalized assessments and inferences, separating data retrieval/projection, calculations, classifications, and indications/dispositions. Local inference structures did not have to mirror whole FHIR resources. Review needed to preserve clinical meaning at each interface, including when a result should be re-evaluated.

<a id="pathway-and-strategies"></a>
<a id="draft-pathway-and-strategy-logic-orchestration-cmmn"></a>

#### Draft Pathway and Strategy Logic and Orchestration

CMMN models explored event/condition-driven coordination of assessment, information gathering, and intervention tasks. They distinguished decisions from human actions and allowed simulation of example cases. Runtime behavior still depended on the selected modeling/execution environment; these models did not make a proposed intervention equivalent to a completed clinical action.

<a id="cross-functional-team-reviews-draft-computable-expressions-models"></a>

#### Cross-Functional Team Reviews Draft Computable Expressions and Models

Clinical content, subject-matter engineering, and technical engineering teams reviewed the ontology, DMN decisions, and CMMN orchestration separately and together. They used walkthroughs/simulations, documented corrections, and returned clinical clarifications to the content team. Out-of-scope or unresolved implications remained explicit.

#### Final Narrative Guideline

The source account describes dissemination of the narrative PDF through ACEP and shows a September 2020 version. Historical source locations are retained below. A current page at one of these locations may have changed since this account; neither that page nor this walkthrough is a substitute for current clinical guidance.

<a id="finalize-expressions-models"></a>

#### Finalize Expressions and Models

The team combined models and checked their interfaces: events/tasks, consumed/produced information, concept definitions, and the time at which expressions were evaluated. Agreement among diagrams was not sufficient; source and target results needed case-based comparison.

<a id="informing-cpg-ig-knowledge-architecture-and-expression-using-cpg-profiles"></a>
<a id="translate-models-into-cpg-profiles-bpm-cpg-profiled-plan-defscql"></a>

<a id="translate-models-into-cpg-profiles-bpm--cpg-profiled-plan-defscql"></a>

#### Translate Models into CPG Profiles

The approach targeted FHIR/CQL artifacts for recommendation, strategy, pathway, and activity definitions; data features; terminology; and supporting expressions. The historical account discussed differences between FEEL and CQL, including unknown/null handling, retrieval, terminology, and operators. Consequently, apparent similarity did not establish bidirectional semantic equivalence. See [optional BPM+ mappings](documentation-methodology.html).

#### Derive Additional CPG Assets

The team considered deriving questionnaires, recommendations, and population measures from the models. Such derivation adds design decisions: a decision input does not uniquely define a form, and a recommendation does not uniquely define measure populations, exclusions, timing, or outcomes. Each derivative needs its own specification and validation.

<a id="validate-cpg-assets-against-test-cases-fhir-bundles"></a>

#### Validate CPG Assets against Test Cases

FHIR test Bundles and suitable engines/sandboxes could exercise data extraction, inferred features, recommendations, and measures. The source account identifies these validation opportunities; it does not provide a controlled clinical-outcome evaluation or establish production deployment at every target site. The later [evaluation-framework paper](https://doi.org/10.1097/JMQ.0000000000000140) uses this project illustratively and explicitly limits outcome conclusions.

<a id="package-all-cpg-work-products-in-composite-cpg-asset-profiled-ig-resource"></a>

#### Package all CPG Work Products

Preserve the narrative, semi-structured decisions, artifacts, terminology, dependencies, cases, and review findings together. This IG's [current packaging guidance](methodology.html#packaging) uses content IG publication or artifact-repository packaging, including CRMIManifestLibrary as appropriate. Present-day packaging guidance is separate from the historical team's completed work.

### Lessons for Implementors

Use linked work products to expose clinical ambiguities early, compare representations against the same approved cases, and distinguish proposed derivations from implemented capabilities. Preserve the source date and the evidence limits. For a current project, follow [Methodology](methodology.html) and retain the separate [validation tracks](documentation-approach-05-04-knowledge-execution-and-validation.html).

### Historical Source Locations

- [ACEP tool page, original linked location](https://www.google.com/url?q=https://www.acep.org/corona/COVID-19-alert/covid-19-articles/covid-19-severity-classification-tool-now-available/&sa=D&ust=1606246815901000&usg=AOvVaw2uMkX1wZE0o4UGESgNYFp4).
- [ACEP September 2020 tool PDF, original linked location](https://www.google.com/url?q=https://www.acep.org/globalassets/sites/acep/media/covid-19-main/acep_evidencecare_covid19severitytool.pdf&sa=D&ust=1606246815901000&usg=AOvVaw3ZqRn2_41xoIThVUtDt2kJ).
- [ACEP tool page, later source link retained](https://www.google.com/url?q=https://www.acep.org/corona/COVID-19-alert/covid-19-articles/covid-19-severity-classification-tool-now-available/&sa=D&ust=1606246815936000&usg=AOvVaw1M69Qy2HOG1O8RaXAN1tiY).
