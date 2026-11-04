Knowledge engineering turns reviewed clinical meaning into explicit, testable knowledge artifacts. Use this lifecycle to assign responsibility and decide what evidence is needed at each handoff. Use [Methodology](methodology.html) for the Select → Represent → Translate → Validate → Package recipe and its conformance requirements.

### Knowledge Engineering Lifecycle Process

<div style="clear: both;">
  <img src="cpg-method-iteration.svg" alt="An implementation-oriented cycle connects clinical questions, explicit specifications, computable artifacts, and evaluated use; findings return to the responsible reviewers." class="img-responsive center-block" width="1000"/>
</div>

| Phase | Input and responsible expertise | Work product | Review before relying on it |
| --- | --- | --- | --- |
| <a id="knowledge-acquisition"></a><a id="knowledge-elicitation"></a><a id="knowledge-authoring"></a><a id="knowledge-synthesis"></a><a id="knowledge-discovery"></a><a id="hybrid-approaches"></a><a id="in-collaboration-with-the-guideline-development-group"></a><a id="in-collaboration-with-knowledge-implementers"></a>[Acquisition](documentation-approach-05-01-knowledge-acquisition.html) | Source guidance and clinical need; domain and evidence experts | Source inventory, scope, interviews, clinical examples, open questions | Authority, version, applicability, and missing clinical meaning |
| <a id="knowledge-translation"></a>[Translation](documentation-approach-05-02-knowledge-translation.html) | Acquired meaning; clinical, informatics, terminology reviewers | Data dictionary, explicit decisions/workflow, ambiguity log, expected test results | Agreement with guideline intent and supported data semantics |
| <a id="knowledge-representationexpression"></a><a id="knowledge-curation"></a><a id="knowledge-management"></a>[Representation](documentation-approach-05-03-knowledge-representation.html) | Reviewed specification; knowledge authors and terminology engineers | FHIR/CQL artifacts, metadata, terminology, dependencies | Correct resource/profile roles, traceability, and version consistency |
| <a id="knowledge-execution"></a>[Execution](documentation-approach-05-04-knowledge-execution-and-validation.html#knowledge-execution) | Artifacts and test inputs; engine/integration implementors | Computed results with execution context | Engine/model/data compatibility and reproducible behavior |
| <a id="knowledge-validation"></a>[Validation](documentation-approach-05-04-knowledge-execution-and-validation.html#knowledge-validation) | Expected cases and computed results; technical and clinical reviewers | Separate structural, logic, clinical, and integration findings | Known limitations, failures, and evidence supporting readiness |
| <a id="knowledge-implementation"></a><a id="local-content-and-practice-governance"></a><a id="local-informatics-knowledge-engineering-and-implementation"></a><a id="concurrent-development-and-implementation"></a><a id="analogs-and-collaboration-across-cpg-development-and-implementation"></a><a id="feedback--early-often-actionable"></a><a id="real-world-data-to-develop-cpgs"></a>[Implementation](documentation-approach-05-05-knowledge-implementation.html) | Package and local capabilities; clinical operations and IT owners | Local mappings, workflow, release decision, monitoring and feedback | Authorized use, follow-up, maintenance and observed effects |
{:.grid}

The phases overlap. A test failure may expose a terminology mapping, a logic defect, or an unresolved clinical decision. Return it to the appropriate owner rather than changing the expression until a test passes. The [integrated development process](https://doi.org/10.1097/JMQ.0000000000000137) supports interdisciplinary collaboration; the [evaluation framework](https://doi.org/10.1097/JMQ.0000000000000140) distinguishes process, product, and outcome evidence.

### Agile CPG Development Approach

Use [small reviewed increments](documentation-approach-05-06-agile-cpg-development-approach.html) with linked clinical examples and tests. Iteration describes how work is organized; it does not waive clinical review or demonstrate clinical effectiveness. The [historical case study](methodology-case-study.html) illustrates one implementation of this approach.
