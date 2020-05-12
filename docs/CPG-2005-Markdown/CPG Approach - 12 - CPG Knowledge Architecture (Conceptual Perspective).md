# **CPG Knowledge Architecture-Conceptual Perspective**

The conceptual knowledge architecture for the CPG describes how the concepts from a guideline and its recommendations described in the preceding sections are realized as computable knowledge assets.  The CPG knowledge architecture provides the framework through which the knowledge engineering team realizes the guideline, its recommendations, and their various features through explicit formalisms and ultimately as information.  The CPG conceptual knowledge architecture together with the implementation instructions and examples in the Methodology section provide the means to develop and concretize a CPG representation that can be consumed through various mechanisms in end-user workflows.


    Covered in this section:



*   Separation of Concerns in the CPG
*   Separating and Defining Case, Plan, and Workflow
*   Plan
*   Case
*   Care Plan
*   Common Pathway
*   Derivative & Related Assets

![alt_text](images/CPG-12-00.png "image_tooltip")

FIG XX. The CPG Pathway Definition that contains all the CPG-specific knowledge content and assets including the CPGRecommendations (and CPGStrategies); The CPGCase that scopes all the required data elements (CPGFeatures) including many of the patient-specific inferences thereon (inferred CPGCaseFeatures); and the CPGCarePlan that includes the patient-specific recommendations (CPGProposals) and any resulting or relevant orders, prescriptions, scheduling (CPGRequests) and the data elements representing the events that fulfill these requests (a subset of the CPGCaseFeatures)


## **Separation of Concerns**

Separation of concerns is a design principle that creates a distinct and focused attention on each aspect of the domain or topic...”  (ref).  This concept has been used to address efficient and effective approaches in software engineering, particularly as they pertain to developing larger, more complex information systems. (ref)  Perhaps the most common application of this principle is to a three-tiered architecture (i.e. data, logic, UI) and corresponds to the Tiers of Functionality discussed in its own section.  

In healthcare, a notable and critical axis of separation is by kind of process, including: 1) patient clinicopathological (i.e., pathophysiological and correlated clinical manifestations) processes, inclusive of normal physiology (CPGCase); 2) clinical decision-making and corresponding care process abstracted from the specifics of a given care setting (CPGPlan); and 3) care delivery process or clinical workflow by which the care processes are carried out in the context of a specific care setting where multiple patients and healthcare professionals undergo, situational activities, which may be inclusive of the clinical information system or EHRs used, in part, to undertake these activities.  The CPG-IG knowledge architecture is designed to respect the separation of these concerns as discussed below.

![alt_text](images/CPG-12-01.png "image_tooltip")


FIG XX. Illustrating the separation of the Case (patient clinicopathophysiological processes and their manifestations and qualifications thereof), the Plan (the approach to the patient’s current, historical, and potential future state of disease and well-being including medical decision-making), and the Workflow (how the Plan is implemented either through interactions with clinical information systems or through real-world human tasks and activities).

Disease or condition, intervention (e.g., procedure, therapy), and/or diagnostic (e.g., imaging, tests) as well as care setting (e.g., ambulatory, home, inpatient, ED, ICU) and generalized type of care activity (e.g., surveillance, prevention, diagnostic workup, treatment planning, therapeutic response, recovery/convalescence, survivorship) can all be conceptualized further as  separations of concerns.  These separations are typically addressed through the scoping exercise of the guideline development group and may further be addressed by entirely distinct CPG’s or by strategies within individual CPG’s.

Lastly, a key separation of importance to the CPG-IG is significantly related to the clinical workflow separation mentioned above, which itself may be separated into the real-world care delivery activities in those activities that are carried out in the context of clinical information systems (e.g., EHRs).  This separation is discussed in detail in the corresponding section.

Further details on the CPG Separation of Concerns and issues related to Separating and Defining Case, Plan, and Workflow can be found in their respective subsections in the CPG Knowledge Architecture section.


### **Separating and Defining Case, Plan, and Workflow**


### **Case**

From the domain perspective, a case is conceptualized as the contextually relevant information oriented to clinically meaningful descriptions of an individual patient’s current and historical state of health, disease, and risks.  The case includes a comprehensive, detailed description of the current and relevant historical clinicopathological presentation of the patient.  Key information to sufficiently summarize the case for the purpose of making appropriate and timely medical decisions in a given situation are often referred to as pertinents (e.g., positive and negative pertinents).


### **Plan**

Within the healthcare domain, the providers formulate an approach, or plan, for how they intend to address the health, well-being, and active clinical concerns of the patient, taking into account the patient’s goals and preferences.  The plan includes current interventions, takes into account prior and current response to those interventions, and formulates an approach to assess and address all elements of the patient’s state of health and disease.  A plan consists of requesting (e.g., ordering, prescribing, scheduling) medications, procedures, diagnostics (e.g., laboratory and imaging, and other tests), and appointments (e.g., referrals and consults).  Plan, Planning, and Care Plan is addressed in further detail in the subsection.


### **Workflow**

The CPG-IG explicitly does not address, local workflows due to their significant variation, complexity, and need for consideration for local factors (e.g., specific resources and resource type, policies, customized or localized tooling), as well as to avoid conflating detailed clinical workflow descriptions/definitions with the flow of abstract clinical activities often necessary to describe as part of the care process in guideline recommendations.

While the CPG-IG intentionally does not directly address details of localized real-world clinical workflow, it must and does provide affordances conveying critical content to end-user consumers.  The CPG-IG does this through several mechanisms including “the common pathway” (i.e., an abstraction of high-level clinical workflows), shared information (e.g., CPGCaseFeatures), and reuse of the same standards for clinical information system activities (e.g., requests and their lifecycle, task, and workflow status) and interventions (e.g., Adaptive Forms, CDSHooks, etc.).


### **Boundary Issues at the Separation of Domain Concerns**

Theses specific issues are discussed in more detail in the subsection on Separating and Defining Case, Plan, and Workflow and the principles for addressing them  are described in the section on Knowledge Architecture

**Examples of Boundary Issues in the CPG:**



*   Abstract, Local, and EHR (clinical information system) Workflow
*   Clinical Assessment
*   Proposals, Requests, and Events- Case or Care Plan?  Some in Both?
*   Plan or Workflow-see sections on Knowledge Implementation and Separating and Defining Case, Plan, and Workflow.
*   Case and Workflow- information remains in appropriate data elements and inferences thereon in their appropriate concern

##
**CPG Formalizations of Domain Concerns & Concepts**



## **CPGCase, CPGPlan, and CPGCarePlan**


###
    **Plan**


    The plan, in the CPG context, as described above in “Separation of Concerns,” addresses how the care team intends to address the active clinical concerns of a class of patients, given a set of clinical parameters (described further in  the case features and decision logic discussed below).  However, the CPGPlan is constrained to the set of clinical interventions (e.g., orders/requests) scoped by a specific guideline recommendations in the CPG.  

![alt_text](images/CPG-12-02.png "image_tooltip")

    Fig XX. The top third illustrates the conceptualization of the CPGPlan consisting of the CPGPathway Definition, CPGStrategyDefinition, and CPGRecommendation Definition.


        **Recommendations**


        CPGRecommendations are the formalization of a singular narrative guideline recommendation.  CPGRecommendations formalize and make explicit the clinical activity to be taken or not to be taken.  The CPGRecommendations formalize the decision logic or applicability logic to be applied to the requisite set of data elements (CPGCaseFeatures) in order to instantiate the proposed clinical activity resulting in a patient specific recommendation (CPGProposal).  


        **Separating Clinical Decision Logic from Patient Descriptive Logic**


        An important note to the knowledge engineer to pay special attention to the separation of decision logic about what to do for the patient from description or inferencing logic that describes something about or the nature of the patient (e.g. clinical pathological process, risk, severity, in qualifiers thereof).  This greatly simplifies the decision logic as well as makes the inferences about the patient readily available for other logic and/or other use cases.


        **Other Topics on Recommendations covered in the CPG Plan section:**



*   CPGRecommendation as a profiled FHIR ECA Rule
*   Directionality and Strength of a Recommendation
*   Quality of Evidence and Evidence for Recommendations
*   Evidence Resource Variables Informing CPG Formalization (Logic and Semantics)

        **Strategies**


        Strategies are approaches for combining, orchestrating, or associating related guideline recommendations and typically scope to a particular concern addressed within the guideline.  Strategies may be longitudinal, require temporal orchestration, and reuse or repurpose data elements (CPGCaseFeatures) and other components (e.g., the attributes and status of requests and events) of the CPGRecommendations it scopes.  See section on CPGPlan for CPGStrategies as a profiled FHIR ECA Rule.


        **Pathways**


        Pathways convey the full scope of guideline recommendations in a manner that can be implemented for the purpose of guiding patient care within a singular CPG.  In part, pathways serve a similar yet higher order function as strategies, and serve the function of addressing interdependencies such as decision and orchestration logic across multiple concerns.  


        **Other Topics on Pathways covered in the CPG Plan section:**

*   CPGPathway as a profiled FHIR PlanDefinition
*   Pathways Eligibility
*   Pathway Enrollment
    *   Auto-Enrollment, Prompted-Enrollment, and Opt-in Enrollment
    *   CPGPathwayEnrollmentCriteria as a Profiled ECA Rule
*   Multi-stage “Filtering” for Appropriateness of Guideline-Directed Care


### **Case**

The data that expresses a case consists of patient descriptors, exposures (e.g., environmental or behavioral, past and current medications and procedures), physiological and pathophysiological assessments and descriptions (e.g., labs, vitals), clinical presentation and progression (e.g., signs, symptoms), diagnostic evaluations and physical exam findings, family history and genetic markers, past and current diagnoses, risk and severity scores, ultimate and intermediate outcomes in response to treatment. In the FHIR CPG, these descriptors of the patient are referred to as CPGCaseFeatures.

![alt_text](images/CPG-12-03.png "image_tooltip")


FIG XX.  The Case consists of all the patient descriptors including exposures physiological and pathophysiological assessments and descriptions, clinical presentation and progression, diagnostic evaluations and physical findings, past and current diagnoses and procedures, related risk and severity scores, and family history and genetic profile.


    **Case Features**


    The features of the case are the clinically meaningful and relevant data elements or information that describe the current and relevant past state of the patient that is pertinent to the scope of the guideline recommendations and related decisions to be considered.  These typically describe the clinicopathophysiology pertaining to the condition(s) and state of disease, potential intervention(s), and contraindications  related to guideline recommendations.  These may include patient presentation (e.g., symptoms), clinical assessments and observations (e.g., physical findings, labs, vitals, diagnostic results, -omic profiles), diagnoses (e.g., problems or conditions) including temporally related risk and severity scores, exposures (e.g., various current and prior interventions such as medications/substances and procedures), and other information that may be relevant to the scope of the guideline.


    Almost all primitive key features come from a subset of the FHIR Resources and follow the event pattern.  The information from an event pattern ([FHIR Event pattern](https://www.hl7.org/fhir/event.html#mappings)) describes an activity that has taken place or that is currently taking place.  Case features in the CPG-IG are formalized and concretized as CPGCaseFeatures that reference and/or profile numerous FHIR Resources from the healthcare process domain (e.g., [Clinical](http://hl7.org/fhir/clinicalsummary-module.html), [Diagnostics](http://hl7.org/fhir/diagnostics-module.html), [Medications](http://hl7.org/fhir/medications-module.html)).


    For case features requiring clinical judgement or assessment, an adaptive form (see [Adaptive Questionnaire](http://hl7.org/fhir/uv/sdc/2019May/adaptive.html)) may be used.  Scoping of such required information must be done carefully as to consider all guideline triggering, decision, and orchestration logic that may depend on such information.  Similarly, the knowledge engineer must be careful not to conflate description or evaluation logic with formal logic for how to interact with the end-user.  All clinical description logic about the patient should be scoped to the case feature and then may be used by the adaptive questionnaire.


    **Separating Patient Descriptive Logic from Clinical Decision Logic**


    An important note to the knowledge engineer to pay special attention to the separation of decision logic about what to do for the patient from description or inferencing logic that describes something about or the nature of the patient (e.g. clinical pathological process, risk, severity, in qualifiers thereof).  This greatly simplifies the decision logic as well as makes the inferences about the patient readily available for other logic and/or other use cases.  This takes particular attention from the knowledge engineer to disambiguate the logic that evaluates the state and/or condition of the patient (or qualifiers thereof) from the logic that describes how a clinician reasons over what to do for the patient.


    **Other Topics on the Case and Case Features covered in the CPGCase section:**



*   Derived or Inferred Case Features
*   Case Feature Groups
*   Case Feature Relationships
*   Case Summary


### **Care Plan**

A Care Plan can be conceptualized as the patient-specific or instantiated “Plan” concretized against an individual Case.  The Care Plan describes the intention of how one or more healthcare professionals intend to provide care for a specific patient, group, or community for a period of time, possibly limited to care for a specific condition or set of conditions.  In the CPG, the care plan is scoped to the condition(s), intervention(s), recommendation(s), and other relevant “plan” content in this limited context (e.g., contraindications, correlated orders and results such as drug levels, or other orders or fulfillments that must be considered in triggering, decision, or orchestration logic).

![alt_text](images/CPG-Main-InstantiatedPlan.png "image_tooltip")

FIG XX. The Care Plan consists of the patient-specific recommendations as Proposals, Requests that correspond (or are related) to the Proposals, and the corresponding or related Events.  Note that the Requests and Events are also referenced by the Case as CPGCaseFeatures.

The CPGCarePlan is constrained to the set of proposals (i.e. patient-specific recommendations), clinical interventions (e.g., orders/ requests), or their fulfillments (e.g., events) scoped by a specific CPG.  This includes those related to the guideline recommendations, the strategies for combining guideline recommendations, as well as the decision logic for each recommendation, the strategies for combining recommendations, and how the overall guideline or pathway combines or orchestrates all of the recommendations and strategies in the context of a specific case (i.e., patient).  As described in the Methodology section, the CPGCarePlan is modeled as a profile on a [FHIR CarePlan Resource](https://www.hl7.org/fhir/careplan.html).

![alt_text](images/CPG-12-04.png "image_tooltip")

FIG XX. The CPGCarePlan With its CPGProposals and resulting or related Requests and Events.


    **Proposal:**


    A patient-specific recommendation, that has taken into account all the criteria in the computable decision logic and affords the ability for a care team member to make a request (order, prescription, schedule) is known as a proposal.  Such a request may be being considered for a plan, planned, proposed, requested, or performed within a clinical information system mediated workflow, further tracking of the state of completion of an activity may be supported through the [FHIR Task Resource](https://www.hl7.org/fhir/task.html).  “Being considered for a plan” means that the activity or potential (see [Request ](http://hl7.org/fhir/request.html)pattern) has not yet been fully evaluated.  “Planned” means that the activity or request is intended, but has not yet entered the workflow.  “Proposed” means that the activity or request has been suggested- either by a decision support system or another care team member such as a consulting physician).  “Requested” means that the activity or request has been initiated by an authorized healthcare professional or care team member.  “Performed” means that the activity or request has reached a state of completion resulting in an event (see [Event ](http://hl7.org/fhir/event.html)pattern).  Proposals carry sufficient information to initiate a request.


    **CPGProposal as a Patient-specific CPGRecommendation**


    A CPGProposal is a patient-specific instantiation of a CPGRecommendation.  As such, a CPGProposal carries forward much of the information content of the CPGRecommendation, including all of the necessary definition for the request including attributes or parameters that have either been defined explicitly or inferred through the various decision logic of the CPGRecommendation or broader CPG.  


    Furthermore, patient-specific recommendations or proposals (and cliical decision support in general) have been shown to be more effective and beneficial when supported by recommendations-specific patient information.

![alt_text](images/CPG-12-05.png "image_tooltip")

    Fig. X A CPG Recommendation with its scoped CPGCasePlanSummaryView.


    **Request**


    The notion of "request" encompasses all types of orders (e.g., original orders, filler representations of orders, reflex orders, etc.) as well as proposals/recommendations for action to occur, plans, scheduling, etc. Any sort of description of an activity that is desired where the description is specific to the subject of the activity and the approximate timing of the activity would be considered a request (see [FHIR Request](https://www.hl7.org/fhir/request.html) Pattern).  In the CPG-IG, a Request may be the result of a proposal or may at least correlate to the proposed request; however, there may be other Requests of interest to the scope of a specific CPG, in particular a CPGStrategy and/or CPGRecommendation, CPGCarePlan, CPGCasePlanSummaryView, CPGCaseSummary, or any of the numerous derived assets such as the CPGMetric, CPGMeasure, CPGeCaseReport, or CPGCasePlanProgressingNote.


    **Event**


    An event is a description of an activity that has taken place or that is currently taking place. It includes resources that primarily describe the result of a request (e.g., activity) or is otherwise related to the request or proposal (e.g., a condition or observation).  These Events also serve as CPGCaseFeatures in the CPGCase. Boundary issues for dealing with events that belong to both the CPGCarePlan and CPGCase are discussed in the section on Separating and Defining Case, Plan, and Workflow.  Examples of Events include medication dispense or administrations, procedures, encounters, questionnaire responses, observations, diagnostic report, clinical document (i.e. [FHIR Composition](https://www.hl7.org/fhir/composition.html)), and many other found in the [FHIR Event pattern](https://www.hl7.org/fhir/event.html#mappings).


## **Common Pathway**

The common pathway provides an abstract or generalized description of the overall process of care delivery that relates to care settings, high-level care activities, and their respective flows and performers (healthcare professional roles).

The Common Pathway that is intended to be applicable in any guideline-based care content, but not a specific localization or implementation thereof.  Using this common pathway, content can indicate where in the overall process of care delivery a given recommendation or intervention should occur.


## **CPGGuideline**

**CPGGuideline**

All the knowledge assets that are the work product of the CPG development process and either go into or are used by the CPGPathway (that specifies the guideline itself) as well as those that are derived from and/or related to the guideline as part of CPD development work effort our package into a container asset called the CPGseven container asset and he said they started using it these purposes when there’s 12 ones, you will will compliance and will prevent this overview section for the knowledge architecture is 12 approach 12 I think 12.

**Derivative & Related Assets**

Another key feature of the FHIR CPG is that since it explicitly and formally expresses the intent of the guideline, numerous additional features that have been historically developed manually using the guideline narrative, can be derived directly from the CPG and/or reuse significant portions of the CPG, or at least express relations to the CPG and/or its component assets (e.g. CPGRecommendation).  More on derivative and related assets may be found in the subsection on Derivative & Related Assets.


    Covered in this section:



*   CPGGuideline
*   CPGMetrics
*   CPGMeasures using the [FHIR Measure IG](http://hl7.org/fhir/us/cqfmeasures/2019May/index.html)
*   CPGCaseSummary
*   CPGCasePlanSummaryView
*   CPGCasePlanProgressingNote
*   CPGeCaseReport using the [FHIR eCaseReport IG](http://hl7.org/fhir/uv/ecr/2018Jan/index.html)
*   Infobutton for CPG’s
