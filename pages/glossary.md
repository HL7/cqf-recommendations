---
layout: default
title: Glossary
---

# 9.0.0 Glossary

## Activity

An [activity](documentation-approach-09-methods-of-implementation.html#activity-processing-semantics) refers generally to actions or processes taken as part of the delivery of guideline-directed care. This implementation guide defines specific activity types and provides FHIR profiles for each activity in the _definition_, _request_, and _event_ categories, and activities generally follow a lifecycle from _proposed_ to _planned_, to _ordered_, to _progressing_ to _completed_.

## Adherence

Adherence is where the patient is with respect to the pathway and strategies, and can be thought of (and implemented as) a special case of a composite metric. Adherence is often used in localized implementations of clinical practice guidelines (or pathways).

The colloquial terms “on path”, “off path”, “happy path”, and “perfect path” (as well as on with a history off) refer to the current status of the patient with respect to the compilation of guideline recommendations. Adherence is a rollup of all or many of the compliance and/or intermediate-outcome metrics. The business logic for determining adherence is often determined at the level of local implementation but may be recommended by the guideline development group as well. Of note to the knowledge engineer, adherence metrics are often scoped to the pathway and/or strategies within the overall pathway.

## Assertion

An assertion refers to a case feature that is documented as part of the patient's medical record. Note that even case features that are defined with inference expressions may be recorded as assertions if they are documented directly by the clinician user, rather than calculated as specified by the inference expression.

## Assessment

A case feature that requires clinical judgment and/or [assessment](documentation-approach-12-04-cpg-case.html#case-features-from-clinician-assessments) (including impression) and therefore requires real-time extraction or interaction with the clinician user. Such case features often necessitate clinician prompting and/or documentation requirements to resolve and thus may be modeled as their own rules (as part of the triggering, decision, or orchestration logic within individual recommendations, strategies, and/or the pathway) or as adaptive forms (see Adaptive Questionnaire) scoped to the guideline element where they are used.

## Case

A [Case](documentation-approach-12-04-cpg-case.html) consists of patient descriptors including: clinical presentation and progression, physical exam findings, diagnostic evaluations, physiological and pathophysiological assessments, past and current diagnoses, exposures, genetic markers and family history, risk and severity scores, response to treatment, and end and intermediate outcomes. The Case, through its Case Features, is the comprehensive, detailed, and contextually relevant information about the patient with respect to a the full scope of the guideline and its recommendations using clinically meaningful descriptions of individual patient’s current and historical state of health, disease, treatment, and risks.

## Case Feature

The [features](documentation-approach-12-04-cpg-case.html#case-features) of the case are the clinically meaningful and relevant data elements or information that describe the current and relevant past state of the patient that is pertinent to the scope of the guideline recommendations and related decisions to be considered. These typically describe the clinicopathophysiology pertaining to the condition(s) and state of disease, potential intervention(s), and contraindications related to guideline recommendations. These may include patient presentation (e.g., symptoms), clinical assessments and observations (e.g., physical findings, labs, vitals, diagnostic results, -omic profiles), diagnoses (e.g., problems or conditions) including temporally related risk and severity scores, exposures (e.g., various current and prior interventions such as medications/substances and procedures), family and travel history, as well as goals and preferences that may be relevant to the scope of the guideline and information needs for related clinical decision making and care processes. Furthermore, case features that correlate to complications of the known or suspected disease(s) as well as suspected or potential side effects of the various interventions scoped to the guideline should be considered. Lastly, current and prior orders and prescriptions may be considered as case features since they convey timing and intent of interventions and may be the initial or only signal thereof.

## Compliance

Compliance is where the patient is with respect to the individual recommendations (and in particular the workflow aspects). Compliance is often determined (and tracked) using metrics, which often correspond with, or are aggregated into, public health indicators or other population-level health analytics.

## Definition

A definition refers to the general pattern of definitional resources used to describe guideline elements in a patient-independent way. These definitions are _instantiated_ as _requests_ and then local workflow is performed to move the activity from a _request_ to an _event_.

## Event

An _event_ is the basic pattern used in FHIR workflow to represent in-progress and completed activities. Event resources are used in this implementation guide to capture the _in-progress_ and _completed_ stages of activities.

## Guideline

Clinical practice [guidelines](documentation-approach-04-guideline-development.html) are systematically developed statements to assist clinical practitioner and patient decisions about appropriate care for specific clinical conditions, procedures, and/or similarly scoped activities. Guidelines consist of recommendations for patient care, which are based on scientific research and data (evidence), vetted through rigorous processes of a review and synthesis by recognized domain and methodological experts and other key stakeholders (e.g. patient and caregiver advocates) to guide healthcare decisions and activities for defined scope. A guideline may consist of one or more recommendations, contextualizing information, the possible means or strategies for bringing together or orchestrating recommendations, and other relevant considerations.

## Inference

An [inference](documentation-approach-12-04-cpg-case.html#derived-or-inferred-case-features) refers to a case feature that is inferred or derived from other case features such as medical calculations (e.g., BMI, eGFR, Anion Gap, hours since intervention, post-op hemoglobin drop), risk and severity scores (MELD Score, Seattle Heart Failure Model, CHA2DS2-VASc score), and case features requiring contextualization (e.g., pre-op hemoglobin, discharge weight, admission oxygen saturation, most recent blood pressure).

## Intervention

An [intervention](documentation-approach-12-conceptual-knowledge-architecture.html) is a particular implementation strategy and represents a method for the delivery of a recommendation, often corresponding to a specific order or request, and fulfilled by an event.

## Measure

In this implementation guide, we refer to a quality measure when discussing a clinical quality measure, public health indicator, or population analytics measure. A [quality measure](documentation-approach-12-07-cpg-derivative-and-related-assets.html#cpgmeasure-ecqms-) is a quantitative tool to assess the performance of an individual or organization with respect to a specified process or outcome via the measurement of actions, processes, or outcomes of clinical care. Quality measures are often derived from clinical guidelines and are designed to determine whether the appropriate care has been provided given a set of clinical criteria and an evidence base. A FHIR Measure Resource represents a structured, computable definition of such a quality measure.

More details on how to use and implement a quality measure can be found in the Quality Measure Implementation Guide ([Measure IG](http://hl7.org/fhir/us/cqfmeasures)). The Quality Measure Implementation Guide describes an approach to representing electronic Clinical Quality Measures (eCQMs) using the FHIR Clinical Reasoning Module and Clinical Quality Language (CQL) using the FHIR Measure Resource.

## Metric

A [metric](documentation-approach-12-07-cpg-derivative-and-related-assets.html#cpgmetrics) is a patient-level measurement or indicator of recommendation compliance and/or guideline adherence (corresponding to a process measure), reaching a stated goal or objective (corresponding to an end or intermediate outcome), or current status of a clinical activity. It is often related to a patient-specific recommendation (i.e. a proposal), usually as a process measurement, evaluating compliance (i.e., that a request and/or event fulfilled the proposal) and/or qualifying the timing between the proposal, its resulting request, and/or the fulfilling event(s).

## Pathway

[Pathways](documentation-approach-12-03-cpg-plan.html#pathways) convey the full scope of guideline recommendations in a manner that can be implemented for the purpose of guiding patient care within a singular CPG. In part, pathways serve a similar yet higher order function as strategies, and serve the function of addressing interdependencies such as decision and orchestration logic across multiple concerns.

## Plan

The [Plan](documentation-approach-12-03-cpg-plan.html) describes what treatments, test, consults and other interventions need done to address a particular clinical concern (e.g., a disease or condition, recovery from a procedure, prevention including secondary and tertiary prevention, contingencies for possible complications).

## Proposal

A _proposal_ is a patient-specific, contextualized instantiation of a _definition_ of some _activity_ to be performed. From the perspective of the clinician user, proposals are typically provided as part of cognitive or decision support integrations, and may be accepted, ignored, rejected, or rejected with rationale.

## Recommendation

[Recommendations](documentation-approach-12-03-cpg-plan.html#recommendations) are proposals pertaining to the best course of action put forth by an authoritative source or body related to a condition, procedure, clinical decision, or activity. They are often expressed as summary tables with a column for succinct, clear, and specific narrative descriptions of the recommendation as well as additional columns for the directionality of the recommendation (to do or not do an activity), strength, and quality of evidence for each recommendation. They may further include additional visual aids such as decision trees and/or flow diagrams. Often, they also call out portions of a recommendation and/or how the recommendations hang together that lack evidence and may have relied on expert consensus.

## Request

A _request_ is the basic pattern used in FHIR workflow to represent proposed, planned, or ordered activities. Request resources are used in this implementation guide to capture the _proposal_, _plan_, and _order_ stages of activities.

## Strategy

[Strategies](documentation-approach-12-03-cpg-plan.html#strategies) are approaches for combining, orchestrating, or associating related guideline recommendations and typically scope to a particular concern addressed within the guideline. Strategies may be longitudinal, require temporal orchestration, and reuse or repurpose data elements (CPGCaseFeatures) and other components (e.g., the attributes and status of requests and events) of the CPGRecommendations it scopes.

## Workflow

[Workflow](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html#workflow), refers to the activities in real-world healthcare delivery settings, the human-computer interaction activities which are carried out in the context of clinical information systems (e.g., EHRs), and even some of the interaction within and between those systems. This often refers to human task flow, information flow, and patient flow. Clinical workflow is the description, abstraction, or depiction of clinical work that includes the physical, cognitive, coordination, and computational tasks or activities carried out by individual and teams of clinicians along with other staff and various resources using specialized knowledge, vast amounts and varieties of information, and numerous tools or artifacts collectively to achieve the goal of delivering the safest and highest quality care to individual patients as well as populations of patients or the broader public. Clinical work occurs in a broader system, social, legal, regulatory, and professional context that can greatly influence how this work is carried out.

The CPG-IG explicitly does not address local workflows due to their significant variation, complexity, and need for consideration for local factors (e.g., specific resources and resource type, policies, customized or localized tooling), as well as to avoid conflating detailed clinical workflow descriptions/definitions with the flow of abstract clinical activities often necessary to describe as part of the care process in guideline recommendations.
