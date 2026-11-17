This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

The following frameworks are used in guideline development and across the evidence ecosystem:

### Knowledge Synthesis and the Evidence Pyramid

Knowledge synthesis is the process in the professional community of practice that applies and develops methodologies for systematically evaluating a corpus of evidence related to a particular condition or intervention.  This includes deciding what evidence from across the evidence ecosystem to evaluate ([GIN-McMaster checklist](documentation-approach-cds-implementation-evidence.html#ref-schunemann-2014)) as well as various methods for performing this evaluation ([GIN-McMaster checklist](documentation-approach-cds-implementation-evidence.html#ref-schunemann-2014)). One factor that is taken into consideration is the validity and/or quality of evidence.  In evaluating the validity of evidence, one factor that is taken into consideration is the Evidence Pyramid, discussed below.  The quality of evidence may be systematically evaluated, often through knowledge synthesis methodologies such as meta-analyses, systematic reviews, evidence summaries, or rapid reviews, and applying frameworks such as GRADE, discussed further below.

### Meta-Analyses and Systematic Reviews (Syntheses)

A meta-analysis is a statistical analysis that combines the results of multiple quantitative studies (e.g. Randomized Controlled Trials (RCT’s), cohort studies) that address the same question, with each individual study reporting individual study results that are expected to have some degree of error. The objective is to use statistical approaches to derive a pooled estimate closest to the ‘unknown truth’. Meta-analyses yield a weighted average of the results of the individual studies and have the capacity to contrast the results from different studies, identify patterns among study results or potential sources of disagreement among those results, or other relationships that become evident in the context of multiple studies. This approach of aggregating information leads to a higher statistical power and more robust point estimate than is possible from any individual study. (ref)

A systematic review is a summary of the literature that uses a systematic approach to identify and critically appraise publications or evidence from the literature on a given topic.  Systematic reviews are intended to provide a comprehensive and exhaustive summary of current evidence that is ”methodical, comprehensive, transparent, and replicable.” (ref) systematic reviews may relate to interventions (benefits and harms), use of diagnostic testing to detect a particular disease, prognosis or probable course for future outcomes, risks of developing a given condition, or even a systematic review of systematic reviews to consolidate holistic evidence about a given topic (e.g. disease, procedure).

<details open>

<summary>

Figure 1. The Evidence Pyramid refers to a means to evaluate the quality or validity of evidence (higher toward the top) as well as provide a visual depiction of the amount of evidence (width)[^3].  The evaluation of the evidence not only informs the guideline development process and resulting recommendations but is further communicated together with the recommendations themselves using the GRADE framework, described below.

</summary>

<img src="CPG-04-01.png" alt="Evidence Pyramid" class="img-responsive img-rounded center-block" height="500" width="500"/>

</details>

**PICOTS Typology** - **P**atient population, **I**ntervention, **C**omparator, **O**utcomes, **T**iming, **S**etting. The **PICOTS** Typology may be used for scoping the guideline and individual recommendations and the analysis of the supporting evidence or studies (e.g., meta-analyses, systematic reviews, and the individual studies that serve as their body of evidence).  There are implications to guideline eligibility, applicability criteria for individual recommendations (the “condition” portion of ECA rules), and various data element and terminology semantics across the CPG ([GIN-McMaster checklist](documentation-approach-cds-implementation-evidence.html#ref-schunemann-2014); [Chang et al., 2012](documentation-approach-cds-implementation-evidence.html#ref-chang-2012)).  For more on using PICOTS within HL7 Standards, see the EBM-on-FHIR initiative ([HL7 Evidence and Statistics](documentation-approach-cds-implementation-evidence.html#ref-hl7-ebm)).

**GRADE** (**G**rades of **R**ecommendation **A**ssessment, **D**evelopment and **E**valuation) **GRADE** describes a process and a structured framework for conveying information to develop a common, transparent, and sensible system for grading the **quality** of evidence and the **strength** of recommendations. Quality of evidence and strength of recommendations have implications for not only recommendation metadata and implementation approaches.  GRADE distinctly separates the evaluation of the quality of evidence from the evaluation of strength of recommendations ([GIN-McMaster checklist](documentation-approach-cds-implementation-evidence.html#ref-schunemann-2014); [Andrews et al., 2013](documentation-approach-cds-implementation-evidence.html#ref-andrews-2013); [Balshem et al., 2011](documentation-approach-cds-implementation-evidence.html#ref-balshem-2011); [ACIP GRADE guidance](documentation-approach-cds-implementation-evidence.html#ref-cdc-acip-grade); [GRADE Handbook](documentation-approach-cds-implementation-evidence.html#ref-grade-handbook)).
