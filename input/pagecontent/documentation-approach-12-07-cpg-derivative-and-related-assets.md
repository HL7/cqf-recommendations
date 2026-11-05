Another key feature of the FHIR CPG is that since it explicitly and formally expresses the intent of the guideline, numerous additional features that have been historically developed manually using the guideline narrative, can be derived directly from the CPG and/or reuse significant portions of the CPG, or at least express relations to the CPG and/or its component assets (e.g. Recommendation).


Covered in this section:

*   Guideline
*   Metrics
*   Measures using the [FHIR Measure IG ](http://hl7.org/fhir/us/cqfmeasures/2019May/index.html)
*   CPGCaseSummary
*   [Case Plan Summary](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-plan-summary)
*   CPGCasePlanProgressingNote
*   [eCase Report](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-ecase-report) using the [eCaseReport IG](http://hl7.org/fhir/uv/ecr/2018Jan/index.html)
*   Infobutton for CPG’s

### Guideline

All the knowledge assets that are the work product of the CPG development process and either go into or are used by the [Pathway](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-pathway) (that specifies the guideline itself) as well as those that are derived from and/or related to the guideline as part of CPD development work effort our package into a container asset called the [Guideline](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-guideline) based on the [FHIR ImplementationGuide Resource](https://www.hl7.org/fhir/implementationguide.html).  No single consumer or implementer must use the entire content of the Guideline, though all available knowledge assets are contained within this resource should they choose to.   More likely, most implementers and end-consumers will only use scoped assets, largely composite knowledge assets.

<details open>

<summary>

Figure 1. Guideline based on the FHIR ImplementationGuide Resource the container asset or resource that packages all of the CPG knowledge assets and end-deliverable work products from the CPG development and knowledge engineering process.

</summary>

<img src="CPG-12.07-GdlnDef.png" alt="Guideline Definition" class="img-responsive img-rounded center-block"/>

</details>


### Metrics

<details open>

<summary>

Figure 2. The Metric is a patient-level indicator, often related to a patient-specific recommendation (Proposal) and/or intermediate- or end-outcomes.  A given CPG may have many patient-level Metrics.

</summary>

<img src="CPG-12.07-00.png" alt="Metric" class="img-responsive img-rounded center-block"/>

</details>


A metric is a patient-level indicator for measurement.  It is often related to a patient-specific recommendation (i.e., [Proposal](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-proposal)), usually as a process measurement, evaluating compliance (i.e., that a request and/or event fulfilled the proposal) and/or qualifying the timing between the proposal, its resulting request, and/or the fulfilling event(s).  A similar pattern for [Metrics](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-metric) may correlate or compare the resulting request and/or their fulfilling event(s) to some other anchoring event (i.e., a [Case Feature](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature)), which is often part of the triggering, decision, or orchestration logic and the scoped [Recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation), [Strategy](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy), and/or Pathway.

Another pattern for Metrics is patient-level intermediate and ultimate outcomes measurement.  This pattern is often related to a specified goal (i.e., as designated in any profile on a Plan Definition) or a threshold value for a given Case Feature (i.e., events or inferred case features).  Tracking patient-level outcomes has particular value for direct patient care as well as the evidence and knowledge synthesis ecosystems.

Another pattern for Metrics is composite measurements that combine individual metrics to yield insight into the care process with respect to the scope of guideline recommendations.  A separate pattern correlates patient-level intermediate and ultimate outcomes with patient-level process measurements and/or patient-specific guideline recommendations, which has implications for direct patient care and the evidence ecosystem, including clinical research and guideline development.  Such a pattern may be described as a “correlative” metric.

Guideline or pathway adherence is a special case of composite metric.  Adherence is often used in localized implementations of clinical practice guidelines (or pathways).  The colloquial terms “on path”, “off path”, “happy path”, and “perfect path” (as well as on with a history off) refer to the current status of the patient with respect to the compilation of guideline recommendations.  Adherence is a rollup of all or many of the compliance and/or intermediate-outcome metrics.  The business logic for determining adherence is often determined at the level of local implementation but may be recommended by the guideline development group as well.  Of note to the knowledge engineer, adherence metrics are often scoped to either the Pathway and/or Strategy.

A Metric is represented as a [FHIR Measure Resource](https://www.hl7.org/fhir/measure.html)  and its value as an inferred Case Feature ([FHIR Observation Resource](https://www.hl7.org/fhir/observation.html)) with its value being determined through an expression.  As such, a Metric may be thought of as a special case of a Case Feature.  These detailed patients-level and guideline-directed metrics can be used directly within the clinical workflow, rolled up across cohorts of patients as a more traditional quality measure ([Measure](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-measure)), and/or included as part of a CPGCaseSummary, Case Plan Summary, CPGCasePlanProgressingNote, or eCase Report.

### Measure (eCQMs)

<details open>

<summary>

Figure 3. A Measure uses the HL-7 [Measure IG](http://hl7.org/fhir/us/cqfmeasures/2019May/index.html)  to express and represent Quality Measures

</summary>

<img src="CPG-12.07-01.png" alt="CPG Measure" class="img-responsive img-rounded center-block"/>

</details>


In this implementation guide, we refer to a quality measure when discussing a clinical quality measure, public health indicator, or population analytics measure. A quality measure is a quantitative tool to assess the performance of an individual or organization with respect to a specified process or outcome via the measurement of actions, processes, or outcomes of clinical care. Quality measures are often derived from clinical guidelines and are designed to determine whether the appropriate care has been provided given a set of clinical criteria and an evidence base.  A [FHIR Measure Resource](https://www.hl7.org/fhir/measure.html) represents a structured, computable definition of such a quality measure.

More details  on how to use and implement a quality measure can be found in the Quality Measure Implementation Guide ([Measure IG](http://hl7.org/fhir/us/cqfmeasures/2019May/index.html)).  The Quality Measure Implementation Guide describes an approach to representing electronic Clinical Quality Measures (eCQMs) using the FHIR Clinical Reasoning Module and Clinical Quality Language (CQL) using the [FHIR Measure](https://www.hl7.org/fhir/measure.html) Resource.

The FHIR Measure is another [definitional resource](https://www.hl7.org/fhir/clinicalreasoning-knowledge-artifact-representation.html) in the FHIR Clinical Reasoning Module. Of note, a FHIR Measure Resource defines the structural components and metadata of the measure, but it does not contain any logic expression itself.  Rather, it references a library resource that contains all the expression logic for the populations and their  intermediate features (e.g., measure expression analogous to case features), supplemental required data elements, and any references may have two other libraries (e.g., using CQL) that may include but is not limited to the CPG’s library of expressions.

A quality measure may not entirely fall out of the CPG. It may reuse some expressions in the CPG, entirely reuse expressions from the CPG (i.e., with populations defined as equivalent to Case Features and/or Metrics), or relate to the scope of the CPG almost entirely through metadata reference.

A Measure may also directly reference a Metric(s) (i.e., as Case Feature define in the CPG Library or the value for such a Metric once instantiated and persisted as data) to define inclusion and exclusion criteria for its various populations, thus using same patient-level process, intermediate- and ultimate outcome. Composite metrics are used directly within patient care, more closely correlating real-world performance with quality measurement.  As such, a Measure may follow similar patterns as the Metric described above (i.e., process, intermediate and ultimate outcome, composite, correlative, compliance, adherence).  Population-level measures based on such patient-level metrics may be aggregated to numerous systems levels (e.g., provider, unit, facility, care team) to inform more localized performance improvement.  Likewise, patient-level metrics may be aggregated to various cohorts for population-based quality reporting and various clinical and quality research activities.

### CPGCaseSummary

<details open>

<summary>

Figure 4. The CPGCaseSummary the composition of all the patient level information (i.e., Case Features) used by the sum total of knowledge assets in the CPG.

</summary>

<img src="CPG-12-03.png" alt="Case Summary" class="img-responsive img-rounded center-block"/>

</details>


A case summary or composition of all the patient-level information (i.e., case features and their values) has utility in a number of contexts including patient care (e.g., in providing summary views as CDS, composing a document), local quality and safety activities (e.g., clinical quality registries, mortality and morbidity reviews), professional society and clinical research activities (e.g., various types of registries), and into the guideline development group itself.  Recall that case features not only include events (e.g., observations, medication administrations, procedures, conditions, clinical impressions), but also requests (e.g., orders, prescriptions, schedules) as well as metrics that largely qualify a patient with respect to the care recommended in the guideline (e.g., answering questions such as “where is the patient with respect to the plan?”, “how well did the patient follow the path?”).

A CPGCaseSummary is the set of case feature groups and/or features that completely represent the case data scoped by CPG. This expresses the patient state at any given point in time.  A CPGCaseSummary is modeled as a profile of a [FHIR Composition Resource](https://www.hl7.org/fhir/composition.html) and its definition is formalized as a [FHIRGraphDefinition](https://www.hl7.org/fhir/graphdefinition.html) and CQL.  The CPGCaseSummary may be used in an eCase Report as described below.

### Case Plan Summary

<details open>

<summary>

Figure 5. The Case Plan Summary contains patient-level information as well as patient-specific recommendations (Proposals) along with their respective evidence from the Plan portion of the CPG.  Such a view may be useful for clinical decision support, but may further provide interesting views for validation or even authoring.

</summary>

<img src="CPG-12-05.png" alt="Case/Plan Summary" class="img-responsive img-rounded center-block"/>

</details>


A case/plan summary view is similar to a summary as described above, with a few key distinctions.  The case/plan summary view provides the ability to address information from the plan portion of the CPG, including patient-specific recommendations (i.e., proposals) along with their respective evidence (i.e., Evidence Resources used in the Recommendation) and guideline recommendations that are either not applicable or not yet applicable to a specific patient, together with patient-level information (i.e., Case Features).  Furthermore, the case/plan summary view may be scoped to a given context, such as a given recommendation or set of recommendations, a point in time or anchoring event, or all the information related to a particular case feature, particularly features can represent higher order clinical concepts such as disease or pathophysiological process states.  The Case Plan Summary may be of particular clinical value as it can further provide historical perspective on how a patient’s clinical course has performed with respect to guideline recommendations in the past give insight to the team strategies that may have been employed to address key clinical concerns (e.g., prior strategies employed to diurese challenging case on a CHF pathway). The Case Plan Summary may be used by a number of delivery mechanisms (e.g., CDS Hooks, SMART-on-FHIR Apps) as well as the CPGCasePlanProgressingNote and eCase Report described below.

<details open>

<summary>

Figure 6. The Case Plan Summary may further be scoped to the entirety of the Pathway or a given (set of) Strategies, then possibly constrained by a point in time such as “now” (near real-time) or at or just before a key event (looking historically) to perform retrospectives reviews.

</summary>

<img src="CPG-CasePlanSummary.png" alt="Case Plan Summary" class="img-responsive img-rounded center-block"/>

</details>

### CPGCasePlanProgressingNote

A Case Plan Summary can be further be combined with an [Adaptive Form](http://hl7.org/fhir/uv/sdc/2019May/adaptive.html) and their related [Clinical Impressions](https://www.hl7.org/fhir/clinicalimpression.html) to provide a means to document patient progression with respect to the Pathway.  This capability would further provide the means for feedback directly from the care team on both the patient and their condition as well as the usage and utiliy of guideline components.  The knowledgen egineer need be careful to keep the forms logic (UI) separated from the description logic (for case features) and decision logic (for recommendations) as well as any logic used for patient-level uindicators (Metrics) used in the Form.

### eCase Report

An eCaseReport, as described in the [eCaseReport-IG](http://hl7.org/fhir/uv/ecr/2018Jan/index.html), is a document used to exchange patient-level clinical information to a public health, regulatory,  quality, research,or guideline development entity (e.g., medical specialty professional society and/or their respective guideline development group).  An eCaseReport has particular utility to public health entities and was developed through the HL7 Public Health and Emergency Response Workgroup (WG).

A eCase Report is a special case that utilizes the [eCaseReport-IG](http://hl7.org/fhir/uv/ecr/2018Jan/index.html) within the CPG-IG.  The eCase Report may use or map/translate a CPGCaseSummary or appropriately scoped Case Plan Summary to include more information around the recommendations and use thereof.

<details open>

<summary>

Figure 7. A eCase Report uses the [eCaseReport-IG](http://hl7.org/fhir/uv/ecr/2018Jan/index.html) and either an appropriately scoped Case Summary (if only Events are desired) or Case Plan Summary (if proposals, evidence, and/or metrics are desired).  This can be reported back to the guideline development group or other designated registry entity.

</summary>

<img src="CPG-12.07-05.png" alt="Case Report" class="img-responsive img-rounded center-block"/>

</details>


### Infobutton

Infobuttons facilitate contextually querying resources such as a library containing clinical practice guideline recommendations from within clinical information systems at the point-of-need (e.g., EHRs).  In other words, “Infobuttons” are context-sensitive links embedded in EHR systems. They use information about the patient, user, clinical setting, and EHR task to anticipate clinicians' information needs and provide links to online clinical resources that may meet these information needs.”  [Infobuttons](http://www.openinfobutton.org/home) provide a means for a healthcare professional to leverage a subset of the identified patient-level information to perform a facilitated search from within the patient record.

The [Infobutton](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=208) could leverage a library of CPGs along with their individual recommendations, largely using content metadata to facilitate search and retrieval.

More on the standard and HL7 Infobutton product and the [OpenInfoButton Project](http://www.openinfobutton.org/home) is available elsewhere.
