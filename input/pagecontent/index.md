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

{% include cpg-diagram.html src="cpg-runtime-lifecycle.svg" ratio="1200 / 961" alt="Research and evidence inform guidelines and decision support. Clinical care supplies data for measurement, reporting, and further evidence review, connected through shared FHIR data and knowledge." caption="Figure 1. Guidelines connect evidence to decision support and clinical care. Measurement, reporting, and reviewed findings connect care back to evidence. Related standards illustrate the roles in this ecosystem; they are not a required dependency set. The [integrated process publication](https://pmc.ncbi.nlm.nih.gov/articles/PMC10476601/) describes this collaborative approach." %}

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

### Goals

The goals are to preserve guideline intent, reduce repeated translation work, make implementation decisions reviewable, and support reuse of computable knowledge. The same artifacts can help connect guidance, care delivery, and evaluation when the local implementation establishes those connections.

Published implementation experience shows that shared content still requires local mapping, vendor integration, staffing, and maintenance. General CDS research reports variable effects across settings and interventions. A valid artifact, a working service, clinician use, and improved patient outcomes are different results to evaluate. See [CDS Connect implementation lessons](https://pmc.ncbi.nlm.nih.gov/articles/PMC10371399/) and the [CDS evidence review](documentation-approach-cds-implementation-evidence.html).

### Audience

Authors and reviewers need the clinical source, its interpretation, and the tests that demonstrate fidelity. Software implementors need exact resource types, operation signatures, dependencies, data requirements, and lifecycle behavior. Clinical teams need to understand when guidance appears, how to act on it, and who maintains it.

Agents and other automation tools can use the same reading paths. For an implementation task:

1. Identify the content package, canonical artifact, and version.
2. Read the owning narrative topic and the linked formal profile or operation.
3. Record inputs, expected outputs, dependencies, and unresolved assumptions.
4. Use examples to understand the representation, then validate against the formal contracts.
5. Present clinical ambiguities, proposed adaptations, and test results to the responsible reviewers.

Conceptual names in diagrams are explained in the [glossary](glossary.html). They do not by themselves identify a FHIR resource type or grant authority to carry out a clinical action.

### Background

This guide builds on work on layered knowledge representation, the CDC's integrated guideline development process, and [WHO SMART Guidelines](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines). WHO SMART Guidelines describe a guideline-development approach; SMART App Launch defines an application integration protocol. Their shared name does not make them the same specification.

### References

Use the [evidence and further reading](documentation-approach-cds-implementation-evidence.html) topic for public CDS literature, including PubMed/PMC papers on effectiveness, workflow, alert burden, operational failures, and standards-based implementations. The [methodology](methodology.html) connects those lessons to authoring and validation work.

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
