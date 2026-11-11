Computable guideline development turns a clinical recommendation into a versioned set of artifacts that others can review, test, and adapt to local care. Start with a specific clinical decision and carry its source, rationale, and approved interpretation through every handoff. The team can work on these products together as data constraints or test cases expose questions for clinical review. [Methodology](methodology.html) gives the detailed Select, Represent, Translate, Validate, and Package steps.

### Establish the source and scope {#source-and-scope}

Identify the authoritative recommendation, its publication and version, the relevant passage, and the people responsible for interpreting and maintaining it. Record the intended decision, users, and settings. The population, intervention, comparator, outcomes, timing, and setting (PICOTS) frame the clinical question and help the team identify relevant data and exclusions. Review any proposed eligibility rule with clinical reviewers before treating it as an executable criterion.

If published guidance leaves room for interpretation, document what the source says, how reviewers interpret it, and what a site proposes to adapt. Use patient stories and representative local data to expose assumptions about timing, exceptions, or data availability. Assign a decision owner to each unresolved question. The [GIN–McMaster guideline checklist](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html) covers broader guideline-development activities.

### Preserve evidence and recommendation judgments {#evidence-and-recommendations}

A systematic review uses explicit methods to identify, appraise, and synthesize evidence for a defined question. A meta-analysis combines compatible quantitative results. The guideline group still has to interpret applicability, bias, heterogeneity, and uncertainty. A rapid review adapts methods to the available time and reports the resulting limits. [AHRQ comparative-effectiveness methods](https://www.ncbi.nlm.nih.gov/books/NBK98234/) · [Khangura et al.](https://doi.org/10.1186/2046-4053-1-10)

Evidence reviewers assess findings. The guideline group weighs those findings and decides what to recommend. The computable specification records how to recognize the relevant situation and which activity to propose. Keep those three judgments traceable to each other.

| Record | What the next reviewer needs |
| --- | --- |
| Evidence and certainty | Relevant findings and limitations, citations, outcome-specific certainty, and the method used to judge it. |
| Recommendation and rationale | Direction, strength, applicability, and the tradeoffs or consensus judgments behind the decision. |
| Computable interpretation | Explicit criteria, timing, exceptions, proposed actions, data assumptions, and examples tied to the source. |
{:.grid}

GRADE illustrates how a rating method distinguishes evidence certainty from recommendation strength. Use the definitions of the chosen method. In this guide, `relatedArtifact` carries supporting citations, and rating extensions on `PlanDefinition.action` convey recommendation strength, evidence quality, and optional direction. FHIR R4 Evidence and EvidenceVariable can represent evidence information when a project needs to exchange it. [GRADE handbook](https://gdt.gradepro.org/app/handbook/handbook.html) · [Methodology requirements for supporting information](methodology-select.html#guideline-supporting-information) · [CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html) · [FHIR R4 Evidence](https://hl7.org/fhir/R4/evidence.html) · [FHIR R4 EvidenceVariable](https://hl7.org/fhir/R4/evidencevariable.html)

### Co-develop the guideline and artifacts {#co-development}

Clinical and evidence reviewers, knowledge engineers, terminologists, implementers, and evaluators work on the same decision from different perspectives. Include patients, caregivers, and representative users when their circumstances or actions shape the proposed care. Work in small increments that can be discussed using concrete cases. A missing data field, inexact terminology mapping, or unsupported local action can change what the team can safely offer and may send an interpretation back to clinical review. [Integrated development process](https://doi.org/10.1097/JMQ.0000000000000137) · [WHO terminology-alignment experience](https://doi.org/10.1136/bmjhci-2022-100691)

<div style="clear: both;">
  <img src="cpg-method-handoff.svg" alt="Twelve clinical guideline activities and related informatics activities surround ongoing evaluation and users, grouped into four phases of co-development." class="img-responsive center-block" width="1000"/>
</div>

| Handoff | What changes hands |
| --- | --- |
| Guideline group to knowledge engineers | Source guidance, scope, evidence judgments, rationale, and approved interpretation. |
| Knowledge engineers to artifact authors and reviewers | A reviewed decision specification, clinical examples, and open questions with named owners. |
| Content steward to local implementers | A versioned package, expected test results, dependency versions, supported capabilities, and known limitations. |
| Local team to content steward | Reproducible discrepancies, workflow observations, and evidence from actual use. |
{:.grid}

### Produce a reviewed specification {#reviewed-specification}

Describe each input in a data dictionary with its clinical meaning, code or mapping, units, source, timing, and treatment of missing or conflicting values. State the decision criteria and their source, the activities proposed, and the information that supports them. Sketch who encounters the recommendation, when they receive it, and who can respond or follow up. Keep patient description, clinical decision logic, and local workflow distinct so each can be reviewed. [Case, Plan, and Workflow](approach-model.html) · [WHO Digital Adaptation Kits](https://www.who.int/publications/i/item/9789240089907) · [Layered representation framework](https://doi.org/10.1136/amiajnl-2011-000334)

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

### Release and maintain reviewed content {#release-and-maintenance}

Release the approved narrative, computable artifacts, dependencies, tests, and known limitations together or through stable links. Name the steward for updates and retirement. Identify which artifacts and tests depend on shared libraries, value sets, or source decisions so a change triggers the right review. The local care organization separately approves use in its setting and owns its mappings, workflow, operational support, and release decisions. [Guideline Artifacts](approach-artifacts.html) · [Methodology packaging](methodology.html#packaging) · [Implementation and Integration](approach-implementation.html) · [CDS Connect evaluation](https://doi.org/10.1055/s-0043-1769911)

### Route findings back to the right owner {#feedback}

A useful report names the content version and local environment, relevant inputs, expected and actual behavior, and clinical or workflow consequence. Limit shared reports to the patient information needed and authorized for the purpose. Route local mapping and workflow defects to the implementation owner, reusable logic or terminology defects to the artifact steward, and unresolved recommendation meaning to clinical reviewers. Link the resulting decision to affected artifacts and expected cases. [Learning and feedback](approach-evaluation.html#learning-and-feedback)

{% include chapter-navigation.html section="Approach" unit="chapter" overview="approach.html" previous="approach-implementation.html" previous_title="Implementation and Integration" next="approach-evaluation.html" next_title="Measurement and Evidence" %}
