---
layout: default
title: Analysis of Evidence, Recommendations, and Reporting
---

# Analysis of Evidence, Recommendations, and Reporting


## Analysis of Evidence

Analysis of evidence includes systematic approaches for evaluating the evidence to inform the guideline and individual recommendations. Expertise, tooling, and methodology largely reside in the knowledge synthesis and evidence-based practice community.  This is largely an approach that follows systematic review and meta-analyses, but in certain situations may also include a rapid review of the evidence.  The outputs from these analyses inform much of the content as well as metadata for the CPG. ([https://www.ahrq.gov/research/findings/evidence-based-reports/centers/index.html](https://www.ahrq.gov/research/findings/evidence-based-reports/centers/index.html)).  

### Information from the Evidence

There is a significant amount of information contained within the various evidence sources.  Different types of evidence may also contain different types of information, yet much of this information is similar, related, and/or overlapping.  There are numerous approaches and tools in the evidence ecosystem (evidence-based practice and knowledge synthesis communities of practice) for abstracting, decomposing, structuring, organizing, and evaluating the information contained within the evidence sources. This information is then used to summarize and synthesize derivative knowledge, often through systematic review and meta-analysis. These methodologies are beyond the scope of this document, but more detailed resources may found from these communities of practice ([https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Summarizingtable](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Summarizingtable)).  PICOTS as described above is one systematic means of extracting information from the evidence that may be particularly useful in the CPG.

### EBM-on-FHIR for Information from the Evidence

The evidence contains valuable information that is not only used in the guideline development process, but often for and in the guideline and recommendations themselves.  In the CPG, some of this information from the evidence may be formalized as attributes of the CPGRecommendations.  However, there is potentially even greater utility when the information from the corpus of evidence referenced by the guideline and its recommendations is formalized upstream in the evidence ecosystem.  This information may be formalized as explicit knowledge using the EBM-on-FHIR IG and its evidence resources and evidence variable(s).  This may include the various PICOTS variables from the evidence being formalized using standard terminologies (e.g., RxNorm, LOINC, SNOMED-CT) and expression languages (e.g., HL7 CQL) and will be discussed further.  

The formalization of this information from the evidence provides significant advantage (reuse or at least a reasonable starting point to work from) in the formalization of the guideline and guideline recommendations in the knowledge engineering lifecycle process for the CPG.  Furthermore, the formalized evidence information provides numerous downstream capabilities in the derivatives and for the consumers of the CPG.  In fact, much of this information enables more capabilities for the 6th or “systems” level of evidence (see 6S Evidence Pyramid above) including point-of-care integration of evidence, “patients like this” point-of-decision queries, various clinical research activities (e.g., outcomes research and data science) including PICOT definitions for populations studies, and continuous feedback loops mentioned in 6S Evidence Pyramid section.

## Recommendations

Recommendations are proposals pertaining to the best course of action put forth by an authoritative source or body related to a condition, procedure, clinical decision, or activity.  They are often expressed as summary tables with a column for succinct, clear, and specific narrative descriptions of the recommendation as well as additional columns for the directionality of the recommendation (to do or not do an activity), strength, and quality of evidence for each recommendation.  They may further include additional visual aids such as decision trees and/or flow diagrams.  Often, they also call out portions of a recommendation and/or how the recommendations hang together that lack evidence and may have relied on expert consensus.  Closely correlated to the recommendations are supplemental information on how the recommendation was determined and the evidence for each recommendation. This often includes evidence summaries, evidence-to-recommendation tables, and narrative discussion for how the guideline development group arrived at their decisions/recommendations.  ([https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Developingtable](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Developingtable); [https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Wordingtable](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Wordingtable))

Additionally, if the guideline development group includes measure development expertise, it may provide guidance on whether each recommendation could be a good candidate for performance/quality measurement. "If informatics expertise is included for co-developing computable CPGs, the guideline development group may decide to incorporate more active, computable intervention(s) within a recommendation.

Furthermore, the guideline development group may identify pertinent clinical or situational concepts (e.g., data elements, terminologies) pertaining to each recommendation or the guideline overall.  These may serve as metadata, inform data requirements and inferences in the CPG, and/or lay the foundation for the CPG eCaseReport.  Lastly, the guideline development group may identify gaps in evidence within the guideline development process. These gaps in evidence may further inform data requirements to be collected as part of a CPG eCaseReport.


## Reporting and Dissemination

Reporting is often done through an official, formal guideline report intended for a target audience. Often, some form of the guideline as well as the process and content (e.g., systematic review) through which it was developed is reported in a peer-reviewed journal.  Related, the dissemination of the guideline report and various supplemental artifacts (e.g., FAQs, decision aids, patient education material, measure definitions) focus on the intended audience and are conveyed through appropriate means, including online publication, professional society conferences, social media, through delegates to various provider organizations and/or patient advocacy groups, through teaching and training programs (e.g., continuing medical education), and/or professional society and regulatory body certification or accreditation programs  

([https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Reportingtable](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Reportingtable); [https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Disseminationtable](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Disseminationtable)).

Dissemination to measure development organizations, CDS vendors, EHR vendors, registry vendors, and/orSMART-on-FHIR application developers "could be included for computable CPGs.
