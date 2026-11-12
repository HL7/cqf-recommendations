{:toc}

{% include cpg-toc-layout.html sidebar=true %}

{% include cpg-horizontal-table-style.html %}

The Clinical Practice Guidelines (CPG) Implementation Guide explains how to represent a clinical guideline as reusable FHIR knowledge artifacts and use those artifacts in clinical systems. Start with the recommendation's clinical intent, express its data and decision logic, and validate how the resulting guidance works in a particular care setting.

This guide is for guideline authors, knowledge engineers, software implementors, clinical reviewers, and the tools and agents assisting them. It uses **FHIR R4 (4.0.1)**. The [profiles](profiles.html), [operations](artifacts.html#operationdefinition-index), and [conformance statements](documentation-conformance.html) provide the formal contracts; the narrative explains how to apply them.

<div class="cpg-home-task" markdown="1">
<a id="clinical-guidelines-implementation-guide"></a>

### Start with your task

| Your task | Read first | Result to work toward |
| --- | --- | --- |
| Implement an existing guideline package | [Implementation overview](documentation-approach-02-05-knowledge-implementation.html) | A tested local data, execution, and workflow integration |
| Author a computable guideline | [Methodology](methodology.html) | A versioned package of definitions, logic, terminology, evidence, and tests |
| Understand the model | [Approach](approach.html) | A clear separation of patient facts, reusable recommendations, and local workflow |
| Review content or an implementation | [Conformance](documentation-conformance.html) and [checklists](checklists.html) | Evidence for the requirements and review activities that apply |
| Find a worked example or resource | [Examples](examples.html) and [artifact index](artifacts.html) | A trace from a definition to patient-specific requests and events |
{:.cpg-horizontal-table}

</div>

### Introduction

A narrative recommendation often leaves implementation questions open: which patients it applies to, which data establishes eligibility, how missing information is handled, and what action to propose. This guide provides a shared way to make those decisions explicit and preserve their relationship to the source guideline.

The main work products are FHIR definitions, libraries of logic, terminology, and documentation that can be reviewed and exchanged. Local implementation then supplies the data mappings, execution environment, user interaction, and operational responsibilities needed to use them. This distinction is central to the [four levels of knowledge representation](documentation-approach-06-01-levels-of-knowledge-representation.html).

<div class="modified-content" markdown="1">

{% include cpg-diagram.html src="cpg-runtime-lifecycle.svg" ratio="1200 / 961" alt="Research and evidence inform guidelines and decision support. Clinical care supplies data for measurement, reporting, and further evidence review, connected through shared FHIR data and knowledge." caption="Figure 1. Guidelines connect evidence to decision support and clinical care. Measurement, reporting, and reviewed findings connect care back to evidence. Related standards illustrate the roles in this ecosystem; they are not a required dependency set. The [integrated process publication](documentation-approach-cds-implementation-evidence.html#ref-matson-koffman-2023) describes this collaborative approach." %}

</div>

### Scope

The guide focuses on representing clinical guideline content and connecting it to implementation. Its patterns also support related uses such as documentation, quality measurement, and reporting, each of which has its own implementation requirements.

| Standard or guide | Responsibility in an implementation |
| --- | --- |
| [FHIR R4 Clinical Reasoning](https://hl7.org/fhir/R4/clinicalreasoning-module.html) and this CPG IG | Represent guideline definitions, activities, data expectations, and patient-specific results |
| [Clinical Quality Language (CQL)](https://cql.hl7.org/) and [Using CQL With FHIR](https://hl7.org/fhir/uv/cql/) | Express clinical logic, package libraries, and describe their data and terminology dependencies |
| [Canonical Resource Management Infrastructure (CRMI)](https://hl7.org/fhir/uv/crmi/) | Manage reusable knowledge artifacts, metadata, dependencies, and distribution |
| [CDS Hooks](https://cds-hooks.hl7.org/) | Invoke decision support at a defined workflow point and return cards, suggestions, or app links |
| [SMART App Launch](https://hl7.org/fhir/smart-app-launch/) | Launch applications with authorized access and clinical context |
| [Structured Data Capture (SDC)](https://hl7.org/fhir/uv/sdc/) | Support questionnaire population, interaction, and extraction of structured data |
| Realm-appropriate data guides, such as [IPS](https://hl7.org/fhir/uv/ips/) | Establish exchange profiles that content-specific data requirements build on |

These links identify the responsibilities of related specifications. Implementations need compatible, identified versions; a citation to a newer publication does not change this guide's FHIR version or the requirements of its artifacts. See the generated dependency table below for this publication's package dependencies.

Translating guideline recommendations and other types of guidance into practice has historically been a site-by-site exercise that has been disconnected from guideline/guidance development, creating unnecessary redundancies and introducing potential errors in translation that can lead to inconsistencies in how the guideline or guidance is executed. This clinical practice guidelines implementation guide (CPG-IG) consists of standards and a standardized, scalable approach to help make the effort of translating and implementing clinical practice guidelines and other types of guidance more efficient and effective. Key aspects include:

1. An integrated guideline/guidance development and implementation process, referred to as "the integrated process" [Matson-Koffman et al., 2023](documentation-approach-cds-implementation-evidence.html#ref-matson-koffman-2023)
2. Common standards that can work across the entire clinical quality ecosystem (Figure 1) and different electronic health record (EHR) platforms
3. Closed-loop guideline content and information flow inclusive of feedback and feedforward processes (Figure 2)
{:.modified-content}

<div>
  <img src="CPG-04.05-01.png" alt="Integrated process" class="img-responsive img-rounded center-block" width="700"/>
</div>

_Figure 2._ The integrated process with integrated evaluation in guideline development and implementation, showing a human-centered design approach to co-develop narrative and computable guidelines and build in evaluation, with feedback and feedforward loops throughout the process. ([Matson-Koffman et al., 2023](documentation-approach-cds-implementation-evidence.html#ref-matson-koffman-2023) and [Tailor et al., 2023](documentation-approach-cds-implementation-evidence.html#ref-tailor-2023)).
{:.modified-content}

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

<div class="new-content" markdown="1">

The goals are to preserve guideline intent, reduce repeated translation work, make implementation decisions reviewable, and support reuse of computable knowledge. The same artifacts can help connect guidance, care delivery, and evaluation when the local implementation establishes those connections.

Published implementation experience shows that shared content still requires local mapping, vendor integration, staffing, and maintenance. General CDS research reports variable effects across settings and interventions. A valid artifact, a working service, clinician use, and improved patient outcomes are different results to evaluate. See [CDS Connect implementation lessons](documentation-approach-cds-implementation-evidence.html#ref-dhopeshwarkar-2023) and the [CDS evidence review](documentation-approach-cds-implementation-evidence.html).

</div>

### Audience

This IG provides both an approach and suggested methodology for computable representation of clinical practice guidelines, so the audience for this guide is broad and inclusive of an array of roles across the spectrum of clinical guideline development and implementation, from clinical guideline developers and authors, through clinical informaticists, health system integrators and clinical systems developers. Areas of the IG that are more technical assume familiarity with relevant standards, including FHIR and CQL, though links are provided to reference materials for further reading.

The CPG Approach section highlights:

* Various highly specialized and technical participants in the “Knowledge-to-Delivery-to-Discovery” ecosystem that often interact with each other’s work products but may not interact directly with each other;
* How the HL7 CPG-IG recognizes the technical participants' distinct and valuable work and provides numerous opportunities to reuse domain standards (e.g., FHIR and other HL7 IG's); and
* A reconceptualization of work processes that share and reuse essential information and content.

Much of this work has been informed by several international efforts, including the U.S. Centers for Disease Control and Prevention’s (CDC’s) Adapting Clinical Guidelines for the Digital Age initiative ([Am J Med Qual, 2023](documentation-approach-cds-implementation-evidence.html#ref-ajmq-2023)), the World Health Organization’s (WHO’s) Antenatal Care Guidelines ([WHO, 2016](documentation-approach-cds-implementation-evidence.html#ref-who-anc-2016)), the HL7 Clinical Decision Support and Clinical Quality Information Working Groups, and numerous other publicly funded and private sector initiatives, including local health system implementations of guidelines and in-workflow pathways.

**Notes to Target Audiences:**

**To the Guideline Developer:** Working in parallel with knowledge engineers and other downstream consumers (e.g., local implementers) can identify areas within the guideline that need clarification, helping improve the narrative, provide opportunity to review the translation of the tools for fidelity to the guideline, and get early feedback from end-consumers of the guideline work product – all _before_ the guidelines or tools are published. These adjustments should not change the intent of the guideline but rather should make the intended recommendations more implementable.

**To the Knowledge Engineer:** Working in parallel with guideline developers allows validation of translations directly with the “source of truth,” helping ensure accuracy. Working in parallel with downstream consumers (e.g., local implementers) provides the ability to confirm feasibility and validity for the users of the artifacts as they are produced by knowledge engineers and may even provide a useful means to build and validate once (i.e., without unnecessary redundancy) against real-world data and implementations.

**To the Downstream Consumers:** Being involved with the guideline development and knowledge engineering can help identify issues early in the process and optimize incorporation of the knowledge into downstream products that aid in implementation, such as apps, measures, or other point-of-care tools, and significantly reduce the rework of re-engineering parts of the guideline locally, ultimately saving time and effort.

**To the Local Implementer:** The main goal of the knowledge developed is to implement it in practice. Having local implementers (both clinicians and informaticians) involved with guideline development and knowledge engineering allows for the ability to communicate anticipated issues for implementation so that guideline developers or knowledge engineers have the opportunity to adjust their respective products in order to help optimize the ease and positive impact of implementation. These adjustments should not change the intent of the guideline but rather should make the intended reommendations more implementable. A computable guideline representation can significantly reduce rework, saving time and effort for local implementations.

**To the Evidence Ecosystem:** Taking a holistic approach to guideline development and implementation includes considerations for learning and continuous improvement through feedback and feedforward loops. A number of activities in the knowledge ecosystem that serve specific functions (e.g., case reporting to public health, quality reporting to payers, quality/data reporting to medical society registries, etc.) could also help provide the evidence that can inform updates to the guidelines/guidance. This evidence may be based on patient-level, point-of-care guideline usage, and detailed tracking thereof, affording new means of collecting evidence.

Using approaches, standards, and techniques addressed in further detail in individual sections, this CPG IG can serve a critical role in the virtuous cycle of a Learning Health System.

<div class="new-content" markdown="1">

Authors and reviewers need the clinical source, its interpretation, and the tests that demonstrate fidelity. Software implementors need exact resource types, operation signatures, dependencies, data requirements, and lifecycle behavior. Clinical teams need to understand when guidance appears, how to act on it, and who maintains it.

Agents and other automation tools can use the same reading paths. For an implementation task:

1. Identify the content package, canonical artifact, and version.
2. Read the owning narrative topic and the linked formal profile or operation.
3. Record inputs, expected outputs, dependencies, and unresolved assumptions.
4. Use examples to understand the representation, then validate against the formal contracts.
5. Present clinical ambiguities, proposed adaptations, and test results to the responsible reviewers.

Conceptual names in diagrams are explained in the [glossary](glossary.html). They do not by themselves identify a FHIR resource type or grant authority to carry out a clinical action.

</div>

### Background

The need for computable care guidelines can be considered in the context of the data lifecycle, where the representation of the guideline recommendations in FHIR helps deliver actionable knowledge. By translating the recommendations in clinical practice guidelines at the source, and disseminating a computable version along with the narrative version of the guidelines, the effort of translation need not be repeated across every organization that intends to apply the recommendations. Likewise, unnecessary or unintentional variations as a result of duplicative translation efforts could be prevented with a standard, computable version that is ready to be implemented. In removing the need for translating recommendations at each local clinical system, and removing as much variation as possible through a standard translation, the time needed to apply the recommendations in practice should also be reduced, helping scientific evidence reach patient care more easily, quickly, accurately, and consistently.

In considering common patterns across multiple guidelines, this implementation guide can apply to a variety of use cases across multiple clinical domains, as is evidenced by the [examples](examples.html) provided. These common patterns not only create a way to organize the content for the translation into computable recommendations but also help implementers operationalize the recommendations within clinical workflows.

In particular, the translation into tools like CDS and eCQMs applies common health IT standards like Fast Healthcare Interoperability Resources (FHIR) and Clinical Quality Language (CQL). How to use these standards to develop shareable, platform-independent tools based on guidelines/guidance for a variety of diseases, conditions, or preventive care is the primary focus of this CPG-IG, including this Approach section. Secondarily, this CPG-IG shows how using FHIR can help with other data-focused activities, such as public health reporting (i.e., using electronic case reports) or quality reporting (i.e., using eCQMs), that provide a feedback loop that feeds the evidence. The evidence can also be represented using FHIR (i.e., EBM-on-FHIR) and could be applied in summarizing evidence and updating guidelines/guidance. This completes the "data lifecycle" that allows for continuous learning and improvement – a "learning health system". The CPG-IG approach can be a key component of a learning health system in times requiring rapid response, where knowledge of best practice is not well-known.

It is important to note that this effort is a concerted attempt to build on, learn from, contribute to, and work with existing approaches, initiatives, and efforts in guideline development, translation, and implementation. The contribution of this implementation guide is focused on describing a best-practices conceptual approach combined with a practical methodology that leverages the interoperability framework provided by FHIR as a way to overcome the impedance mismatch between knowledge and clinical data models that is commonly encountered by efforts in this space. The approach and methodologies presented here are the combined result of many person years of work across multiple initiatives and coordinated with groups like Health eDecisions, Clinical Quality Framework initiative, the CDC's Adapting Clinical Guidelines for the Digital Age intiative, the BPM+ for Health initiative, IHE's Computable Care Guidelines initiative, and the WHO's SMART Guidelines initiative. Feedback on the approach and methodologies are welcomed and encouraged. See the references section for further reading and background that informs the approach taken here.

<div class="new-content" markdown="1">

This guide builds on work on layered knowledge representation, the CDC's integrated guideline development process, and [WHO SMART Guidelines](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines). WHO SMART Guidelines describe a guideline-development approach; SMART App Launch defines an application integration protocol. Their shared name does not make them the same specification.

</div>

### References

The [CDS Literature and Bibliography](documentation-approach-cds-implementation-evidence.html) lists the references cited throughout this guide, including the [references previously listed on this page](documentation-approach-cds-implementation-evidence.html#additional-references), and a selected reading list of public CDS literature, including PubMed/PMC papers on effectiveness, workflow, alert burden, operational failures, and standards-based implementations. The [methodology](methodology.html) connects those lessons to authoring and validation work.
{:.modified-content}

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
