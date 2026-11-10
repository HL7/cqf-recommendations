This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

This section discusses trade-offs between effort, time to develop, and capabilities enabled (and value that can be derived) when developing a CPG.

### Levels of Enablement

Levels of enablement are successively more feature-rich implementations of the capabilities and features described by this implementation guide, specifically as related to:

*   CPG features and capabilities implemented
*   Intended delivery and dissemination mechanisms
*   [Levels of knowledge representation](documentation-approach-06-01-levels-of-knowledge-representation.html) formalized across CPG features (as described in the [CPG knowledge architecture](documentation-approach-12-conceptual-knowledge-architecture.html))
*   [Tiers of functionality](documentation-approach-07-tiers-of-functionality.html)
*   [Methods of implementation](documentation-approach-09-methods-of-implementation.html)
*   [Mechanisms of integration](documentation-approach-10-mechanisms-of-integration.html)

This implementation guide defines the following levels of enablement:

1.  Contextualized narrative (searchable)
2.  Contextualized narrative (delivered in context)
3.  Contextualized narrative with patient-level information (basic summary view)
4.  Actionable intervention (with or without narrative and summary view; for example, using CDS Hooks)
5.  Actionable summary view (for example, using CDS Hooks cards, adaptive forms, or an embedded application, depending on the implementation and integration)
6.  EHR import of the CPG (with the features supported determined by the EHR)
7.  Deep EHR integration with a CDS service

Derived capabilities, such as metrics and measures, eCase reports, and case plan summaries and progressing notes, add incremental effort at any of these levels. Some capabilities and enablements build on others.

<details open>

<summary>

Figure 1. A given CPG may provide a distinct set of enablements, at singular or multiple Levels of Enablement, or may go through successive versions in its development lifecycle with increasing Levels of Enablement, particularly as the impact of its recommendations and interventions prove to be correlated (or even causal) to key outcomes and thus justify the effort.  Lower Levels of Enablement may largely serve to collect guideline-related patient information to inform guideline development in certain situations such as where evidence is scarce, but needed very urgently such as an emergency response to a pandemic with a novel contagion.

</summary>

<img src="CPG-03-CPGEnablements.png" alt="CPG Levels of Enablement" class="img-responsive img-rounded center-block" width="600"/>

</details>
