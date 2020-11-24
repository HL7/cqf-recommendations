---
layout: default
title: Levels of Enablement
---
# Levels of Enablement

This section discusses trade-offs between effort, time to develop, and capabilities enabled (and value that can be derived) when developing a CPG. From very basic context for narrative snippets searchable in a library (or Infobutton from EHR) to full clinical workflow enablement, cognitive support, and pathway tracking (likely via SMART-on-FHIR App or deep EHR integration). CPGs also enable feedback loops with real-world evidence of actual guideline usage and outcomes, and provide a substrate for the evidence ecosystem and a feedforward loop for evidence updates. To support description of, and allow declaration of conformance to, these various capabilities enabled by CPGs, the CPG-IG defines levels of enablement that correlate to work effort, time to delivery, and capabilities enabled.

## Levels of Enablement

Levels of enablement are successively more feature-rich implementations of the capabilities and features described by this implementation guide, specifically as related to:

*   CPG features and capabilities implemented
*   Intended Delivery and Dissemination Mechanisms
*   Knowledge Representation Levels formalized across CPG Features (capabilities described in CPG Knowledge Architecture)
*   Tiers of Functionality
*   Methods of Implementation
*   Mechanisms of Integration

This implementation guide defines the following levels of enablement:

*   Contextualized Narrative (searchable)
*   Contextualized Narrative (delivered in context)
*   Contextualized Narrative with Patient-level Information (basic summary view)
*   Actionable Intervention (with and without narrative and summary view; CDSHooks)
*   Actionable Summary View (maybe CDSCards, AdaptiveForms, iFrame depending on implementation/ integration)
*   EHR Import of CPG (features determined and subsetted by EHR)
*   Deep EHR Integrations with CDS Service
*   Then add incremental effort for derived capabilities and how they interact or are implemented (Metric/Measure, eCaseReport, eCasePlanSummaryView/eCasePlanProgressingNote).  Some capabilities and enablements build on others.

<details open>

<summary>

FIG 17. A given CPG may provide a distinct set of enablements, at singular or multiple Levels of Enablement, or may go through successive versions in its development lifecycle with increasing Levels of Enablement, particularly as the impact of its recommendations and interventions prove to be correlated (or even causal) to key outcomes and thus justify the effort.  Lower Levels of Enablement may largely serve to collect guideline-related patient information to inform guideline development in certain situations such as where evidence is scarce, but needed very urgently such as an emergency response to a pandemic with a novel contagion.

</summary>

<img src="assets/images/CPG-03-CPGEnablements.png" alt="image_tooltip" class="img-responsive img-rounded center-block" width="600"/>

</details>
