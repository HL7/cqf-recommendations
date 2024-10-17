{:toc}

The FHIR Clinical Guidelines Implementation Guide (CPG IG) provides a means of creating a computable representation of a narrative clinical guideline that is faithful to guideline intent and supports the derivation of downstream capabilities such as cognitive and decision support, quality measures, case reporting, and documentation templates that direct clinical documentation in support of determining guideline compliance.

---

{: #clinical-guidelines-implementation-guide}

This implementation guide is organized into the following sections, accessible via the menu bar at the top of every page:

*   [Home](index.html): The home page provides summary, introductory, and background information
*   [Approach](approach.html): The approach page documents the overall approach to representing computable guideline content
*   [Methodology](methodology.html): Describes methodologies for developing computable guideline content
*   [Profiles](profiles.html): Describes expectations for use and an index of the profiles and extensions used in representing computable guideline content
*   [Terminology](terminology.html): Describes expectations for the use of terminology as part of computable guideline content
*   [Libraries](libraries.html): Describes expectations for the use of libraries of computable expressions (e.g. CQL) as part of computable guideline content
*   [Examples](examples.html): Index of examples and example artifacts
*   [Downloads](downloads.html): Downloads for the specification
*   [Glossary](glossary.html): Glossary of key terms used in the specification
*   [Version History](http://hl7.org/fhir/uv/cpg/history.html): Index of all versions of this implementation guide

### Introduction

This Implementation Guide (IG) supports the development of standards-based computable representations of the content of clinical care guidelines. Its content pertains to technical aspects of digital guidelines implementation and is intended to be usable across multiple use cases across clinical domains as well as in the International Realm.

This IG has been developed through multi-organizational and multidisciplinary efforts ([Adapting Clinical Guidelines for the Digital Age](https://journals.lww.com/ajmqonline/toc/2023/09002), [SMART Guidelines](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines), holistically involving a range of stakeholders, including those who work at the beginning of the process (e.g., guideline developers) to the end users (e.g., clinical implementation team representatives, health IT developers, patients/patient advocates), and others in between (e.g., informaticists, communicators, evaluators, public health organizations, clinical quality measure and clinical decision support developers).

The premise involves determining the representation of clinical practice guideline recommendations in FHIR as part of a parallel and iterative guideline development and implementation process rather than a traditional sequential and siloed process (Figure 1.1). By including all the relevant perspectives (e.g., guideline authors, informaticists, implementers, communicators, evaluators) as part of the iterative process, the resulting computable representation of the recommendations should be well-vetted and more readily implemented across multiple clinical domains.

<div>
  <img src="Guidelines-iterative-and-incremental-model-2.png" alt="Guideline development cycle" height="344" width="700"/>
</div>

_Figure 1.1_ High-level current state (siloed and sequential) and proposed future state (parallel and iterative) process for guideline development and implementation [Source](https://journals.lww.com/ajmqonline/fulltext/2023/09002/adapting_clinical_guidelines_for_the_digital_age_.2.aspx).

### Scope

<div>
  <img src="CPG-Main-06.png" alt="Clinical quality lifecycle" class="img-responsive img-rounded center-block" width="700"/>
</div>

_Figure 1.2_ Clinical Quality Lifecycle with situated standards to address each respective phase. The CPG-IG addresses a critical gap in explicitly formalizing the guideline recommendations and other guideline features as computer-interpretable for downstream consumption and closing the feedback and feedforward loop(s).

<div>
  <img src="CPG-Main-06-Legend.png" alt="Clinical quality lifecycle legend" class="img-responsive img-rounded center-block" width="70" />
</div>

* [Evidence-Based Medicine-on-FHIR (EBM-on-FHIR)](http://hl7.org/fhir/clinicalreasoning-evidence-and-statistics.html))
* [Clinical Practice Guidelines-on-FHIR (CPG-on-FHIR)](http://hl7.org/fhir/uv/cpg)
* [CDS Hooks](http://cds-hooks.hl7.org)
* [SMART App Launch](http://hl7.org/fhir/smart-app-launch/)
* [Quality Measures (QM)](http://hl7.org/fhir/us/cqfmeasures)
* [Data Exchange for Quality Measures (DEQM)](http://hl7.org/fhir/us/davinci-deqm)
* [Electronic Case Reporting (eCR)](http://hl7.org/fhir/us/ecr)
* [United States (US) Core](http://hl7.org/fhir/us/core)
* [Quality Improvement (QI) Core](http://hl7.org/fhir/us/qicore)
* [US Publich Health Profiles Library (USPHPL)](http://hl7.org/fhir/us/ph-library)
* [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips)
* [Clinical Quality Language (CQL)](http://cql.hl7.org)
* [Clinical Reasoning (CR) Module](http://hl7.org/fhir/clinicalreasoning-module.html)

Translating guideline recommendations and other types of guidance into practice has historically been a site-by-site exercise that has been disconnected from guideline/guidance development, creating unnecessary redundancies and introducing potential errors in translation that can lead to inconsistencies in how the guideline or guidance is executed. This clinical practice guidelines implementation guide (CPG-IG) consists of standards and a standardized, scalable approach to help make the effort of translating and implementing clinical practice guidelines and other types of guidance more efficient and effective. Key aspects include:

1. An integrated guideline/guidance development and implementation process, referred to as "the integrated process" [Source](https://journals.lww.com/ajmqonline/fulltext/2023/09002/an_integrated_process_for_co_developing_and.3.aspx)
2. Common standards that can work across the entire clinical quality ecosystem (Figure 1.2) and different electronic health record (EHR) platforms
3. Closed-loop guideline content and information flow inclusive of feedback and feedforward processes (i.e., high-level "Proposed Future State" in Figure 1.1 and detailed in Figure 1.3)

<div>
  <img src="CPG-04.05-01.png" alt="Integrated process" class="img-responsive img-rounded center-block" width="700"/>
</div>

_Figure 1.3_ The integrated process with integrated evaluation in guideline development and implementation, showing a human-cnetered design approach to co-develop marrative and computable guidelines and build in evaluation, with feedback and feedforward loops throughout the process. ([Source](https://journals.lww.com/ajmqonline/fulltext/2023/09002/an_integrated_process_for_co_developing_and.3.aspx) and [Source](https://journals.lww.com/ajmqonline/fulltext/2023/09002/an_evaluation_framework_for_a_novel_process_to.4.aspx)).

This IG is focused on the development of computable representations of clinical guideline content as FHIR knowledge artifacts. Since the initial publication, much of the guidance around the content management lifecycle (Shareable, Publishable, Computable, and Executable profile categories) has been generalized to apply across similar content management use cases in other FHIR IGs and is now available in the [Canonical Resource Management Infrastructure (CRMI)](http://hl7.org/fhir/uv/crmi) IG. Content conforming to this CPG IG should make use of the content development approach supported by the CRMI IG.

In addition, the initial publication of this IG included conformance and guidance related to the use of [Clinical Quality Language (CQL)](http://cql.hl7.org). This material has been generalized to apply across similar use cases in other FHIR IGs and is now available in the [Using CQL With FHIR](http://hl7.org/fhir/uv/cql) implementation guide. Content conforming to this CPG IG should make use of the CQL approach supported by the Using CQL With FHIR IG.

### Goals

**The purpose of the CPG-IG is to:**

* Enable computable guideline specification to occur concurrently with guideline development;
* Faithfully express guideline intent, including rationale and linkage to evidence-base;
* Enable efficient and effective use and reuse of the guideline specification in downstream capabilities;
* Accelerate the development of computable guideline specifications and interventions through an integrated, cross-functional, rapid-cycle (Agile) development process that is inclusive of local implementation;
* More closely tie guideline intent, interventions, and measurements; and
* Provide closed-loop (feedback and feedforward loops) across the knowledge, practice, and discovery or evidence ecosystems.

_Direct goals:_

* Reduce duplicate development effort involved in the implementation of clinical practice guideline recommendations in clinical systems
* Reduce unnecessary and/or unintentional variability in clinical practice guideline implementation
* Improve efficiency and effectiveness of guideline dissemination and implementation processes (e.g. decrease time to uptake of clinical best practices)
* Measure compliance with clinical practice guideline recommendations
* Improve appropriate compliance with clinical practice guideline recommendations
* Afford means for full lifecycle feedback loop in best practice development process (e.g. Professional Guideline Development, Learning Health System, Clinical Translational and Implementation Sciences) including basic considerations for discovery to delivery.
* Complement without duplication EBM, MedMorph, eCR, DEQM, QM, and other related IGs

_Indirect goals:_

* Minimize the time needed to implement clinical practice guideline recommendations in clinical systems
* Improve the ability to share computable biomedical knowledge artifacts (clinical knowledge definitions, value sets, order sets, expression logic, interventions, etc.)
* Enhance the value of computable guidelines (decrease cost/effort, increase utility/usability)

The primary objective of the CPG approach to codifying clinical practice guidelines is to accelerate the translation and delivery of evidence-based and best practice recommendations to the point of care. The CPG-IG was developed through multi-stakeholder engagement (e.g., guideline developers, knowledge engineers, clinical implementers, standards experts, patient and caregiver advocates, governmental and nongovernmental agencies, and others) to evolve the development approach and means of expressing clinical practice guidelines in computable formats. These stakeholders identified the need to concurrently and iteratively develop computable formats along with the narrative guidelines/guidance. As such, the knowledge engineering process, inclusive of elicitation, translation, specification, and formal representation, must be integrated with the guideline development process and serve the function of translating between the clinical domain and the formal, computable expressions thereof. The [Approach](approach.html) section describes some of the fundamentals of these activities as well as the concept, means, and performances to carry out this activity.

Secondarily, we describe how these activities interact with adjacent and related activities as well as content and related standards in the broader knowledge ecosystem (inclusive of evidence ecosystem, guideline developers, guideline-directed care, quality measure ecosystem, registry community, etc.). This includes upstream activities, such as evidence generation and knowledge discovery, and downstream activities, such as patient care, decision support (i.e., CDS), and advanced cognitive support (e.g., providing options within the clinical workflow that offer evidence-based, patient-centered information to support clinical judgement), quality measurement and reporting, and electronic case reporting (for similarly scoped conditions). All can serve to inform subsequent iterations of clinical guidelines and guideline-directed care and thus have a key role in the learning health system.

### Audience

This IG provides both an approach and suggested methodology for computable representation of clinical practice guidelines, so the audience for this guide is broad and inclusive of an array of roles across the spectrum of clinical guideline development and implementation, from clinical guideline developers and authors, through clinical informaticists, health system integrators and clinical systems developers. Areas of the IG that are more technical assume familiarity with relevant standards, including FHIR and CQL, though links are provided to reference materials for further reading.

The CPG Approach section highlights:

* Various highly specialized and technical participants in the “Knowledge-to-Delivery-to-Discovery” ecosystem that often interact with each other’s work products but may not interact directly with each other;
* How the HL7 CPG-IG recognizes the technical participants' distinct and valuable work and provides numerous opportunities to reuse domain standards (e.g., FHIR and other HL7 IG's); and
* A reconceptualization of work processes that share and reuse essential information and content.

Much of this work has been informed by several international efforts, including the U.S. Centers for Disease Control and Prevention’s (CDC’s) Adapting Clinical Guidelines for the Digital Age initiative ([ref](https://journals.lww.com/ajmqonline/toc/2023/09002)), the World Health Organization’s (WHO’s) Antenatal Care Guidelines ([ref](https://www.who.int/reproductivehealth/publications/maternal_perinatal_health/anc-positive-pregnancy-experience/en/)), the HL7 Clinical Decision Support and Clinical Quality Information Working Groups, and numerous other publicly funded and private sector initiatives, including local health system implementations of guidelines and in-workflow pathways.

**Notes to Target Audiences:**

**To the Guideline Developer:** Working in parallel with knowledge engineers and other downstream consumers (e.g., local implementers) can identify areas within the guideline that need clarification, helping improve the narrative, provide opportunity to review the translation of the tools for fidelity to the guideline, and get early feedback from end-consumers of the guideline work product – all _before_ the guidelines or tools are published. These adjustments should not change the intent of the guideline but rather should make the intended recommendations more implementable.

**To the Knowledge Engineer:** Working in parallel with guideline developers allows validation of translations directly with the “source of truth,” helping ensure accuracy. Working in parallel with downstream consumers (e.g., local implementers) provides the ability to confirm feasibility and validity for the users of the artifacts as they are produced by knowledge engineers and may even provide a useful means to build and validate once (i.e., without unnecessary redundancy) against real-world data and implementations.

**To the Downstream Consumers:** Being involved with the guideline development and knowledge engineering can help identify issues early in the process and optimize incorporation of the knowledge into downstream products that aid in implementation, such as apps, measures, or other point-of-care tools, and significantly reduce the rework of re-engineering parts of the guideline locally, ultimately saving time and effort.

**To the Local Implementer:** The main goal of the knowledge developed is to implement it in practice. Having local implementers (both clinicians and informaticians) involved with guideline development and knowledge engineering allows for the ability to communicate anticipated issues for implementation so that guideline developers or knowledge engineers have the opportunity to adjust their respective products in order to help optimize the ease and positive impact of implementation. These adjustments should not change the intent of the guideline but rather should make the intended reommendations more implementable. A computable guideline representation can significantly reduce rework, saving time and effort for local implementations.

**To the Evidence Ecosystem:** Taking a holistic approach to guideline development and implementation includes considerations for learning and continuous improvement through feedback and feedforward loops. A number of activities in the knowledge ecosystem that serve specific functions (e.g., case reporting to public health, quality reporting to payers, quality/data reporting to medical society registries, etc.) could also help provide the evidence that can inform updates to the guidelines/guidance. This evidence may be based on patient-level, point-of-care guideline usage, and detailed tracking thereof, affording new means of collecting evidence.

Using approaches, standards, and techniques addressed in further detail in individual sections, this CPG IG can serve a critical role in the virtuous cycle of a Learning Health System.

### Background

The need for computable care guidelines can be considered in the context of the data lifecycle, where the representation of the guideline recommendations in FHIR helps deliver actionable knowledge. By translating the recommendations in clinical practice guidelines at the source, and disseminating a computable version along with the narrative version of the guidelines, the effort of translation need not be repeated across every organization that intends to apply the recommendations. Likewise, unnecessary or unintentional variations as a result of duplicative translation efforts could be prevented with a standard, computable version that is ready to be implemented. In removing the need for translating recommendations at each local clinical system, and removing as much variation as possible through a standard translation, the time needed to apply the recommendations in practice should also be reduced, helping scientific evidence reach patient care more easily, quickly, accurately, and consistently.

In considering common patterns across multiple guidelines, this implementation guide can apply to a variety of use cases across multiple clinical domains, as is evidenced by the [examples](examples.html) provided. These common patterns not only create a way to organize the content for the translation into computable recommendations but also help implementers operationalize the recommendations within clinical workflows.

In particular, the translation into tools like CDS and eCQMs applies common health IT standards like Fast Healthcare Interoperability Resources (FHIR) and Clinical Quality Language (CQL). How to use these standards to develop shareable, platform-independent tools based on guidelines/guidance for a variety of diseases, conditions, or preventive care is the primary focus of this CPG-IG, including this Approach section. Secondarily, this CPG-IG shows how using FHIR can help with other data-focused activities, such as public health reporting (i.e., using electronic case reports) or quality reporting (i.e., using eCQMs), that provide a feedback loop that feeds the evidence. The evidence can also be represented using FHIR (i.e., EBM-on-FHIR) and could be applied in summarizing evidence and updating guidelines/guidance. This completes the "data lifecycle" that allows for continuous learning and improvement – a "learning health system". The CPG-IG approach can be a key component of a learning health system in times requiring rapid response, where knowledge of best practice is not well-known.

It is important to note that this effort is a concerted attempt to build on, learn from, contribute to, and work with existing approaches, initiatives, and efforts in guideline development, translation, and implementation. The contribution of this implementation guide is focused on describing a best-practices conceptual approach combined with a practical methodology that leverages the interoperability framework provided by FHIR as a way to overcome the impedance mismatch between knowledge and clinical data models that is commonly encountered by efforts in this space. The approach and methodologies presented here are the combined result of many person years of work across multiple initiatives and coordinated with groups like Health eDecisions, Clinical Quality Framework initiative, the CDC's Adapting Clinical Guidelines for the Digital Age intiative, the BPM+ for Health initiative, IHE's Computable Care Guidelines initiative, and the WHO's SMART Guidelines initiative. Feedback on the approach and methodologies are welcomed and encouraged. See the references section for further reading and background that informs the approach taken here.

### References

* Adapting Clinical Guidelines for the Digital Age – American Journal of Medical Quality - September/October 2023 - Volume 38 – Supplement 2 - https://journals.lww.com/ajmqonline/toc/2023/09002
* Adapting Clinical Guidelines for the Digital Age: Summary of a Holistic and Multidisciplinary Approach. American Journal of Medical Quality 38(5S):p S3-S11, September/October 2023. https://doi.org/10.1097/JMQ.0000000000000138
* An Integrated Process for Co-Developing and Implementing Written and Computable Clinical Practice Guidelines. American Journal of Medical Quality 38(5S):p S12-S34, September/October 2023. https://doi.org/10.1097/JMQ.0000000000000137
* An Evaluation Framework for a Novel Process to Codevelop Written and Computable Guidelines. American Journal of Medical Quality 38(5S):p S35-S45, September/October 2023. https://doi.org/10.1097/JMQ.0000000000000140
* Adapted Kaizen: Multi-Organizational Complex Process Redesign for Adapting Clinical Guidelines for the Digital Age. American Journal of Medical Quality 38(5S):p S46-S59, September/October 2023. https://doi.org/10.1097/JMQ.0000000000000133
* WHO SMART guidelines: optimising country-level use of guideline recommendations in the digital age. Lancet Digit Health. 2021 Apr;3(4):e213-e216. https://doi.org/10.1016/S2589-7500(21)00038-8
* Experiences in aligning WHO SMART guidelines to classification and terminology standards. BMJ Health Care Inform. 2023 Aug;30(1):e100691. https://doi.org/10.1136/bmjhci-2022-100691
* A multi-layered framework for disseminating knowledge for computer-based decision support. Journal of the American Medical Informatics Association 2011 Dec; 18(Suppl 1): i132-i139. [https://doi.org/10.1136/amiajnl-2011-000334](https://doi.org/10.1136/amiajnl-2011-000334)
* An Ontological Framework for Adaptive Medical Workflow. Journal of Biomedical Informatics Volume 41, Issue 5, October 2008, Pages 829-836. [https://doi.org/10.1016/j.jbi.2008.05.012](https://doi.org/10.1016/j.jbi.2008.05.012)
* International Standard Classification of Occupations (ISCO). [http://www.ilo.org/public/english/bureau/stat/isco/index.htm](http://www.ilo.org/public/english/bureau/stat/isco/index.htm)
* Classifying health workers: Mapping occupations to the international standard classification. World Health Organization. [https://www.who.int/hrh/statistics/Health\_workers\_classification.pdf](https://www.who.int/hrh/statistics/Health_workers_classification.pdf)
* Comparing Computer-interpretable Guideline Models: A Case-study Approach. Journal of the American Medical Informatics Association Volume 10, Issue 1, January 2003, Pages 52–68. [https://doi.org/10.1197/jamia.M1135](https://academic.oup.com/jamia/article/10/1/52/816551)
* Computer-interpretable clinical guidelines: A methodological review. Journal of Biomedical Informatics Volume 46, Issue 4, August 2013, Pages 744-763. [https://doi.org/10.1016/j.jbi.2013.06.009](https://www.sciencedirect.com/science/article/pii/S1532046413000841)
* Computerization of workflows, guidelines, and care pathways: a review of implementation challenges for process-oriented health information systems. Journal of the American Medical Informatics Association, Volume 18, Issue 6, November 2011, Pages 738–748. [https://doi.org/10.1136/amiajnl-2010-000033](https://academic.oup.com/jamia/article/18/6/738/2909128)
* Conceptual alignment of electronic health record data with guideline and workflow knowledge. International Journal of Medical Informatics 64 (2001) 259–274. [https://doi.org/10.1016/S1386-5056(01)00196-4](https://www.sciencedirect.com/science/article/abs/pii/S1386505601001964)
* GEM: A Proposal for a More Comprehensive Guideline Document Model Using XML. Journal of the American Medical Informatics Association, Volume 7, Issue 5, September 2000, Pages 488–498. [https://doi.org/10.1136/jamia.2000.0070488](https://academic.oup.com/jamia/article/7/5/488/759461)
* GLIF3: a representation format for sharable computer-interpretable clinical practice guidelines. Journal of Biomedical Informatics Volume 37, Issue 3, June 2004, Pages 147-161. [https://doi.org/10.1016/j.jbi.2004.04.002](https://www.sciencedirect.com/science/article/pii/S1532046404000334)
* Modelling biological processes using workflow and Petri Net models. Bioinformatics, Volume 18, Issue 6, June 2002, Pages 825–837. [https://doi.org/10.1093/bioinformatics/18.6.825](https://academic.oup.com/bioinformatics/article/18/6/825/220757)
* Operationalizing Guideline-based Care. Presentation at the 2013 AeHIN General Meeting. [http://www.aehin.org/Meetings/2013AeHINGeneralMeeting/AGM13Files3.aspx](http://www.aehin.org/Meetings/2013AeHINGeneralMeeting/AGM13Files3.aspx)
* Representation primitives, process models and patient data in computer-interpretable clinical practice guidelines: A literature review of guideline representation models. International Journal of Medical Informatics, Volume 68, Issues 1–3, 2002, Pages 59-70, ISSN 1386-5056, [https://doi.org/10.1016/S1386-5056(02)00065-5.](http://www.sciencedirect.com/science/article/pii/S1386505602000655)

### Acknowledgements

|Author Name|Affiliation|Role|
|----|----|----|
|Sivaram Arabandi|Ontopro LLC|Contributor|
|J. Rex Astles|CDC, Health Scientist|Contributor|
|Wendy Blumenthal|CDC, Health Scientist|Contributor|
|Mike Boston|UX Architect|Contributor|
|Matthew M. Burton| |Editor|
|Zahid Butt|Medisolv Inc, CEO|Contributor|
|Dave Carlson|Clinical Cloud Solutions, Solution Architect|Contributor|
|Daryl Chertcoff|HLN Consulting, Solution Architect|Contributor|
|Jeffrey Danford| |Contributor|
|Floyd Eisenberg|iParsimony|Contributor, Co-Chair (Clinical Quality Information)|
|Margaret S. Filios|CDC, Senior Scientist|Contributor|
|Daniel Futerman|Jembi Health Systems, Senior Program Manager|Contributor|
|Joel C. Harder| |Contributor|
|Aaron M. Harris|Formerly CDC, Subject Matter Expert|Contributor|
|Sharon Hibay|Advanced Health Outcomes, Principal|Contributor|
|Dwayne Hoelscher|Nursing Informaticist|Contributor|
|Emma Jones| |Contributor, Co-Chair (Patient Care), IHE Co-Chair (Patient Care Coordination)|
|Brian Kaney|Vermonster|Editor|
|James Kariuki|CDC, Health Scientist|Contributor|
|Kensaku Kawamoto|University of Utah|Contributor, Co-Chair (Clinical Decision Support)
|Robert Lario|University of Utah/US Department of Veterans Affairs, Health Standards Architect|Contributor|
|Taylor Le|Vermonster|Editor|
|Ira M. Lubin, PhD|CDC, Health Scientist|Contributor|
|Irene Maitha|Technical Project Manager, Digital Health|Contributor|
|Laura Haak Marcial|RTI International, Health Informaticist|Contributor|
|Robert McClure| |Contributor, Co-Chair (Vocabulary)
|Maria Michaels|AHRQ, Special Expert for Digital Health (formerly CDC, Senior Public Health Advisor)|Editor|
|Blackford Middleton| |Contributor|
|Anvil D. Nel|LIFELINE TECH (Pty) Ltd.|Contributor|
|Nikhil Patel|NHS, Physician|Contributor|
|Bryn Rhodes|Smile Digital Health|Editor, Co-Chair (Clinical Decision Support)|
|Derek Ritz|ecGroup Inc., Principal Consultant|Contributor, IHE Co-Chair (Quality Reporting and Public Health)|
|Susan J. Robinson|CDC, Senior Advisor (retired)|Contributor|
|Julie Scherer|Motive Medical Intelligence, Chief Informatics Officer|Contributor|
|Julia Skapik| |Contributor|
|Larie Smoyer|Motive Medical Intelligence, VP of Product Development|Contributor
|Davide Sottara|Mayo Clinic|Contributor|
|Keith Toussaint|KMT Strategies, Principal|Contributor|
|Jodi Wachs|Clinical Informaticist|Contributor|
|David Winters|The MITRE Corporation|Contributor|
{:.grid}

### Cross Version Analysis
{% include cross-version-analysis.xhtml %}
### Dependency Table
{% include dependency-table.xhtml %}
### Globals Table
{% include globals-table.xhtml %}
### IP Statements
{% include ip-statements.xhtml %}