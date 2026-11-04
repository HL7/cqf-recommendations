**Methodology:** [Overview](methodology.html) · [Previous: Translate](methodology-translate.html)

<a id="validate"></a>

### Validate Step {#validate-step}

Test fidelity to the L1/L2 specification as well as technical conformance. Keep the following findings separate; passing one does not establish the others. See [execution and validation](documentation-approach-05-04-knowledge-execution-and-validation.html) for the review sequence.

#### Conformance

Validate against the selected profiles and [conformance requirements](documentation-conformance.html), including dependencies and terminology. Structural validity does not establish clinical benefit.

#### Checklists

Use the [L1](clinical-guidelines-development-L1-checklist.html), [L2](clinical-guidelines-development-L2-checklist.html), [L3](clinical-guidelines-development-L3-checklist.html), and [L4](clinical-guidelines-development-L4-checklist.html) checklists to communicate readiness and remaining work across roles.

#### Expert Review

Ask a qualified clinical domain expert to review intent, exceptions, and expected outputs. Include representative implementation-site review of data availability and workflow. Record disagreements and their resolution.

#### Testing Scenarios

Describe inputs, relevant context, expected output, and the reason for the expected result. FHIR resources and [ExampleScenario](https://hl7.org/fhir/R4/examplescenario.html) can make cases explicit. Include positive, negative, missing-data, boundary, and temporal cases.

#### Unit Testing

Test individual expressions and artifacts against approved cases. [VSCode CQL test-data guidance](https://github.com/cqframework/vscode-cql/wiki/User-Guide#adding-test-data) is one tooling example. Record the tested engine, model, library, and terminology versions.

#### Component Testing

Test composed libraries and definitions with controlled dependencies. A reference implementation can help exercise artifacts; it is not a substitute for clinical review. The [Opioid Prescribing implementation documentation](https://www.fhir.org/guides/cdc/opioid-cds/documentation.html) records pilot-testing scenarios and distinguishes validated from unvalidated functionality.

#### Integration Testing

Test the actual client/service interaction, authorization, data retrieval, timing, rendering, proposed actions, and failure behavior. A sandbox demonstrates a simulated interaction, not production readiness. See the [CDS Hooks walkthrough](https://github.com/cqframework/content-ig-walkthrough#validation-with-cqf-ruler-and-cds-hooks). A 2026 standards-based pilot still needed local data and order mappings and progressive testing; two same-vendor integrations did not establish universal portability. [Shenvi et al., 2026](https://doi.org/10.1002/lrh2.70104).

**Methodology:** [Overview](methodology.html) · [Previous: Translate](methodology-translate.html)
