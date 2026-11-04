Develop a small, clinically meaningful increment with its data definitions, decisions, examples, artifacts, and review record. This makes disagreements visible while they are still manageable. “Agile” here describes an iterative organization of work, not a clinical validation method or a reason to bypass approval.

<a id="integrationcollaboration-of-cpg-development-and-implementation"></a>

### Cross-functional, Integrated CPG Development Team

Assign clinical, evidence, terminology, knowledge-authoring, implementation, communication, and evaluation responsibilities. Invite patients/caregivers and representative users where their decisions or data affect the intervention. The [integrated process](https://doi.org/10.1097/JMQ.0000000000000137) describes this collaboration across guideline development and implementation.

<a id="chunking"></a>
<a id="constrained-yet-contextualized-parts"></a>
<a id="incremental"></a>
<a id="iterative"></a>
<a id="agile-approach-to-knowledge-engineering-and-cpg-development"></a>

### One Reviewed Increment

<div style="clear: both;">
  <img src="cpg-method-iteration.svg" alt="A bounded clinical question moves through specification, computable artifacts, reviewed cases, and evaluated use, with findings returning to the appropriate team." class="img-responsive center-block" width="1000"/>
</div>

| Activity | Reviewable output |
| --- | --- |
| Choose a bounded recommendation | Source/version, scope, actors, expected action, rationale and exclusions |
| Acquire and translate meaning | Data dictionary, explicit criteria/workflow, unresolved questions and clinical examples |
| Author the artifacts | Profiles, terminology, CQL/Library and definitions with dependencies |
| Compare behavior to examples | Expected/actual results and separate technical/clinical findings |
| Try the local integration | Capability, data, workflow and usability findings; authorized release decision |
| Evaluate and revise | Observed use/effects, defects, change decisions and updated dependent tests |
{:.grid}

### Specification by Example

As a **nonclinical test pattern**, suppose a recommendation requires an observation in a specified time window and a clinician-reviewed threshold. Create cases for a qualifying observation, a nonqualifying observation, a boundary value, an observation outside the window, conflicting values, and no available observation. Define the expected result and its clinical rationale before implementing the expression. This pattern supplies no clinical threshold or treatment advice.

<a id="integration-with-knowledge-engineering-with-guideline-development-process"></a>
<a id="test-driven-knowledge-formalism-andor-expression"></a>
<a id="agile-validation-enabled-by-test-driven-knowledge-engineering"></a>
<a id="knowledge-engineering-workflow-support"></a>

### Test-driven Knowledge Engineering

Use cases to challenge the decision specification, not merely to confirm the implementation. A failed example can indicate a clinical ambiguity, incorrect code mapping, temporal assumption, expression defect, or engine/integration issue. Missing input is not an observed negative; CQL null/three-valued behavior needs explicit expected cases. Keep clinical interpretation under human review.

A 2025 vaccination-rule report used cross-reviewed intermediate representations and tested 12 CQL rules/files with hypothetical FHIR cases; remaining CQL conversion was ongoing. That experience illustrates testable work products; it does not establish current vaccine guidance or production effectiveness. [Jing et al., 2025](https://doi.org/10.3390/vaccines13050437).

<a id="building-by-composition-restriction"></a>
<a id="use-of-ontologies-and-terminologies"></a>

### Composition, Reuse, and Change

Reuse reviewed concepts and expressions when their scope and assumptions match. Record canonical identities, versions, and dependencies so a change to a shared value set, library, or source recommendation can trigger review of affected artifacts. Composition reduces repeated authoring only when dependencies and meaning remain understandable.

<a id="leveraging-a-knowledge-base-knowledge-content-management-system"></a>
<a id="ke-tooling-leveraging-the-knowledge-content-management-system"></a>
<a id="advanced-knowledge-content-management-capabilities"></a>

### Tooling and Knowledge Management

Tooling can support authoring, review, test execution, dependency discovery, and release history. It does not determine which clinical meaning is correct. Use the [representation/curation guidance](documentation-approach-05-03-knowledge-representation.html) rather than choosing a particular knowledge-content platform as a prerequisite.

<a id="iteration-rapid-cycle-feedback"></a>

### Validation and Feedback

Keep [structural, logic, clinical, integration, and outcome evidence](documentation-approach-05-04-knowledge-execution-and-validation.html) separate. The [evaluation framework](https://doi.org/10.1097/JMQ.0000000000000140) distinguishes the development process, product quality, and effects. The [historical case study](methodology-case-study.html) shows how one team organized these work products; [Methodology](methodology.html) provides the implementation recipe.
