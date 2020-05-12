---
layout: default
title: Conformance Levels
---
# Levels of Conformance and Enablement

**Levels of Conformance:**

One major effort on compliance is the WHO and Integrated Health Enterprise (IHE) initiative on Computable Care Guidelines (CCG)[^1] profile of the HL7 CPG.[^2] The IHE/WHO CCG includes a minimum data set to be collected during an encounter (i.e., required data elements as CPGCaseFeatures), logic to be triggered based on data collected (CPGRecommendations), and reportable reportable health system management indicators (CPGMetrics).  It can track and monitor care delivery activities (e.g., what happened) as well as provide the ability to improve guideline adherence.

**Conformance Testing**

Levels of conformance will be based on alternative conformance profiles such as the CCG above.  Conformance with Features of the CPG are still under development.

**Levels of Enablement:**

Trade-offs between effort, time to develop, and capabilities enabled (and value that can be derived) when developing a CPG.  From very basic context for narrative snippets searchable in a library (or Infobutton from EHR) to full clinical workflow enablement, cognitive support, and pathway tracking (likely via SMART-on-FHIR App or deep EHR integration) as well as feedback loops with real-world evidence of actual guideline usage, measures, etc. and as substrate for evidence ecosystem and/or feedforward loop for evidence updates.  Fortunately, the CPG-IG includes levels of enablement that correlate to work effort, time to delivery, as well as capabilities that it can support as well as the means to iteratively, and successively develop CPG versions that provide incremental value by ascending these levels of enablement.

Level of Enablement as well as effort related to (all described elsewhere in Approach):



*   CPG features and capabilities implemented
*   Intended Delivery and Dissemination Mechanisms
*   Knowledge Representation Levels formalized across CPG Features (capabilities described in CPG Knowledge Architecture)
*   Tiers of Functionality
*   Methods of Implementation
*   Mechanisms of Integration

Roughly:

*   Contextualized Narrative (searchable)
*   Contextualized Narrative (delivered in context)
*   Contextualized Narrative with Patient-level Information (basic summary view)
*   Actionable Intervention (with and without narrative and summary view; CDSHooks)
*   Actionable Summary View (maybe CDSCards, AdaptiveForms, iFrame depending on implementation/ integration)
*   EHR Import of CPG (features determined and subsetted by EHR)
*   Deep EHR Integrations with CDS Service
*   Then add incremental effort for derived capabilities and how they interact or are implemented (Metric/Measure, eCaseReport, eCasePlanSummaryView/eCasePlanProgressingNote).  Some capabilities and enablements build on others.

![alt_text](assets/images/CPG-03-CPGEnablements.png "image_tooltip")

FIG 17. A given CPG may provide a distinct set of enablements, at singular or multiple Levels of Enablement, or may go through successive versions in its development lifecycle with increasing Levels of Enablement, particularly as the impact of its recommendations and interventions prove to be correlated (or even causal) to key outcomes and thus justify the effort.  Lower Levels of Enablement may largely serve to collect guideline-related patient information to inform guideline development in certain situations such as where evidence is scarce, but needed very urgently such as an emergency response to a pandemic with a novel contagion.

---

[^1]: https://wiki.ihe.net/index.php/Computable_Care_Guidelines Computable Care Guidelines (CCG) profile

[^2]: 'http://www.ihe.ca/download/ambassador_headache_final_100_pager.pdf'
