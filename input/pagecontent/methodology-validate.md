This page was reorganized from the single Methodology page of the previous version of this guide, and its guidance was expanded (see the [change log](changes.html)).
{:.modified-content}

<a id="validate"></a>

### Validate Step {#validate-step}

Start with the authored artifacts, their dependency versions, and the cases and expected results agreed in Represent. Clinical reviewers judge fidelity to the source and approved interpretation. The artifact team checks conformance and behavior, and the local team tests what happens in the intended setting. Record each finding with its scope and evidence. [Validation in the development lifecycle](documentation-approach-05-04-knowledge-execution-and-validation.html)

Review [clinical intent](#expert-review) and [test cases](#testing-scenarios), then distinguish [conformance](#conformance) from behavior at the [unit](#unit-testing), [component](#component-testing), and [integration](#integration-testing) levels.

The _validate_ step involves ensuring that the structured (L3) content produced matches the intent of the (L1) and (L2) content for the guideline, and that it behaves as expected. This typically involves the creation of at least a positive and negative _scenario_, or test case, that can be used to test the behavior of the structured content. In practice, this requires the ability to _execute_ the L3 content in at least simulated environments. This implementation guide provides several approaches for validation, including conformance requirements, L1, L2, L3, and L4 checklists, as well as supporting several layers of testing.


#### Review the clinical intent {#expert-review}

Ask a qualified domain expert to compare the intended behavior, exceptions, and expected outputs with the source and reviewed interpretation. Ask representatives of the intended care setting whether the necessary data and workflow are available. Record who made each decision, what they reviewed, and how they resolved any disagreement.

It is often the case that guideline development and derivative asset development are done by separate and fairly isolated teams. When the original guideline developers cannot be used for expert review, it is critical to ensure review by a qualified domain expert familiar with the domain the guideline covers.

In addition, engagement from target implementation sites is key, and the best-case scenario is to have site engagement as part of the development process. Again, this is often not the case, so seeking implementation review from at least one, if not several target implementation sites can provide valuable feedback.

<div class="new-content" markdown="1">

Trace one recommendation through the [Case, Plan, and Workflow boundaries](documentation-approach-12-02-separating-and-defining-case-plan-and-workflow.html#boundary-issues-at-the-separation-of-domain-concerns) during review: from the source guideline and selected features, to what is proposed, who can authorize it, and which record establishes fulfillment. [Metrics](documentation-approach-12-07-cpg-derivative-and-related-assets.html#metrics) explains how to evaluate those records for a separate purpose.

</div>



#### Specify the testing scenarios {#testing-scenarios}

Make each case reproducible. Record the inputs, relevant context, expected output, and the clinical rationale for that output. Include qualifying and nonqualifying cases, missing data, boundaries, and changes over time. FHIR resources can carry the test data, and [ExampleScenario](https://hl7.org/fhir/R4/examplescenario.html) can describe how participants and resources interact. When an observed result prompts a change to the expected behavior, take the proposed change back to the clinical reviewer.

#### Check conformance {#conformance}

Validate against the selected profiles and [conformance requirements](documentation-conformance.html). Record the validator, packages, and terminology versions used and the disposition of findings. Structural validation checks the shape and constraints of the artifacts and their dependencies. Clinical review and testing provide separate evidence about their meaning and behavior.

#### Test individual expressions and artifacts {#unit-testing}

Run individual expressions and artifacts against approved cases. Record the engine, model, library, and terminology versions, along with the expected and actual outputs. A case that fails at this level can help isolate an expression or data mapping before the team tests a full recommendation. [VSCode CQL test-data guidance](https://github.com/cqframework/vscode-cql/wiki/User-Guide#adding-test-data)

Ideally, each artifact should have at least one _positive_ and one _negative_ test case. In addition, edge cases and boundary conditions should be considered and where appropriate, additional test cases provided. The goal of unit testing is to ensure that each of the artifacts functions as expected in isolation.

<div class="new-content" markdown="1">

Where an artifact uses external functions or other languages, test that support where the artifact will run, and compare clinically reviewed cases and missing-data behavior when translating between representations.

</div>



#### Test the composed content {#component-testing}

Exercise the libraries and definitions together with controlled dependencies. Trace what data the composed content uses, which criteria evaluate as applicable, and what proposal it returns. A reference implementation can exercise those interactions and provide evidence for clinical review. The published Opioid Prescribing implementation documentation records pilot scenarios and distinguishes validated from unvalidated functionality. [Opioid Prescribing implementation documentation](https://www.fhir.org/guides/cdc/opioid-cds/documentation.html)

Component testing involves ensuring that the components of a system work as expected. Ideally, components are tested with as few dependencies as possible. For L3 decision support content conforming to this implementation guide, that content can be tested with freely available, open-source reference implementations capable of evaluating the content and exposing that evaluation as a CDS Hooks service.


#### Test the local integration {#integration-testing}

Work with the local implementation and workflow owners to test the client and service together. Check the trigger and timing, authorization, data retrieval, rendering, proposed actions, and behavior when data or services are unavailable. Record the environment and limits of the exercise. A sandbox result covers the simulated interaction. The local organization decides whether the integration and workflow evidence supports use in its setting. [CDS Hooks walkthrough](https://github.com/cqframework/content-ig-walkthrough#validation-with-cqf-ruler-and-cds-hooks)

A standards-based pilot used local data and order mappings and progressive testing. Its two integrations used the same vendor, which limits what the study can show about portability. [Shenvi et al., 2026](documentation-approach-cds-implementation-evidence.html#ref-shenvi-2026)

Integration testing involves ensuring that systems work together as expected, for example by testing a CDS Hooks service with a sandbox that simulates a clinical system acting as a CDS Hooks client.

<div class="new-content" markdown="1">

Test the expected results and the behavior when prefetch is missing, patient data are incomplete, a service times out, or the context changes during an interaction. Define how repeated deliveries are recognized and how stored results are updated or superseded. Clinical review, logic tests, structural conformance, integration tests, usability, and outcome evaluation contribute different evidence to the release decision.

<div class="new-content" markdown="1">

##### Compare local behavior with the source {#execution-methods}

The [method of implementation](documentation-approach-09-methods-of-implementation.html) determines what must be compared with the source guideline and its test cases:

| Execution method | Implementation work | Evidence to collect |
| --- | --- | --- |
| Manual implementation | Use the artifacts as a specification for local rules and interfaces. | Trace local behavior to the source, including exceptions, timing, missing data, and expected results. |
| Translation | Transform supported content into another executable representation. | Compare source and target behavior, including null handling, temporal logic, terminology, units, and unsupported constructs. |
| Native execution | Evaluate the supplied logic and definitions in a compatible engine. | Check model and engine versions, expression features, terminology services, artifact resolution, and local data behavior. |
{:.grid}

</div>

#### Validate derived outputs and reports {#derived-outputs}

A public health eCR report, a registry submission, and feedback to a guideline developer serve different purposes. Confirm the recipient's scope, required terminology, disclosure authorization, and applicable reporting contract. Validate the report against that contract and test that a representative patient record yields the expected report, including the distinction between proposals, orders, and documented events. Test population measure rules with representative patient-level cases before interpreting results for a care team, facility, or research cohort. See the [Electronic Case Reporting Implementation Guide](https://hl7.org/fhir/us/ecr/) and the [Quality Measure Implementation Guide](https://hl7.org/fhir/uv/cqm/index.html).

| Output | What to check with representative cases |
| --- | --- |
| Patient metric | The clinical meaning, time anchor, scoring rules, and behavior when data are missing or late. |
| Population measure | The population criteria and exclusions, how patient results contribute to the score, and how aggregation is verified. |
| Summary or note | The patient and time scope, source of included facts, and presentation of proposals, authorized care, and documented events. |
| External report | The recipient's contract, required content and terminology, and what data the recipient is authorized to receive. |
{:.grid}

</div>



#### Record findings for release review {#validation-findings}

For each discrepancy, retain the tested versions, case, expected and actual behavior, and disposition. Route questions about intent to clinical reviewers, terminology or logic defects to their artifact owners, and integration issues to the local team. Give the content steward the reviewed findings and outstanding issues when deciding what can be packaged.

<div class="new-content" markdown="1">

Retain the versioned cases, approved expectations, and comparisons for use in regression testing.

</div>


##### Checklists {#checklists}

Use the [L3 checklist](clinical-guidelines-development-L3-checklist.html) to review computable content and test evidence for release. Use the [L4 checklist](clinical-guidelines-development-L4-checklist.html) for findings about local integration and rollout. The [checklist overview](checklists.html) also covers reviews of the narrative source and structured specification.

To help facilitate the process of communication of requirements between collaborators, and to provide a measure of completeness with respect to artifacts used in and developed as part of this methodology, this implementation guide provides checklists associated with each knowledge representation level. These checklists are intended as a tool to help identify requirements and ensure completeness of artifacts:

|Checklist|Description|
|--------------|----|
|[L1 Checklist](clinical-guidelines-development-L1-checklist.html)|Used as a tool to help guideline developers develop L1 in clearer, consistent, and more structured approach|
|[L2 Checklist](clinical-guidelines-development-L2-checklist.html)|Used to ensure that informaticists and knowledge engineers have what they need from L1 content in order to successfully produce L3 content|
|[L3 Checklist](clinical-guidelines-development-L3-checklist.html)|Used to ensure that L3 content meets the requirements to ensure that implementers have what they need in order to successfully implement computable content in a specific setting|
|[L4 Checklist](clinical-guidelines-development-L4-checklist.html)|Used by implementers to help support the process of implementing in a specific setting, helping to ensure successful and faithful implementation of guideline content|
{:.grid}


{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" previous="methodology-translate.html" previous_title="Translate" next="methodology-package.html" next_title="Package" %}
