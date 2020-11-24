---
layout: default
title: Conceptual Knowledge Architecture
---

# CPG Knowledge Architecture-Conceptual Perspective

The conceptual knowledge architecture for the CPG describes how the concepts from a guideline and its recommendations described in the preceding sections are realized as computable knowledge assets. The CPG knowledge architecture provides the framework through which the knowledge engineering team realizes the guideline, its recommendations, and their various features through explicit formalisms and ultimately as information. The CPG conceptual knowledge architecture together with the implementation instructions and examples in the [Methodology](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-methodology.html) section provide the means to develop and concretize a CPG representation that can be consumed through various mechanisms in end-user workflows.

Covered in this section:



*   [Separation of Concerns in the CPG](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-01-separations-of-concerns-in-the-cpg.html)
*   [Separating and Defining Case, Plan, and Workflow](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html)
    *   [Plan](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-03-cpg-plan.html)
    *   [Case](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-04-cpg-case.html)
    *   [Care Plan](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-05-cpg-careplan.html)
*   [Workflow and Common Pathway](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-06-cpg-common-pathway.html)
*   [Derivative & Related Assets](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-07-cpg-derivative-and-related-assets.html)

FIG. 59. The CPG Pathway Definition that contains all the CPG-specific knowledge content and assets including the CPGRecommendations (and CPGStrategies); The CPGCase that scopes all the required data elements (CPGFeatures) including many of the patient-specific inferences thereon (inferred CPGCaseFeatures); and the CPGCarePlan that includes the patient-specific recommendations (CPGProposals) and any resulting or relevant orders, prescriptions, scheduling (CPGRequests) and the data elements representing the events that fulfill these requests (a subset of the CPGCaseFeatures)

<img src="assets/images/CPG-12-00.png" alt="CPG Pathway Definition" class="img-responsive img-rounded center-block"/>

## Separation of Concerns

Separation of concerns is a design principle that creates a distinct and focused attention on each aspect of the domain or topic…”.[1](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-conceptual-knowledge-architecture.html#1) This concept has been used to address efficient and effective approaches in software engineering, particularly as they pertain to developing larger, more complex information systems. (ref) Perhaps the most common application of this principle is to a three-tiered architecture (i.e. data, logic, UI) and corresponds to the [Tiers of Functionality](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-07-tiers-of-functionality.html) discussed in its own section.

In healthcare, a notable and critical axis of separation is by kind of process, including: 1) patient clinicopathological (i.e., pathophysiological and correlated clinical manifestations) processes, inclusive of normal physiology (CPGCase); 2) clinical decision-making and corresponding care process abstracted from the specifics of a given care setting (CPGPlan); and 3) care delivery process or clinical workflow by which the care processes are carried out in the context of a specific care setting where multiple patients and healthcare professionals undergo, situational activities, which may be inclusive of the clinical information system or EHRs used, in part, to undertake these activities. The CPG-IG knowledge architecture is designed to respect the separation of these concerns as discussed below.

FIG. 60. Illustrating the separation of the Case (patient clinicopathophysiological processes and their manifestations and qualifications thereof), the Plan (the approach to the patient’s current, historical, and potential future state of disease and well-being including medical decision-making), and the Workflow (how the Plan is implemented either through interactions with clinical information systems or through real-world human tasks and activities).

<img src="assets/images/CPG-12-01.png" alt="Separation of Concerns" class="img-responsive img-rounded center-block" width=300/>

Disease/ condition, intervention (e.g., procedure, therapy), and/or diagnostic (e.g., imaging, tests) as well as care setting (e.g., ambulatory, home, inpatient, ED, ICU) and generalized types of care activities (e.g., surveillance, prevention, diagnostic workup, treatment planning, therapeutic response, recovery/convalescence, survivorship) can all be conceptualized further as separations of concerns. These separations are typically addressed through the scoping exercise of the guideline development group and may further be addressed by entirely distinct CPG’s or by strategies within individual CPG’s.

Lastly, a key separation of importance to this implementation guide is significantly related to the clinical workflow separation mentioned above, which itself may be separated into the real-world care delivery activities in those activities that are carried out in the context of clinical information systems (e.g., EHRs). This separation is discussed in detail in the corresponding section on [Workflow](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-06-cpg-common-pathway.html).

Further details on the [CPG Separation of Concerns](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-01-separations-of-concerns-in-the-cpg.html) and issues related to Separating and [Defining Case, Plan, and Workflow](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html) can be found in their respective subsections in the [CPG Knowledge Architecture](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-conceptual-knowledge-architecture.html) section.


## [Separating and Defining Case, Plan, and Workflow](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html)


#### Case

From the domain perspective, the case is the relevant information that describes an individual patient’s current and historical state of health, disease, and risks. This includes comprehensive, detailed descriptions of the current and relevant historical clinicopathological course of the patient. This is key information to sufficiently depict the patient digitally for the purpose of making appropriate and timely medical decisions in a given situation. 

An overview of the Case is covered below for context and details are covered in the section on the [CPGCase](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-04-cpg-case.html).


#### Plan

Providers formulate an approach, or “plan”, for how they intend to address the active clinical concerns of the patient taking into account the patient’s goals and preferences. This includes current interventions, takes into account prior and current response to those interventions, and formulates an approach to assess and address current, emerging, or potential clinical concerns. A plan consists of ordering, prescribing, and/or scheduling medications, procedures, diagnostics, and appointments . [Plan, Planning, and Care Plan](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-02-separating-and-defining-case-plan-[and-workflow.html) is addressed in further detail in the subsection.

An overview of the Plan is covered below for context and details are covered in the section on the [CPGPlan](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-03-cpg-plan.html).


#### Workflow

This implementation guide explicitly does not address local workflows due to their significant variation, complexity, and need for consideration for local factors (e.g., specific resources and resource type, policies, customized or localized tooling), as well as to avoid conflating detailed clinical workflow descriptions/definitions with the flow of abstract clinical activities often necessary to describe as part of the care process in guideline recommendations. The CPG-IG does this through several mechanisms including “the common pathway” (i.e., an abstraction of high-level clinical workflows), shared information (e.g., CPGCaseFeatures), and reuse of the same standards for clinical information system activities (e.g., requests and their lifecycle, task, and workflow status) and interventions (e.g., Adaptive Forms, CDSHooks, etc.).

An overview of Workflow is covered below for context and details are covered in the section on Workflow and the [Common Pathway](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-06-cpg-common-pathway.html).


## [Boundary Issues at the Separation of Domain Concerns](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html)

Theses specific issues are discussed in more detail in the subsection on Separating and [Defining Case, Plan, and Workflow](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-01-separations-of-concerns-in-the-cpg.html) and the principles for addressing them are described in the section on [Knowledge Architecture](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-06-03-knowledge-architecture.html)


#### Examples of Boundary Issues in the CPG covered in detail

*   Abstract, Local, and EHR (clinical information system) Workflow
*   Clinical Assessment- bridging Case and Plan
*   Proposals, Requests, and Events- Case or Care Plan? Some in Both?
*   Plan or Workflow-see sections on [Knowledge Implementation](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-05-05-knowledge-implementation.html) and [Separating and Defining Case, Plan, and Workflow](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html).
*   Case and Workflow- information remains in appropriate data elements and inferences thereon in their appropriate concern


## CPG Formalizations of Domain Concerns & Concepts


### CPGCase, CPGPlan, and CPGCarePlan


#### [Plan](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-03-cpg-plan.html)

The plan as described above in “Separation of Concerns,” addresses how the care team intends to address the active clinical concerns of a class of patients, given a set of clinical parameters (described further in the case features and decision logic discussed below). However, the CPGPlan is constrained to the set of clinical interventions (e.g., orders/requests) scoped by a specific guideline recommendations in the CPG.

Covered in detail in this section:



*   Recommendations
    *   Separating Decision Logic from Patient Descriptive Logic
    *   As a profiled FHIR ECA Rule
    *   Directionality and Strength of a Recommendation
    *   Quality of Evidence and Evidence for Recommendations
*   Strategies
    *   As a profiled FHIR ECA Rule
*   Pathways
    *   As a profiled FHIR PlanDefinition
    *   Eligibility
    *   Enrollment (including as a Profiled ECA Rule)
    *   As a “Composite” Asset

FIG. 61. The top third illustrates the conceptualization of the CPGPlan consisting of the CPGPathway Definition, CPGStrategyDefinition, and CPGRecommendation Definition.

<img src="assets/images/CPG-12-02.png" alt="image_tooltip" class="img-responsive img-rounded center-block"/>

 FIG. 62. The Plan describes Recommendations for best practice care including many aspects of the clinical decision-making processes in the context of patients’ current and historical state (i.e., Case, and scoped Case Features); Strategies for addressing key clinical issues that may require decisions, planning, and orchestration across multiple recommendations; and an overall Pathway that similary coordinates across Strategies and Recommendations to be aplied to individual patients in the broader collective of the Case and its Case Features resulting in a patient-specific Care Plan. The Plan is “definitional” and is represented by [FHIR Resources that follow the Definition](http://hl7.org/fhir/definition.html) pattern. If logic describes what to do for a patient, it very likely belongs in the Plan.

<img src="assets/images/CPG-Main-Plan.png" alt="Plan" class="img-responsive img-rounded center-block"/>


#### [Case](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-04-cpg-case.html)

The data that expresses a case consists of patient descriptors, exposures (e.g., environmental or behavioral, past and current medications and procedures), physiological and pathophysiological assessments and descriptions (e.g., labs, vitals), clinical presentation and progression (e.g., signs, symptoms), diagnostic evaluations and physical exam findings, family history and genetic markers, past and current diagnoses, risk and severity scores, ultimate and intermediate outcomes in response to treatment. In the FHIR CPG, these descriptors of the patient are referred to as CPGCaseFeatures.

Covered in detail in the Case section:



*   Overview of the Case
*   Case Features
    *   Case Features from Clinician Assessments
        *   Separation of Form Logic from patient Descriptive and Clinical Decision Logic
    *   Derived or Inferred Case Features
        *   Separating Patient Descriptive Logic from Clinical Decision Logic
*   Case Feature Groups
*   Case Feature Relationships
*   Case Summary

FIG. 63. The Case consists of all the patient descriptors including exposures physiological and pathophysiological assessments and descriptions, clinical presentation and progression, diagnostic evaluations and physical findings, past and current diagnoses and procedures, related risk and severity scores, and family history and genetic profile.

<img src="assets/images/CPG-12-03.png" alt="Case" class="img-responsive img-rounded center-block"/>

 FIG. 64. The Case consists of facts or information about the patient called Case Features (CPGCaseFeatures) that may be resolved by [FHIR Events](https://www.hl7.org/fhir/event.html) and FHIR [Requests](https://www.hl7.org/fhir/request.html) as required data elements or inferrered (in part using required data elements).

<img src="assets/images/CPG-Main-Case.png" alt="Case Features" class="img-responsive img-rounded center-block"/>

#### [Care Plan](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-05-cpg-careplan.html)

A Care Plan can be conceptualized as the patient-specific or instantiated “Plan” concretized against an individual Case. The Care Plan describes the intention of how one or more healthcare professionals intend to provide care for a specific patient, group, or community for a period of time, possibly limited to care for a specific condition or set of conditions. In the CPG, the care plan is scoped to the condition(s), intervention(s), recommendation(s), and other relevant “plan” content in this limited context (e.g., contraindications, correlated orders and results such as drug levels, or other orders or fulfillments that must be considered in triggering, decision, or orchestration logic).

Covered in detail in the Care Plan section:

*   Overview of the CPG Care Plan
*   Proposals
    *   CPGProposal as a Patient-specific CPGRecommendation
    *   Patient Information Supporting the Proposal
*   Requests
*   Events
*   Shared Care Plans

 FIG. 65. The CPGCarePlan With its CPGProposals and resulting or related Requests and Events.

<img src="assets/images/CPG-12-04.png" alt="CPG CarePlan" class="img-responsive img-rounded center-block"/>

The CPGCarePlan is constrained to the set of proposals (i.e. patient-specific recommendations), clinical interventions (e.g., orders/ requests), or their fulfillments (e.g., events) scoped by a specific CPG. This includes those related to the guideline recommendations, the strategies for combining guideline recommendations, as well as the decision logic for each recommendation, the strategies for combining recommendations, and how the overall guideline or pathway combines or orchestrates all of the recommendations and strategies in the context of a specific case (i.e., patient). As described in the [Methodology](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-methodology.html) section, the CPGCarePlan is modeled as a profile on a [FHIR CarePlan Resource](https://www.hl7.org/fhir/careplan.html).

FIG. 66. The Care Plan consists of the patient-specific recommendations as Proposals, Requests that correspond (or are related) to the Proposals, and the corresponding or related Events. Note that the Requests and Events are also referenced by the Case as CPGCaseFeatures.

<img src="assets/images/CPG-12-04.png" alt="CPG CarePlan" class="img-responsive img-rounded center-block"/>

FIG. 67. A CPG Recommendation with its scoped CPGCasePlanSummaryView.

<img src="assets/images/CPG-12-05.png" alt="Recommendation" class="img-responsive img-rounded center-block"/>

## [Workflow and Common Pathway](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-06-cpg-common-pathway.html)

Covered in this section:

*   Common Pathway
*   Clinical Information System (EHR) Workflow
    *   Request pattern and status
    *   Event pattern and status
    *   Tasks
*   Workflow Enablements and Interventions (Cognitive and Decision Support)

### CPGGuideline

All the knowledge assets that are the work product of the CPG development process and either go into or are used by the CPGPathway (that specifies the guideline itself) as well as those that are derived from and/or related to the guideline as part of CPD development work effort are package into a container asset called the CPGGuideline container asset.


## Derivative & Related Assets

Another key feature of the FHIR CPG is that since it explicitly and formally expresses the intent of the guideline, numerous additional features that have been historically developed manually using the guideline narrative, can be derived directly from the CPG and/or reuse significant portions of the CPG, or at least express relations to the CPG and/or its component assets (e.g. CPGRecommendation). More on derivative and related assets may be found in the subsection on [Derivative & Related Assets](http://build.fhir.org/ig/HL7/cqf-recommendations/documentation-approach-12-07-cpg-derivative-and-related-assets.html).

Covered in this section:



*   CPGGuideline
*   CPGMetrics
*   CPGMeasures using the [FHIR Measure IG](http://hl7.org/fhir/us/cqfmeasures/2019May/index.html)
*   CPGCaseSummary
*   CPGCasePlanSummaryView
*   CPGCasePlanProgressingNote
*   CPGeCaseReport using the [FHIR eCaseReport IG](http://hl7.org/fhir/uv/ecr/2018Jan/index.html)
*   Infobutton for CPG’s



---


1: Dijkstra, Edsger W (1982). “On the role of scientific thought”. Selected writings on Computing: A Personal Perspective. New York, NY, USA: Springer-Verlag. pp. 60–66. ISBN 0-387-90652-5.; Gossman, William; Lew, Valerie; Ghassemzadeh, Sassan (2019), “SOAP Notes”, StatPearls, StatPearls Publishing, PMID 29489268
