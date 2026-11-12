This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

Guideline development consists of a community of practice made up of numerous professionals with expertise and skills in various clinical/scientific fields.  This implementation guide does not describe the guideline development process in complete detail. However, it gives an overview to provide sufficient context for the rest of the implementation guide since the scope for the CPG is to provide a computer-interpretable representation of the final work product of the guideline development process.

This section covers:

*   Overview of the guideline development process (this page), including the guideline development group and scoping
*   [Guideline Development Frameworks](documentation-approach-04-02-guideline-development-frameworks.html)
*   [6S Evidence Pyramid and Learning Health Systems](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html)
*   [Analysis of Evidence, Recommendations, and Reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html)
*   [Development of Computable Clinical Guideline Artifacts](documentation-approach-04-05-computable-guideline-artifacts.html)

Clinical practice guidelines are systematically developed statements to assist clinical practitioner and patient decisions about appropriate care for specific clinical conditions, procedures, and/or similarly scoped activities. Guidelines consist of recommendations for patient care, which are based on scientific research and data (evidence), vetted through rigorous processes of a review and synthesis by recognized domain and methodological experts and other key stakeholders (e.g. patient and caregiver advocates) to guide healthcare decisions and activities for defined scope. A guideline may consist of one or more recommendations, contextualizing information, the possible means or strategies for bringing together or orchestrating recommendations, and other relevant considerations. A recommendation is a proposal pertaining to the best course of action put forth by an authoritative source or body (e.g. governmental or professional society convened guideline development group).  More detailed descriptions of and best practices for the guideline development process may be found at numerous publicly available resources (e.g.,  [https://www.ncbi.nlm.nih.gov/books/NBK209539/pdf/Bookshelf_NBK209539.pdf](https://www.ncbi.nlm.nih.gov/books/NBK209539/pdf/Bookshelf_NBK209539.pdf); [https://cebgrade.mcmaster.ca/guidelinechecklistonline.html](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html); [https://doi.org/10.7326/0003-4819-153-3-201008030-00010](https://doi.org/10.7326/0003-4819-153-3-201008030-00010); [https://www.nccih.nih.gov/health/providers/clinicalpractice](https://www.nccih.nih.gov/health/providers/clinicalpractice)) and are beyond the scope of this document, though a few key concepts will be covered.

<details open>

<summary>

Figure 1. Overview of the phases of the guideline development process that generally occur sequentially, but may be overlapping and concurrent particularly for different recommendations within a guideline.

</summary>

<img src="CPG-04-00.png" alt="Phases of the guideline development process" class="img-responsive img-rounded center-block" width="500" height="500"/>

</details>

### Guideline Development Group

The guideline development group is the multi-stakeholder, cross-functional team assembled to develop the guideline. It often includes members from the target audience (specialist and primary care clinicians), content experts, patients and caregivers, front-line clinicians, evidence-based practice experts, outcomes and quality experts, usability experts, experts in medical and shared decision-making, methodology experts, and experts in health economics. ([https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#GuidelineGroupMembershiptable](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#GuidelineGroupMembershiptable)).

For the digital CPG, we will need to add a few more experts to the guideline development group or have a few key resources serve cross-functional roles with a Knowledge engineering team (see [Knowledge Engineering](documentation-approach-05-knowledge-engineering-overview.html)).  These may include experts in creating computable representations of the guideline such as: knowledge extraction and/or elicitation, terminologists and/or ontologists, clinical research informatics ([ref](https://www.amia.org/applications-informatics/clinical-research-informatics)), clinical informatics, clinical decision support, cognitive informatics, knowledge formalism and expression, measurement science and measure development, user experience (UX), and user-centered design.  These experts often start with a “paper” or narrative guideline but will likely produce much higher fidelity, accurate, and usable expressions of the guideline through a more “agile” approach to concurrent, integrated, and cross-functional approach to guideline development and knowledge engineering.

### Scoping

Scoping refers to the process and establishment of criteria to describe and constrain the focus of the guideline. It addresses who is the target user of the guideline, who it applies to, and what is addressed in the guideline. This is typically based on various factors, including high prevalence and burden of disease, avoidable mortality and morbidity, high cost, emerging diseases or emerging care options, variation in clinical practice, and rapidly changing evidence. The PICOTS Typology (i.e., population, intervention, comparison, outcome, timeframe) is often used in scoping and correlates closely to the eligibility criteria for the CPG  ([https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Prioritytable](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Prioritytable)).

### Guideline Development Frameworks

Frameworks such as the Evidence Pyramid, the PICOTS typology, and GRADE are used to synthesize and grade evidence and to scope guidelines and recommendations. See [Guideline Development Frameworks](documentation-approach-04-02-guideline-development-frameworks.html).

### 6S Evidence Pyramid and Learning Health Systems

A computable CPG enables the highest ("Systems") level of the 6S Evidence Pyramid, in which evidence is integrated with individual patient records, and supports the feedback loops of a Learning Health System. See [6S Evidence Pyramid and Learning Health Systems](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html).

### Analysis of Evidence, Recommendations, and Reporting

The guideline development group analyzes the evidence, formulates recommendations (with their direction, strength, and quality of evidence), and reports and disseminates the guideline. See [Analysis of Evidence, Recommendations, and Reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html).

### Development of Computable Clinical Guideline Artifacts

Computable artifacts (recommendations, strategies, pathways, metrics, measures, and case reports) can be co-developed with the narrative guideline through an integrated process. See [Development of Computable Clinical Guideline Artifacts](documentation-approach-04-05-computable-guideline-artifacts.html).
