---
layout: default
title: Development of Computable Clinical Guideline Artifacts
---


## **Development of Computable Clinical Guideline Artifacts**


### Evidence


Evidence and information from the evidence used and referenced in the guideline recommendations may be formalized as FHIR Evidence Resources with their respective Evidence Variables using the EBM-on-FHIR IG.  Similarly, the published guideline narrative may be formalized through the same approach using this CPG-on-FHIR IG as discussed in the Analysis of Evidence <!-- link to - 04.04 !--> section.


### CPG Content and Related Derivatives

1. **Recommendations:** In the CPG context, recommendations are represented and expressed through a profile on the FHIR Plan Definition (CPGRecommendation) largely derived from the ECA Rule profile.  The recommended intervention corresponds to the “action” portion of an ECA rule and is largely expressed as a Request through an Activity Definition.  The applicability criteria and/or decision logic for a recommendation largely corresponds to the “condition” portion of an ECA rule and is largely expressed using a combination of scoped CQL (population criteria, decision logic, inferred data elements) and FHIR Plan Definition (e.g., as a Decision Table). “Events” of the ECA rule, correspond to either the state of or changes to the patient’s clinical condition (data change event) as described in the recommendation (e.g., new diagnosis of, risk score exceeds limit, blood pressure drops below threshold), or an (abstract) patient or clinician workflow activity, the passage of time with respect to some anchoring event, or some combination thereof.  See CPGPlan <!-- link to - 12.03 !--> in Conceptual CPG Knowledge Architecture section for more details on CPGRecommendations.
2. **Guideline & Strategies:**  The broader guideline includes strategies for relating, sequencing, or orchestrating individual (or groups of) recommendations and is represented and expressed through separate profiles on the  FHIR Plan Definition (CPGPathway and CPGStrategy).  A CPGStrategy is used to correlate, orchestrate, and/or provide decision logic between a set of related recommendations often scoped to a particular clinical issue (e.g., diuresis in inpatient heart failure management). A CPGPathway serves a similar function across Strategies and scopes the entire guideline.  See CPGPlan <!-- link to - 12.03 !--> in Conceptual CPG Knowledge Architecture section for more details on CPGStrategies, CPGPathways, and CPGGuidelines.
3. **Metrics and Measures:**  A CPGMetric is a patient level measurement or indicator of recommendation compliance and/or guideline adherence (corresponding to a process measure), reaching a stated goal or objective (corresponding to an end or intermediate outcome), or current status of a clinical activity.  A CPGMeasure is a population level measurement typically corresponding to an aggregate of patient level CPGMetrics and/or other parts of the CPG.  For a CPGMeasure, the initial patient population often corresponds to the CPG eligibility criteria, while the denominator is often constrained by individual recommendation applicability criteria (including exclusion or contraindication criteria), and the numerator may correspond to satisfaction criteria (order placed or activity performed)  for guideline recommendation or proposal compliance in the case of process measures, or goal or threshold attainment in the case of outcome measures.  CPGMeasure Initial Patient Populations definitions and CPGPathwayElligibilityCriteria will likely have significant overlap in many cases.  CPGRecommendation logic (applicability criteria) similarly will overlap with denominator, denominator exclusion, risk stratifications, and numerator criteria.  See CPG Derivative & Related Assets <!-- link to - 12.07 !--> in Conceptual CPG Knowledge Architecture section for more details on CPGMetrics and CPGMeasures.
4. **eCaseReport:**  A CPGeCaseReport is intended to convey the set of data elements required to provide for more detailed outcomes research on the guideline topic itself as well as for a feedback loop for continuous improvement of the specified  guideline.  The data elements for a CPGeCaseReport come from the data requirements (CPGCaseFeatures), key inferences thereof (inferred CPGCaseFeatures), patient specific recommendations (CPGProposals), and the corresponding orders and resulting clinical activities (requests and resultant events from CPGCaseFeatures).  Additional or supplemental data elements (data requirements and inferences) for informing identified guideline gaps or feedback loops may be further specified for inclusion in the CPGeCaseReport. See CPG Derivative & Related Assets <!-- link to - 12.07 !--> in Conceptual CPG Knowledge Architecture section for more details on CPGeCaseReports.

**Value of Computable Guideline Artifacts to Stakeholders:**


**For Guideline Development Group, especially Medical Specialty Societies**- Actionable and meaningful usage of and feedback on guideline recommendations; (automated) data collection of data elements relevant to the scope of the guideline (registries); significant number of process of care level and intermediate- and end-outcome metrics and quality measures scoped to the guideline; active and highly relevant participation in the Learning Health System.


**For Providers and Health Care Organizations**- Nearly automated data collection for clinical registries (internal, professional societies, and accreditation); a significant number of process of care level and intermediate- and end-outcome metrics and quality measures; readily available means to implement, monitor, and measure guideline-directed care; benefits derived from participation in the Learning Health System.


**For the Evidence Ecosystem**- Utility of evidence and new high-value, patient and process of care level evidence to “climb the pyramid”.


**For modern and emerging methods of Knowledge Discovery**- numerous opportunities to leverage value of methods and data assets (data-to-knowledge); new high-value evidence substrate to reason over (enriched data, guideline usage, knowledge artifacts created across the value-chain).  (see section on Knowledge Acquisition) <!-- link to - 05. !-->
