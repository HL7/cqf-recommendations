Computable guideline development turns a clinical recommendation into a versioned set of artifacts that others can review, test, and adapt to local care. Start with a specific clinical decision and carry its source, rationale, and approved interpretation through every handoff. The team can work on these products together as data constraints or test cases expose questions for clinical review. [Methodology](methodology.html) gives the detailed Select, Represent, Translate, Validate, and Package steps.

### Establish the source and scope {#source-and-scope}

Identify the authoritative recommendation, its publication and version, the relevant passage, and the people responsible for interpreting and maintaining it. Record the intended decision, users, and settings. The population, intervention, comparator, outcomes, timing, and setting (PICOTS) frame the clinical question and help the team identify relevant data and exclusions. Review any proposed eligibility rule with clinical reviewers before treating it as an executable criterion.

If published guidance leaves room for interpretation, document what the source says, how reviewers interpret it, and what a site proposes to adapt. Use patient stories and representative local data to expose assumptions about timing, exceptions, or data availability. Assign a decision owner to each unresolved question. The [GIN–McMaster guideline checklist](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html) covers broader guideline-development activities.

When the guideline group is setting priorities, consider disease burden, preventable harm, cost, variation in practice, and emerging evidence or care options. Record why the topic was selected and which questions are out of scope. When choosing an existing recommendation for computable implementation, also weigh clinical value, the effort to build and maintain it, and whether intended sites have the necessary data and workflow. [Select](methodology-select.html#select-step) · [L1 checklist](clinical-guidelines-development-L1-checklist.html)

### Preserve evidence and recommendation judgments {#evidence-and-recommendations}

#### Choose evidence synthesis methods {#evidence-synthesis}

A systematic review uses explicit methods to identify, appraise, and synthesize evidence for a defined question. A meta-analysis combines compatible quantitative results. The guideline group still has to interpret applicability, bias, heterogeneity, and uncertainty. A rapid review adapts methods to the available time and reports the resulting limits. [AHRQ comparative-effectiveness methods](https://www.ncbi.nlm.nih.gov/books/NBK98234/) · [Khangura et al.](https://doi.org/10.1186/2046-4053-1-10)

Use PICOTS to compare what the studies evaluated with the populations, interventions, outcomes, and settings covered by the recommendation. An evidence pyramid can help organize a search by study design or level of synthesis. Assess certainty for each outcome using the review findings and the selected rating method. [Evidence organization and the 6S model](approach-evaluation.html#learning-and-feedback)

#### Document the recommendation and its rationale {#recommendation-rationale}

Evidence reviewers assess findings. The guideline group weighs those findings and decides what to recommend. The computable specification records how to recognize the relevant situation and which activity to propose. Keep those three judgments traceable to each other.

| Record | What the next reviewer needs |
| --- | --- |
| Evidence and certainty | Relevant findings and limitations, citations, outcome-specific certainty, and the method used to judge it. |
| Recommendation and rationale | Direction, strength, applicability, and the tradeoffs or consensus judgments behind the decision. |
| Computable interpretation | Explicit criteria, timing, exceptions, proposed actions, data assumptions, and examples tied to the source. |
{:.grid}

GRADE illustrates how a rating method distinguishes evidence certainty from recommendation strength. Use the definitions of the chosen method. In this guide, `relatedArtifact` carries supporting citations, and rating extensions on `PlanDefinition.action` convey recommendation strength, evidence quality, and optional direction. FHIR R4 Evidence and EvidenceVariable can represent evidence information when a project needs to exchange it. [GRADE handbook](https://gdt.gradepro.org/app/handbook/handbook.html) · [Methodology requirements for supporting information](methodology-select.html#guideline-supporting-information) · [CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html) · [FHIR R4 Evidence](https://hl7.org/fhir/R4/evidence.html) · [FHIR R4 EvidenceVariable](https://hl7.org/fhir/R4/evidencevariable.html)

When structured evidence is available, use its cohort definitions, intervention codes, value sets, or expressions as candidates for the computable specification. Compare each candidate with the guideline's scope and the recommendation's applicability before reusing it. Record where the recommendation depends on expert consensus, where evidence is sparse, and which gaps might warrant a measure or a separately governed data collection.

### Co-develop the guideline and artifacts {#co-development}

#### Assemble the guideline development group and knowledge engineering team {#development-team}

Clinical and evidence reviewers, knowledge engineers, terminologists, implementers, and evaluators work on the same decision from different perspectives. Include patients, caregivers, and representative users when their circumstances or actions shape the proposed care. A missing data field, inexact terminology mapping, or unsupported local action can change what the team can safely offer and may send an interpretation back to clinical review. [Integrated development process](https://doi.org/10.1097/JMQ.0000000000000137) · [WHO terminology-alignment experience](https://doi.org/10.1136/bmjhci-2022-100691)

The guideline development group draws on clinical specialists and frontline clinicians, evidence methodologists, and expertise in outcomes, usability, shared decision-making, or health economics as the question requires. Knowledge engineering can involve domain specialists who elicit and clarify meaning, data modelers and terminologists, CQL and FHIR authors, and measure developers. A knowledge architect coordinates shared definitions, dependencies, standards, and tooling across those specialties. Assign ownership for clinical approval, communication, implementation, and evaluation even when people hold several roles.

#### Work through one reviewed increment {#reviewed-increment}

{% include cpg-diagram.html src="cpg-method-handoff.svg" alt="Twelve clinical guideline activities and related informatics activities surround ongoing evaluation and users, grouped into four phases of co-development." %}

| Handoff | What changes hands |
| --- | --- |
| Guideline group to knowledge engineers | Source guidance, scope, evidence judgments, rationale, and approved interpretation. |
| Knowledge engineers to artifact authors and reviewers | A reviewed decision specification, clinical examples, and open questions with named owners. |
| Content steward to local implementers | A versioned package, expected test results, dependency versions, supported capabilities, and known limitations. |
| Local team to content steward | Reproducible discrepancies, workflow observations, and evidence from actual use. |
{:.grid}

For one bounded decision, acquire the source meaning, review the specification and expected cases, author the artifacts, and exercise the results in a representative workflow. Return to the responsible reviewer as soon as a test or local constraint changes an assumption. Develop reusable parts such as a value set, feature definition, or metric in increments. Compose reviewed parts into a recommendation, strategy, or pathway and test the result. If a narrower use needs a more restrictive cohort or timing rule, state the added constraint and test both the restricted behavior and the composition. [Composition and dependencies](approach-artifacts.html#dependencies)

### Acquire the knowledge needed for the decision {#knowledge-acquisition}

Choose methods that fit the source and the question. Keep a record of each source, its version, how it contributed, and who approved the interpretation.

| Method | How to use it |
| --- | --- |
| Elicitation | Use interviews, case walkthroughs, observation of work, or concept mapping to make tacit reasoning explicit. For unresolved expert disagreement, a structured method such as Delphi can document areas of consensus and disagreement. |
| Authoring | Have domain experts express decisions and relationships directly in a decision table, concept model, or authoring tool. Review both the clinical meaning and the constraints introduced by the tool or target formalism. |
| Synthesis | Start from the evidence reviewers' findings. Trace extracted concepts, definitions, and criteria to the evidence and to the guideline group's decisions about their use. |
| Discovery | Analyze governed registry or clinical data to identify candidate features, gaps, or patterns. For example, concepts extracted from clinical notes can be candidate inputs to an inferred Case Feature. Review extraction quality and clinical validity before using a discovery in care. |
| Combined methods | Use interviews, published evidence, existing computable content, and local data together when each answers a different question. Record disagreements among sources and the decision that resolves them. |
{:.grid}

### Produce a reviewed specification {#reviewed-specification}

Describe each input in a data dictionary with its clinical meaning, code or mapping, units, source, timing, and treatment of missing or conflicting values. State the decision criteria and their source, the activities proposed, and the information that supports them. Sketch who encounters the recommendation, when they receive it, and who can respond or follow up. Keep patient description, clinical decision logic, and local workflow distinct so each can be reviewed. [Case, Plan, and Workflow](approach-model.html) · [WHO Digital Adaptation Kits](https://www.who.int/publications/i/item/9789240089907) · [Layered representation framework](https://doi.org/10.1136/amiajnl-2011-000334)

#### Preserve meaning across representations {#knowledge-translation}

Clinical knowledge translation spans moving research into practice, expressing a guideline at successive levels of formality, and translating between formalisms at the same level. The checks differ. Review clinical scope and workflow for delivery in practice, trace criteria from narrative through specification to executable logic, and compare meaning and behavior when mapping terminologies or converting models or expressions. A domain authoring tool may produce computable artifacts directly. Keep the source-to-artifact links and the reviewable clinical decisions even when the tool combines those steps. [Representation levels](approach-artifacts.html#representation-levels) · [Mapping and other formalisms](documentation-methodology.html)

### Review clinical meaning before authoring {#clinical-review}

Use cases to test what the team thinks the source means. For a recommendation that depends on a time window and a threshold, agree on expected behavior for qualifying, nonqualifying, boundary, out-of-window, conflicting, and unavailable inputs. Define what the receiving user or system should see when a required fact is unknown. Record the expected result and the clinical rationale before testing the logic. Where the source leaves a decision open, record the question, its reviewer, and any limits on implementation until it is resolved. [Methodology guidance on representation](methodology-represent.html#represent-step)

### Keep validation findings separate {#validation}

Compare the authored artifacts with the approved cases. Record enough about the artifacts, dependencies, runtime and test inputs to reproduce the result. Use synthetic cases for controlled examples and representative local data to check codes, units, timing, and completeness in practice. Route discrepancies to the clinical, terminology, artifact, or integration owner who can resolve them.

| Review | Evidence to retain |
| --- | --- |
| Clinical fidelity | Reviewers, source version, approved cases, decisions, and open issues. |
| Structural conformance | Profile and terminology checks, dependency versions, and disposition of findings. |
| Logic and composition | Expected and actual results for individual expressions and combined artifacts, with execution context. |
| Local data, integration, and usability | Mappings and data-quality limits, actual triggers and permissions, failure behavior, and review by intended users. |
| Use and effects | Monitoring findings, workload, care processes, patient outcomes, and unintended consequences. |
{:.grid}

Use the [Validate step](methodology-validate.html#validate-step) to record findings and the [Conformance reference](documentation-conformance.html) for applicable requirements. [Measurement and Evidence](approach-evaluation.html#evaluate-implementation) explains how to assess use and effects.

#### Test while developing and validate independently {#test-driven-development}

Pair a clinical reviewer who can define and explain expected results with an author who can implement and test the expressions. Use short build-and-test cycles. When an unexpected result suggests a better test case, have the reviewer confirm its expected behavior before adding it. Supplement those cases with an independent review and, where feasible, a separate validation dataset that the authors did not use to refine the logic. Check local data quality and mappings before interpreting discrepancies as logic defects.

Test reusable expressions and features individually, then test their behavior in the composite artifact. When a pathway or metric exposes an unexpected pattern, compare results across cases or runs to find affected groups. Inspect individual patients' input facts and intermediate inferences to locate the discrepancy. Vary uncertain inputs or assumptions to see which ones change the result. Retain the versioned cases, approved expectations, and comparisons for use in regression testing. [Unit, component, and integration testing](methodology-validate.html#unit-testing)

### Release and maintain reviewed content {#release-and-maintenance}

Release the approved narrative, computable artifacts, dependencies, tests, and known limitations together or through stable links. Name the steward for updates and retirement. Identify which artifacts and tests depend on shared libraries, value sets, or source decisions so a change triggers the right review. The local care organization separately approves use in its setting and owns its mappings, workflow, operational support, and release decisions. [Guideline Artifacts](approach-artifacts.html) · [Package](methodology-package.html) · [Implementation and Integration](approach-implementation.html) · [CDS Connect evaluation](https://doi.org/10.1055/s-0043-1769911)

#### Curate artifacts for reuse and review {#knowledge-management}

Index approved artifacts and related test cases so authors can find them by scope, status, version, and intended use. Record dependencies, provenance, publication rights, and ownership. Archive superseded releases with their review history. A knowledge repository can use this metadata to support authoring, review, test execution, and impact analysis. Link reusable assets to shared terminology and to governed validation datasets so reviewers can find related assets and reproduce tests. Check the scope and assumptions of a candidate artifact before reusing it across guidelines or in a derivative. [Artifact identity and provenance](approach-artifacts.html#artifact-identity)

#### Deliver outputs to the people who use them {#stakeholder-outputs}

Publish the recommendation and its rationale with the reviewed artifacts. Choose accompanying material by audience. Clinical users and patients may need decision aids or education. EHR and CDS implementers need dependencies, supported actions, and workflow assumptions. Guideline stewards and specialty societies can use metrics and governed registry reports to assess reach, care processes, and outcomes. Care organizations can reuse suitable definitions for local improvement, quality measurement, or registry submissions. Evidence reviewers and researchers can use reported patterns to formulate new questions and assess gaps. [Measurement and Evidence](approach-evaluation.html)

#### Govern local adaptations and check feasibility across sites {#local-governance}

Local practice governance reviews the guidance against its population, clinical priorities, and care workflows. Local informatics maps the data and terminology, implements the rules and workflow, and verifies the release with intended users. Record who approved any change to a threshold, goal, included recommendation, or point of delivery. Keep its rationale and resulting behavior traceable to the reusable definition and validate the change with local cases.

Involve representative implementers while the specification is still open to revision. Examine local data with the appropriate permissions to see whether required facts can be collected with sufficient coverage, timing, and quality. Where feasible, use more than one site to expose differences in coding, populations, care processes, and system capabilities. Feed findings back to the guideline or artifact owner while there is still time to resolve them. Route observations that could affect the evidence base to evidence reviewers for assessment. [L4 checklist](clinical-guidelines-development-L4-checklist.html) · [Verify the complete interaction](approach-implementation.html#operations-and-release)

### Route findings back to the right owner {#feedback}

A useful report names the content version and local environment, relevant inputs, expected and actual behavior, and clinical or workflow consequence. Limit shared reports to the patient information needed and authorized for the purpose. Route local mapping and workflow defects to the implementation owner, reusable logic or terminology defects to the artifact steward, and unresolved recommendation meaning to clinical reviewers. Link the resulting decision to affected artifacts and expected cases. [Learning and feedback](approach-evaluation.html#learning-and-feedback)

{% include chapter-navigation.html section="Approach" unit="chapter" overview="approach.html" previous="approach-implementation.html" previous_title="Implementation and Integration" next="approach-evaluation.html" next_title="Measurement and Evidence" %}
