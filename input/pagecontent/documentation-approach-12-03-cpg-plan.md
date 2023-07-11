The Plan describes what treatments, test, consults and other interventions need done to address a particular clinical concern (e.g., a disease or condition, recovery from a procedure, prevention including secondary and tertiary prevention, contingencies for possible complications), in the case of the CPG, the concerns as scoped by the guideline and its recommendations.  The Plan in the CPG context, is scoped to all patients in a cohort as defined by the eligibility criteria and the patient-specific plan is manifested as a Care Plan as discussed in detail in another section on the [CPGCarePlan](documentation-approach-12-05-cpg-careplan.html). <!-- link to - 12.05 !-->

Covered in this section:

*   **Recommendations**
    *   Separating Decision Logic from Patient Descriptive Logic
    *   As a profiled FHIR ECA Rule
    *   Directionality and Strength of a Recommendation
    *   Quality of Evidence and Evidence for Recommendations
*   **Strategies**
    *   As a profiled FHIR ECA Rule
*   **Pathways**
    *   As a profiled FHIR PlanDefinition
    *   Eligibility
    *   Enrollment
        *   CPGPathwayEnrollmentCriteria as a Profiled ECA Rule
    *   As a “Composite” Asset

<details open>

<summary>

FIG. 70. The top third illustrates the conceptualization of the CPGPlan consisting of the CPGPathway Definition, CPGStrategyDefinition, and CPGRecommendation Definition.

</summary>

<img src="CPG-12-02.png" alt="CPG PLan" class="img-responsive img-rounded center-block"/>

</details>


The plan, in the CPG context, as described above in “Separation of Concerns,” addresses how the care team intends to address the active clinical concerns of a class of patients, given a set of clinical parameters (described further in  the case features and decision logic discussed below).  However, the CPGPlan is constrained to the set of clinical interventions (e.g., orders/requests) scoped by a specific CPG.  This includes the guideline recommendations, the strategies for combining guideline recommendations, and the decision logic for each recommendation, for the strategies for combining recommendations, and for how the overall guideline or pathway combines or orchestrates all of the recommendations and strategies.  As described in the “Methodology” section, one might consider separating the expression logic from the decision logic solely scoped for each CPGRecommendation and CPGStrategy in separate libraries as well as maintaining a separate library for decision and orchestration logic that is employed across various parts of the CPGPathway.

<details open>

<summary>

FIG. 71. The Plan describes Recommendations for best practice care including many aspects of the clinical decision-making processes in the context of patients’ current and historical state (i.e., Case, and scoped Case Features); Strategies for addressing key clinical issues that may require decisions, planning, and orchestration across multiple recommendations; and an overall Pathway that similar coordinates across Strategies and Recommendations to be applied to individual patients in the broader collective of the Case and its Case Features resulting in a patient-specific Care Plan.  The Plan is “definitional” and is represented by [FHIR Resources that follow the Definition](http://hl7.org/fhir/definition.html) pattern.  If logic describes what to do for a patient, it very likely belongs in the Plan.

</summary>

<img src="CPG-Main-Plan.png" alt="image_tooltip" class="img-responsive img-rounded center-block"/>

</details>


### Recommendations

As described in the “Guideline Development” section, recommendations are proposals pertaining to the best course of action put forth by an authoritative source or body related to a condition, procedure, clinical decision, or activity.  CPGRecommendations are the formalization of a singular narrative guideline recommendation.  CPGRecommendations formalize and make explicit the clinical activity to be taken or not to be taken (i.e.,  in the case of recommendations with negative directionality (e.g., do not give drug x for patients with condition y)).  Similarly, CPGRecommendations formalize the decision logic or applicability logic to be applied to the requisite set of data elements (CPGCaseFeatures) in order to instantiate the proposed clinical activity resulting in a patient specific recommendation (CPGProposal described in the “Care Plan'' section).  CPGRecommendations include triggering logic for when to evaluate the decision logic.

#### Separating Clinical Decision Logic from Patient Descriptive Logic

An important note to the knowledge engineer to pay special attention to the separation of decision logic about what to do for the patient from description or inferencing logic that describes something about or the nature of the patient (e.g. clinical pathological process, risk, severity, in qualifiers thereof).  This greatly simplifies the decision logic as well as makes the inferences about the patient readily available for other logic and/or other use cases.  This takes particular attention from the knowledge engineer to disambiguate the logic that evaluates the state and/or condition of the patient (or qualifiers thereof) from the logic that describes how a clinician reasons over what to do for the patient.

Several questions the knowledge engineer may ask themselves are: “describe something about the patient?”, “does this qualify the patient’s historical, present, or likely future clinical state or status?”, and “does this decision logic focus on solely evaluating descriptive patient-level variables (as CPGCaseFeatures) and describing what to do or not to do for the patient given these conditions?”

#### CPGRecommendation as a profiled FHIR ECA Rule

A CPGRecommendation is a specialization of a FHIR [Event-Condition-Action (ECA) Rule](https://www.hl7.org/fhir/clinicalreasoning-knowledge-artifact-representation.html#event-condition-action-rule).  An ECA Rule has the syntax “on event, if condition is true, then do action” where the triggering logic and decision logic express the event and condition and the recommendation is expressed as an action, which describes a set of activities to be performed.  These actions may cause more events to occur, which may, in turn, cause other ECA rules to fire.  This chain of actions through a related set of ECA rules provides more complex patterns of recommendations (e.g., escalating dose or switching dose form).  The ECA Rule describes such patterns and will be addressed in the “Methodology’ section.

#### Directionality and Strength of a Recommendation

Guideline recommendations contain attributes or properties for the directionality and strength of recommendation (see GRADES discussion in the “Guideline Development Process” section).  A CPGRecommendation addresses directionality in the semantics of the action or activity and in the expression of the CPGRecommendation decision logic as part of the ECA Rule.  The strength of recommendation is an attribute of the CPGRecommendation profile and carries forward its resulting CPGProposal.

#### Quality of Evidence and Evidence for Recommendations

Just as the recommendations from the guideline development group reference the body of evidence which supports the recommendation, a CPGRecommendation similarly references the evidence sources from which they were derived.  In the CPG-IG, the supporting evidence for a CPGRecommendation is referenced through the [Evidence Resource](https://www.hl7.org/fhir/evidence.html) as described in the EBM-on-FHIR IG.  Moreover, just as a guideline recommendation contextualizes the quality of the evidence (using GRADES as discussed in the “Guideline Development Process” section), a CPGRecommendation and its resultant proposal (CPGProposal) may carry forward the guideline development group’s assessment of the quality of the evidence as an attribute of the CPGRecommendation profile qualifying the references to its respective Evidence Resource(s).   These evidence references provide a provenance for each recommendation and may provide a means to notify guideline developers, downstream consumers (e.g., measure developers), and end users of the CPG when there is an update to relevant evidence that should be considered.

#### Evidence Resource Variables Informing CPG Formalization (Logic and Semantics)

The Evidence Resource includes references to citations (including doi’s) and evidence variables, including population/cohort definitions and their formal expressions, descriptions and semantics for interventions, and other representations for PICOTS information where applicable (see “Guideline Development Process” section for PICOTS description).

These evidence variables may also provide key descriptions or definitions as well as terminologies and expression logic that may be repurposed for or inform the triggering, decision, or orchestration logic (e.g., event, condition) or as semantics (i.e., resource types and their respective terminologies) for a CPGRecommendation, CPGStrategy, or CPGPathway. The evidence variables may contain similar information for the guideline population (from the PICOTS variables for the guideline’s Evidence Resource) that would similarly inform the eligibility criteria for the CPG itself (CPGPathwayEligibilityCriteria).

### Strategies

Strategies are approaches for combining, orchestrating, or associating related guideline recommendations and typically scope to a particular concern addressed within the guideline.  Strategies may be longitudinal, require temporal orchestration, and reuse or repurpose data elements (CPGCaseFeatures) and other components (e.g., the attributes and status of requests and events) of the CPGRecommendations it scopes.

Strategies may or may not arise from explicit or strong recommendations from the guideline on the relationships and/or interdependencies between individual recommendations since the evidence base may not have addressed these issues explicitly; however, the guideline development group may recognize the importance of such interdependencies when formulating the guideline.  Strategies may be communicated in the guideline either explicitly as separate recommendations or may be conveyed through supplemental information such as flow diagrams, decision trees, and/or decision tables.  CPGStrategies are the formalization and compilation of explicit strategies as recommendations or as a requisite means to formalize the relationships, interactions, and potential conflicts between individual recommendations in order to address the requirement of making this set of recommendations implementable.

#### CPGStrategies as a profiled FHIR ECA Rule

A CPGStrategy is also a specialization of a [FHIR ECA Rule](https://www.hl7.org/fhir/clinicalreasoning-knowledge-artifact-representation.html#event-condition-action-rule) as described above in CPGRecommendation.  The triggering, decision, and orchestration logic in a CPGStrategy often not only applies to a requisite set of data elements (CPGCaseFeatures) but also the status and attributes of an instantiated CPGRecommendation as a patient-specific recommendation or proposal (CPGProposal)and/or its resultant clinical activities (e.g., requests) and/or their resultant fulfillments (e.g., events).

### Pathways

Pathways convey the full scope of guideline recommendations in a manner that can be implemented for the purpose of guiding patient care within a singular CPG.  In part, pathways serve a similar yet higher order function as strategies, and serve the function of addressing interdependencies such as decision and orchestration logic across multiple concerns.

#### CPGPathway as a profiled FHIR PlanDefinition

The CPGPathway is a specialization of a FHIR PlanDefinition which contains in its own specialized (sets of) ECA Rules to serve the function of formalizing such logic.  The FHIR PlanDefinition is intentionally fractal by nature and often contains (by reference) numerous other PlanDefinition as well as other definitional resources (e.g., Activity Definitions, Questionnaires, Measures) and libraries for formalizations of logic (FHIR Library Resource).  As such, the CPGPathway furthermore contains and/or references key component assets scoped to the CPG, including all CPGRecommendations, CPGStrategies, and required and scoped CPGCaseFeatures, are dependent upon the respective Library Resources.

#### Pathway Eligibility

Eligibility criteria are the benchmarks that should be met for guideline recommendations to apply for a patient. In order for a patient to quality for the guideline’s scope (see “Guideline Development Process”), they must satisfy appropriate conditions such as the guideline’s population definition (e.g., in its Evidence Resource).  Evidence Resource’s evidence variable for population (from PICOTS) may include formalization of the expression logic for the population and/or the appropriate starting point for the semantics (e.g., data types and terminologies) of the variables necessary for such logic.  Similarly, the eligibility criteria may come from or be the superset of individual recommendation applicability criteria available in their Evidence Resource’s evidence variables for populations.  The CPGPathwayEligibilityCriteria contains the expression logic for eligibility criteria and may create a CPGCaseFeature scoped specifically for the purpose of conveying a time stamped data element expressing the patient’s eligibility status for the specific CPG.

#### Pathway Enrollment

Even though a patient may be eligible for a given guideline, due to patient preferences or mitigating clinical factors, a patient may not necessarily need or want the recommendations of the guideline applied to them (at least at a given point in time).  For a patient to be registered as participating in the full scope of guideline recommendations they must be enrolled as such.  The process of being denoted as participating in guideline-directed care is called pathway enrollment.

##### Auto-Enrollment, Prompted-Enrollment, and Opt-in Enrollment

There are several means and/or combinations of ways by which a patient may be enrolled.  This includes auto-enrollment, prompted-enrollment, and opt-in enrollment.  Auto-enrollment refers to all patients who meet the eligibility criteria, which may or may not be further constrained by additional criteria, automatically being enrolled in the pathway (or guidelines-directed care).  Prompted-enrollment refers to a process through which a care team member is notified that the patient is eligible, often with supplemental data (not limited to that which met the eligibility criteria), in the care team member subsequently taking an action to enroll the patient.  Opt-in enrollment refers to a care team member actively taking the step of enrolling the patient without being prompted.

##### Multi-stage “Filtering” for Appropriateness of Guideline-Directed Care

Often, eligibility and enrollment may be considered a two-step filter, analogous to a screening test (high sensitive, less than ideal specificity) with a subsequent diagnostic test (high specificity) in healthcare.  Furthermore, multiple approaches or combinations of enrollment may need to be considered in order to ensure that a patient is appropriately enrolled in guideline-directed care.  For instance, if a high threshold is met for enrollment, auto-enrollment may be the appropriate approach, followed by prompted enrollment for patients who meet moderate criteria, and lastly patients who do not meet at least a moderate criteria for enrollment may be opted-in.

##### CPGPathwayEnrollmentCriteria as a Profiled ECA Rule

Due to the nature of enrollment and to enable a multistep approach, pathway enrollment is modeled as a profile of an ECA Rule (CPGPathwayEnrollmentCriteria).  As described above, since ECA rules may contain other ECA rules, this readily affords a multistep approach.  The CPGPathwayEnrollmentCriteria may create a CPGCaseFeature scoped specifically for the purpose of conveying a time stamped data element expressing the patient’s enrollment status for the specific CPG (CPGPathwayEnrollmentStatus).  The current and historical status of a patient’s enrollment is of critical importance for medical decision-making and may be used in other CPGPathway logic.

#### CPGPathway as a “Composite” Asset

A CPGPathway serves as the container for all other knowledge assets and/or their references scoped to the full CPG.  These assets may include, but are not limited to, optional components such as: CPGCaseFeatureGroups, CPGCaseSummaries, CPGCasePlanSummaries, and CPGMetrics and contain, reference, and/or be referenced by all scoped assets derived from the CPG such as: CPGMeasures, CPG CasePlanProgressingNotes, and CPGeCaseReports.
