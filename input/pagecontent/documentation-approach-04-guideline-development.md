This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

Guideline development consists of a community of practice made up of numerous professionals with expertise and skills in various clinical/scientific fields.  This implementation guide does not describe the guideline development process in complete detail. However, it gives an overview to provide sufficient context for the rest of the implementation guide since the scope for the CPG is to provide a computer-interpretable representation of the final work product of the guideline development process.

This section covers:

*   Overview of the guideline development process (this page), including the guideline development group and scoping
*   [Guideline Development Frameworks](documentation-approach-04-02-guideline-development-frameworks.html)
*   [6S Evidence Pyramid and Learning Health Systems](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html)
*   [Analysis of Evidence, Recommendations, and Reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html)
*   [Development of Computable Clinical Guideline Artifacts](documentation-approach-04-05-computable-guideline-artifacts.html)

Clinical practice guidelines are systematically developed statements to assist clinical practitioner and patient decisions about appropriate care for specific clinical conditions, procedures, and/or similarly scoped activities. Guidelines consist of recommendations for patient care, which are based on scientific research and data (evidence), vetted through rigorous processes of a review and synthesis by recognized domain and methodological experts and other key stakeholders (e.g. patient and caregiver advocates) to guide healthcare decisions and activities for defined scope. A guideline may consist of one or more recommendations, contextualizing information, the possible means or strategies for bringing together or orchestrating recommendations, and other relevant considerations. A recommendation is a proposal pertaining to the best course of action put forth by an authoritative source or body (e.g. governmental or professional society convened guideline development group).  More detailed descriptions of and best practices for the guideline development process may be found at numerous publicly available resources (e.g.,  [Institute of Medicine, 2011](documentation-approach-cds-implementation-evidence.html#ref-iom-2011); [GIN-McMaster checklist](documentation-approach-cds-implementation-evidence.html#ref-schunemann-2014); [Qaseem et al., 2010](documentation-approach-cds-implementation-evidence.html#ref-qaseem-2010); [NCCIH](documentation-approach-cds-implementation-evidence.html#ref-nccih-cpg)) and are beyond the scope of this document, though a few key concepts will be covered.

<details open>

<summary>

Figure 1. Overview of the phases of the guideline development process that generally occur sequentially, but may be overlapping and concurrent particularly for different recommendations within a guideline.

</summary>

<img src="CPG-04-00.png" alt="Phases of the guideline development process" class="img-responsive img-rounded center-block" width="500" height="500"/>

</details>

<div class="new-content" markdown="1">

Computable guideline development brings clinical interpretation, knowledge engineering, and implementation into the same review process. A recommendation may leave a time window open to interpretation, assume information that a site does not record, or depend on a care activity that is delivered differently across settings. Discovering these questions while the guideline and its artifacts are being developed gives the responsible experts an opportunity to resolve them together.

The aim is to do shared interpretation and formalization upstream, so each site can build on reviewed definitions and cases. That can reduce repeated work and divergent interpretations while leaving local teams responsible for their data, workflow, and approved adaptations. Versioned artifacts and their rationale also make it possible to identify which implementations need review when the guidance changes.

This page explains why collaboration, short feedback cycles, and continuing stewardship matter. [Methodology](methodology.html) gives the detailed Select, Represent, Translate, Validate, and Package steps for producing and reviewing the work products.

### Establish the Source and Scope {#source-and-scope}

Identify the authoritative recommendation, its publication and version, the relevant passage, and the people responsible for interpreting and maintaining it. Record the intended decision, users, and settings. The population, intervention, comparator, outcomes, timing, and setting (PICOTS) frame the clinical question and help the team identify relevant data and exclusions. Review any proposed eligibility rule with clinical reviewers before treating it as an executable criterion.

If published guidance leaves room for interpretation, document what the source says, how reviewers interpret it, and what a site proposes to adapt. Use patient stories and representative local data to expose assumptions about timing, exceptions, or data availability. Assign a decision owner to each unresolved question. The [GIN-McMaster guideline checklist](documentation-approach-cds-implementation-evidence.html#ref-schunemann-2014) covers broader guideline-development activities.

When the guideline group is setting priorities, consider disease burden, preventable harm, cost, variation in practice, and emerging evidence or care options. Record why the topic was selected and which questions are out of scope. When choosing an existing recommendation for computable implementation, also weigh clinical value, the effort to build and maintain it, and whether intended sites have the necessary data and workflow. See the [Select step](methodology-select.html#select-step) and the [L1 checklist](clinical-guidelines-development-L1-checklist.html).

</div>

#### Scoping

Scoping refers to the process and establishment of criteria to describe and constrain the focus of the guideline. It addresses who is the target user of the guideline, who it applies to, and what is addressed in the guideline. This is typically based on various factors, including high prevalence and burden of disease, avoidable mortality and morbidity, high cost, emerging diseases or emerging care options, variation in clinical practice, and rapidly changing evidence. The PICOTS Typology (i.e., population, intervention, comparison, outcome, timeframe) is often used in scoping and correlates closely to the eligibility criteria for the CPG  ([GIN-McMaster checklist](documentation-approach-cds-implementation-evidence.html#ref-schunemann-2014)).

<div class="new-content" markdown="1">

### Preserve Evidence and Recommendation Judgments {#evidence-and-recommendations}

#### Choose Evidence Synthesis Methods {#evidence-synthesis}

A systematic review uses explicit methods to identify, appraise, and synthesize evidence for a defined question. A meta-analysis combines compatible quantitative results. The guideline group still has to interpret applicability, bias, heterogeneity, and uncertainty. A rapid review adapts methods to the available time and reports the resulting limits. See the [AHRQ comparative-effectiveness methods](documentation-approach-cds-implementation-evidence.html#ref-chang-2012) and [Khangura et al.](documentation-approach-cds-implementation-evidence.html#ref-khangura-2012)

Use PICOTS to compare what the studies evaluated with the populations, interventions, outcomes, and settings covered by the recommendation. An evidence pyramid can help organize a search by study design or level of synthesis. Assess certainty for each outcome using the review findings and the selected rating method. See [Guideline Development Frameworks](documentation-approach-04-02-guideline-development-frameworks.html) and [6S Evidence Pyramid and Learning Health Systems](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html).

#### Document the Recommendation and Its Rationale {#recommendation-rationale}

Evidence reviewers assess findings. The guideline group weighs those findings and decides what to recommend. The computable specification records how to recognize the relevant situation and which activity to propose. Keep those three judgments traceable to each other. The [Select step](methodology-select.html#evidence-traceability) lists what to record for each of these judgments so that the next reviewer can follow them.

GRADE illustrates how a rating method distinguishes evidence certainty from recommendation strength. Use the definitions of the chosen method. In this guide, `relatedArtifact` carries supporting citations, and rating extensions on `PlanDefinition.action` convey recommendation strength, evidence quality, and optional direction. FHIR R4 Evidence and EvidenceVariable can represent evidence information when a project needs to exchange it. See the [GRADE handbook](documentation-approach-cds-implementation-evidence.html#ref-grade-handbook), the [Methodology requirements for supporting information](methodology-select.html#guideline-supporting-information), [CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html), [FHIR R4 Evidence](https://hl7.org/fhir/R4/evidence.html), and [FHIR R4 EvidenceVariable](https://hl7.org/fhir/R4/evidencevariable.html).

When structured evidence is available, use its cohort definitions, intervention codes, value sets, or expressions as candidates for the computable specification. Compare each candidate with the guideline's scope and the recommendation's applicability before reusing it. Record where the recommendation depends on expert consensus, where evidence is sparse, and which gaps might warrant a measure or a separately governed data collection. See [Analysis of Evidence, Recommendations, and Reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html).

### Co-Develop the Guideline and Artifacts {#co-development}

#### Assemble the Guideline Development Group and Knowledge Engineering Team {#development-team}

Clinical and evidence reviewers, knowledge engineers, terminologists, implementers, and evaluators work on the same decision from different perspectives. Include patients, caregivers, and representative users when their circumstances or actions shape the proposed care. A missing data field, inexact terminology mapping, or unsupported local action can change what the team can safely offer and may send an interpretation back to clinical review. See the [integrated development process](documentation-approach-cds-implementation-evidence.html#ref-matson-koffman-2023) and [WHO terminology-alignment experience](documentation-approach-cds-implementation-evidence.html#ref-pretty-2023).

The guideline development group draws on clinical specialists and frontline clinicians, evidence methodologists, and expertise in outcomes, usability, shared decision-making, or health economics as the question requires. Knowledge engineering can involve domain specialists who elicit and clarify meaning, data modelers and terminologists, CQL and FHIR authors, and measure developers. A knowledge architect coordinates shared definitions, dependencies, standards, and tooling across those specialties. Assign ownership for clinical approval, communication, implementation, and evaluation even when people hold several roles.

</div>

#### Guideline Development Group

The guideline development group is the multi-stakeholder, cross-functional team assembled to develop the guideline. It often includes members from the target audience (specialist and primary care clinicians), content experts, patients and caregivers, front-line clinicians, evidence-based practice experts, outcomes and quality experts, usability experts, experts in medical and shared decision-making, methodology experts, and experts in health economics. ([GIN-McMaster checklist](documentation-approach-cds-implementation-evidence.html#ref-schunemann-2014)).

For the digital CPG, we will need to add a few more experts to the guideline development group or have a few key resources serve cross-functional roles with a Knowledge engineering team (see [Knowledge Engineering](documentation-approach-05-knowledge-engineering-overview.html)).  These may include experts in creating computable representations of the guideline such as: knowledge extraction and/or elicitation, terminologists and/or ontologists, clinical research informatics ([AMIA](documentation-approach-cds-implementation-evidence.html#ref-amia-cri)), clinical informatics, clinical decision support, cognitive informatics, knowledge formalism and expression, measurement science and measure development, user experience (UX), and user-centered design.  These experts often start with a “paper” or narrative guideline but will likely produce much higher fidelity, accurate, and usable expressions of the guideline through a more “agile” approach to concurrent, integrated, and cross-functional approach to guideline development and knowledge engineering.

<div class="new-content" markdown="1">

#### Work Through One Reviewed Increment {#reviewed-increment}

A bounded clinical decision gives the team something concrete to review across disciplines. Its inputs, expected results, and place in care can expose an ambiguous recommendation or an unavailable data element before those assumptions spread through a whole pathway. Reusable parts allow the work to grow incrementally; testing their composition checks that the parts still mean and do what reviewers intended when used together. The [Integrated Process Cycle](documentation-approach-04-05-computable-guideline-artifacts.html#the-integrated-process-cycle) shows how clinical, informatics, and implementation activities inform one another throughout development, with evaluation and user involvement providing feedback while decisions can still be revised.

The exchanges below describe responsibilities within that collaboration. Teams can revisit them as a clinical example, test, or local constraint changes an assumption.

| Handoff | What changes hands |
| --- | --- |
| Guideline group to knowledge engineers | Source guidance, scope, evidence judgments, rationale, and approved interpretation. |
| Knowledge engineers to artifact authors and reviewers | A reviewed decision specification, clinical examples, and open questions with named owners. |
| Content steward to local implementers | A versioned package, expected test results, dependency versions, supported capabilities, and known limitations. |
| Local team to content steward | Reproducible discrepancies, workflow observations, and evidence from actual use. |
{:.grid}

For one bounded decision, acquire the source meaning, review the specification and expected cases, author the artifacts, and exercise the results in a representative workflow. Return to the responsible reviewer as soon as a test or local constraint changes an assumption. Develop reusable parts such as a value set, feature definition, or metric in increments. Compose reviewed parts into a recommendation, strategy, or pathway and test the result. If a narrower use needs a more restrictive cohort or timing rule, state the added constraint and test both the restricted behavior and the composition. See [Composition and dependencies](documentation-approach-02-04-knowledge-representation.html#dependencies), [Development of Computable Clinical Guideline Artifacts](documentation-approach-04-05-computable-guideline-artifacts.html), and the [Agile CPG Development Approach](documentation-approach-05-06-agile-cpg-development-approach.html).

### Acquire the Knowledge Needed for the Decision {#knowledge-acquisition}

Choose methods that fit the source and the question. Keep a record of each source, its version, how it contributed, and who approved the interpretation.

| Method | How to use it |
| --- | --- |
| Elicitation | Use interviews, case walkthroughs, observation of work, or concept mapping to make tacit reasoning explicit. For unresolved expert disagreement, a structured method such as Delphi can document areas of consensus and disagreement. |
| Authoring | Have domain experts express decisions and relationships directly in a decision table, concept model, or authoring tool. Review both the clinical meaning and the constraints introduced by the tool or target formalism. |
| Synthesis | Start from the evidence reviewers' findings. Trace extracted concepts, definitions, and criteria to the evidence and to the guideline group's decisions about their use. |
| Discovery | Analyze governed registry or clinical data to identify candidate features, gaps, or patterns. For example, concepts extracted from clinical notes can be candidate inputs to an inferred Case Feature. Review extraction quality and clinical validity before using a discovery in care. |
| Combined methods | Use interviews, published evidence, existing computable content, and local data together when each answers a different question. Record disagreements among sources and the decision that resolves them. |
{:.grid}

See [Knowledge Acquisition](documentation-approach-05-01-knowledge-acquisition.html).

### Produce a Reviewed Specification {#reviewed-specification}

Describe each input in a data dictionary with its clinical meaning, code or mapping, units, source, timing, and treatment of missing or conflicting values. State the decision criteria and their source, the activities proposed, and the information that supports them. Sketch who encounters the recommendation, when they receive it, and who can respond or follow up. Keep patient description, clinical decision logic, and local workflow distinct so each can be reviewed. See [Case, Plan, and Workflow](documentation-approach-12-conceptual-knowledge-architecture.html), [WHO Digital Adaptation Kits](https://www.who.int/publications/i/item/9789240089907), and the [layered representation framework](documentation-approach-cds-implementation-evidence.html#ref-boxwala-2011).

#### Preserve Meaning across Representations {#knowledge-translation}

Clinical knowledge translation spans moving research into practice, expressing a guideline at successive levels of formality, and translating between formalisms at the same level. The checks differ for each kind of translation. Review clinical scope and workflow for delivery in practice, trace criteria from narrative through specification to executable logic, and compare meaning and behavior when mapping terminologies or converting models or expressions. A domain authoring tool may produce computable artifacts directly. Keep the source-to-artifact links and the reviewable clinical decisions even when the tool combines those steps. See [Knowledge Translation](documentation-approach-05-02-knowledge-translation.html), [Representation levels](documentation-approach-02-04-knowledge-representation.html#representation-levels), and [Mapping and Other Formalisms](documentation-methodology.html).

### Review Clinical Meaning before Authoring {#clinical-review}

Use cases to test what the team thinks the source means. For a recommendation that depends on a time window and a threshold, agree on expected behavior for qualifying, nonqualifying, boundary, out-of-window, conflicting, and unavailable inputs. Define what the receiving user or system should see when a required fact is unknown. Record the expected result and the clinical rationale before testing the logic. Where the source leaves a decision open, record the question, its reviewer, and any limits on implementation until it is resolved. See the [Represent step](methodology-represent.html#represent-step).

### Keep Validation Findings Separate {#validation}

Compare the authored artifacts with the approved cases. Record enough about the artifacts, dependencies, runtime and test inputs to reproduce the result. Use synthetic cases for controlled examples and representative local data to check codes, units, timing, and completeness in practice. Route discrepancies to the clinical, terminology, artifact, or integration owner who can resolve them. Clinical fidelity, structural conformance, logic and composition, local data and integration, and use and effects each produce different evidence; the [Validate step](methodology-validate.html#validation-findings) describes the record to keep for each. See [Knowledge Execution and Validation](documentation-approach-05-04-knowledge-execution-and-validation.html), the [Conformance reference](documentation-conformance.html) for applicable requirements, and [Evaluate the implementation](documentation-approach-05-knowledge-engineering-overview.html#evaluate-implementation) for assessing use and effects.

#### Test while Developing and Validate Independently {#test-driven-development}

Testing during development makes assumptions visible while the team can still revise them. If all implementation questions wait until the logic is finished, a missing or differently recorded clinical fact may require changes to the specification, expressions, and expected cases. Early work with representative data can expose those differences; independently reviewed cases help check assumptions shared by the authors and their initial tests.

Pair a clinical reviewer who can define and explain expected results with an author who can implement and test the expressions. Use short build-and-test cycles. When an unexpected result suggests a better test case, have the reviewer confirm its expected behavior before adding it. Supplement those cases with an independent review and, where feasible, a separate validation dataset that the authors did not use to refine the logic. Check local data quality and mappings before interpreting discrepancies as logic defects.

Test reusable expressions and features individually, then test their behavior in the composite artifact. When a pathway or metric exposes an unexpected pattern, compare results across cases or runs to find affected groups. Inspect individual patients' input facts and intermediate inferences to locate the discrepancy. Vary uncertain inputs or assumptions to see which ones change the result. Retain the versioned cases, approved expectations, and comparisons for use in regression testing. See [Test-driven Knowledge Engineering](documentation-approach-05-06-agile-cpg-development-approach.html#test-driven-knowledge-engineering) and [unit, component, and integration testing](methodology-validate.html#unit-testing).

### Release and Maintain Reviewed Content {#release-and-maintenance}

Release the approved narrative, computable artifacts, dependencies, tests, and known limitations together or through stable links. Name the steward for updates and retirement. Identify which artifacts and tests depend on shared libraries, value sets, or source decisions so a change triggers the right review. The local care organization separately approves use in its setting and owns its mappings, workflow, operational support, and release decisions. See [Knowledge Representation](documentation-approach-02-04-knowledge-representation.html), the [Package step](methodology-package.html), [Implementing Computable Knowledge](documentation-approach-02-05-knowledge-implementation.html), and the [CDS Connect evaluation](documentation-approach-cds-implementation-evidence.html#ref-dhopeshwarkar-2023).

#### Curate Artifacts for Reuse and Review {#knowledge-management}

Index approved artifacts and related test cases so authors can find them by scope, status, version, and intended use. Record dependencies, provenance, publication rights, and ownership. Archive superseded releases with their review history. A knowledge repository can use this metadata to support authoring, review, test execution, and impact analysis. Link reusable assets to shared terminology and to governed validation datasets so reviewers can find related assets and reproduce tests. Check the scope and assumptions of a candidate artifact before reusing it across guidelines or in a derivative. See [Artifact identity and provenance](documentation-approach-02-04-knowledge-representation.html#artifact-identity) and [Leveraging a Knowledge Base](documentation-approach-05-06-agile-cpg-development-approach.html#leveraging-a-knowledge-base-knowledge-content-management-system).

#### Deliver Outputs to the People Who Use Them {#stakeholder-outputs}

Publish the recommendation and its rationale with the reviewed artifacts. Choose accompanying material by audience. Clinical users and patients may need decision aids or education. EHR and CDS implementers need dependencies, supported actions, and workflow assumptions. Guideline stewards and specialty societies can use metrics and governed registry reports to assess reach, care processes, and outcomes. Care organizations can reuse suitable definitions for local improvement, quality measurement, or registry submissions. Evidence reviewers and researchers can use reported patterns to formulate new questions and assess gaps. See [Value of Computable Guideline Artifacts to Stakeholders](documentation-approach-04-05-computable-guideline-artifacts.html#value-of-computable-guideline-artifacts-to-stakeholders) and [Measurement and Evidence](documentation-approach-05-knowledge-engineering-overview.html#measurement-and-evidence).

#### Govern Local Adaptations and Check Feasibility across Sites {#local-governance}

Local practice governance reviews the guidance against its population, clinical priorities, and care workflows. Local informatics maps the data and terminology, implements the rules and workflow, and verifies the release with intended users. Record who approved any change to a threshold, goal, included recommendation, or point of delivery. Keep its rationale and resulting behavior traceable to the reusable definition and validate the change with local cases.

Involve representative implementers while the specification is still open to revision. Examine local data with the appropriate permissions to see whether required facts can be collected with sufficient coverage, timing, and quality. Where feasible, use more than one site to expose differences in coding, populations, care processes, and system capabilities. Feed findings back to the guideline or artifact owner while there is still time to resolve them. Route observations that could affect the evidence base to evidence reviewers for assessment. See [Knowledge Implementation](documentation-approach-05-05-knowledge-implementation.html), the [L4 checklist](clinical-guidelines-development-L4-checklist.html), and [Verify the complete interaction](documentation-approach-02-05-knowledge-implementation.html#operations-and-release).

### Route Findings Back to the Right Owner {#feedback}

A useful report names the content version and local environment, relevant inputs, expected and actual behavior, and clinical or workflow consequence. Limit shared reports to the patient information needed and authorized for the purpose. Route local mapping and workflow defects to the implementation owner, reusable logic or terminology defects to the artifact steward, and unresolved recommendation meaning to clinical reviewers. Link the resulting decision to affected artifacts and expected cases. See [Learn from use and feed findings back](documentation-approach-05-knowledge-engineering-overview.html#learning-and-feedback).

</div>

{% include chapter-navigation.html section="Approach" unit="section" overview="approach.html" previous="documentation-approach-02-05-knowledge-implementation.html" previous_title="Implementing Computable Knowledge" next="documentation-approach-05-knowledge-engineering-overview.html" next_title="Knowledge Engineering" %}
