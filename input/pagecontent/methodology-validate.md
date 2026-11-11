<a id="validate"></a>

### Validate Step {#validate-step}

Start with the authored artifacts, their dependency versions, and the cases and expected results agreed in Represent. Clinical reviewers judge fidelity to the source and approved interpretation. The artifact team checks conformance and behavior, and the local team tests what happens in the intended setting. Record each finding with its scope and evidence. [Validation in the development lifecycle](approach-development.html#validation)

Review [clinical intent](#expert-review) and [test cases](#testing-scenarios), then distinguish [conformance](#conformance) from behavior at the [unit](#unit-testing), [component](#component-testing), and [integration](#integration-testing) levels.

#### Review the clinical intent {#expert-review}

Ask a qualified domain expert to compare the intended behavior, exceptions, and expected outputs with the source and reviewed interpretation. Ask representatives of the intended care setting whether the necessary data and workflow are available. Record who made each decision, what they reviewed, and how they resolved any disagreement.

#### Specify the testing scenarios {#testing-scenarios}

Make each case reproducible. Record the inputs, relevant context, expected output, and the clinical rationale for that output. Include qualifying and nonqualifying cases, missing data, boundaries, and changes over time. FHIR resources can carry the test data, and [ExampleScenario](https://hl7.org/fhir/R4/examplescenario.html) can describe how participants and resources interact. When an observed result prompts a change to the expected behavior, take the proposed change back to the clinical reviewer.

#### Check conformance {#conformance}

Validate against the selected profiles and [conformance requirements](documentation-conformance.html). Record the validator, packages, and terminology versions used and the disposition of findings. Structural validation checks the shape and constraints of the artifacts and their dependencies. Clinical review and testing provide separate evidence about their meaning and behavior.

#### Test individual expressions and artifacts {#unit-testing}

Run individual expressions and artifacts against approved cases. Record the engine, model, library, and terminology versions, along with the expected and actual outputs. A case that fails at this level can help isolate an expression or data mapping before the team tests a full recommendation. [VSCode CQL test-data guidance](https://github.com/cqframework/vscode-cql/wiki/User-Guide#adding-test-data)

#### Test the composed content {#component-testing}

Exercise the libraries and definitions together with controlled dependencies. Trace what data the composed content uses, which criteria evaluate as applicable, and what proposal it returns. A reference implementation can exercise those interactions and provide evidence for clinical review. The published Opioid Prescribing implementation documentation records pilot scenarios and distinguishes validated from unvalidated functionality. [Opioid Prescribing implementation documentation](https://www.fhir.org/guides/cdc/opioid-cds/documentation.html)

#### Test the local integration {#integration-testing}

Work with the local implementation and workflow owners to test the client and service together. Check the trigger and timing, authorization, data retrieval, rendering, proposed actions, and behavior when data or services are unavailable. Record the environment and limits of the exercise. A sandbox result covers the simulated interaction. The local organization decides whether the integration and workflow evidence supports use in its setting. [CDS Hooks walkthrough](https://github.com/cqframework/content-ig-walkthrough#validation-with-cqf-ruler-and-cds-hooks)

A standards-based pilot used local data and order mappings and progressive testing. Its two integrations used the same vendor, which limits what the study can show about portability. [Shenvi et al., 2026](https://doi.org/10.1002/lrh2.70104)

#### Record findings for release review {#validation-findings}

For each discrepancy, retain the tested versions, case, expected and actual behavior, and disposition. Route questions about intent to clinical reviewers, terminology or logic defects to their artifact owners, and integration issues to the local team. Give the content steward the reviewed findings and outstanding issues when deciding what can be packaged.

##### Checklists {#checklists}

Use the [L1](clinical-guidelines-development-L1-checklist.html), [L2](clinical-guidelines-development-L2-checklist.html), [L3](clinical-guidelines-development-L3-checklist.html), and [L4](clinical-guidelines-development-L4-checklist.html) checklists to communicate readiness and remaining work across roles.

{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" previous="methodology-translate.html" previous_title="Translate" next="methodology-package.html" next_title="Package" %}
