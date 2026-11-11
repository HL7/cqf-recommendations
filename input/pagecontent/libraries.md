Use FHIR Library resources to package clinical logic and describe what is needed to evaluate it. A useful library has a stable identity and version, source and executable content as appropriate, and enough dependency and data-requirement information for an implementor to resolve its inputs.

### CQL, ELM, and Library

| Component | Role | What an implementor checks |
| --- | --- | --- |
| CQL | Human-readable clinical expressions | Intended meaning, model/version, terminology, and clinical test cases |
| Expression Logical Model (ELM) | Machine-readable representation of the expressions | Translator/runtime compatibility and agreement with the source |
| FHIR Library | Resource carrying content, metadata, and dependencies | Canonical identity, version, content types, related libraries, and data requirements |
| Model information | Description of the data model used by the expressions | Compatibility with the FHIR version and profiles supplied to evaluation |
{:.grid}

The [CQL specification](https://cql.hl7.org/) defines language behavior. [Using CQL With FHIR](https://hl7.org/fhir/uv/cql/) describes its use with FHIR and the relevant profiles. A FHIR server that stores Library resources does not thereby implement CQL evaluation.

### Conformance requirements

Content that uses CQL must conform to the [Using CQL With FHIR](https://hl7.org/fhir/uv/cql/) implementation guide. See [Use of CQL](documentation-conformance.html#use-of-cql) for when this applies.

* {:.modified-content} §lib-1?^^logic:Content that uses CQL **SHALL** use CQLLibrary (for Computable content), ELMLibrary (for Executable content), and CQLModule (to provide structured representation of dependencies and data requirements)§
* {:.modified-content} §lib-2?^^logic:Content that uses CQL **SHALL** use CQLModelInfo for model information§

### Prepare for evaluation

Resolve the library and its included libraries, model information, terminology dependencies, and parameters. Review `dataRequirement` against the local data available for the patient and evaluation time. Preserve distinctions among missing data, an explicit negative, and a failed retrieval. CQL's null and temporal semantics are part of the logic being implemented, not presentation choices.

Test the source and executable representation together with positive, negative, boundary, temporal, and missing-data cases. If translating logic to another language, compare results for the supported constructs. Keep the test inputs and expected results with the content's version history so that dependency changes can be assessed.

Continue to [methodology](methodology-translate.html#translate-step) for authoring, [execution methods](approach-implementation.html#execution-methods) for runtime choices, and the [example libraries](examples.html#example-library) for resources already supplied by this guide.
