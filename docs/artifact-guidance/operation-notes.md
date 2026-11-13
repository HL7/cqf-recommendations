# Operation intro and usage-note review

Added an intro and ending notes fragment for all five OperationDefinition instances in `input/fsh/operations`, preserving the exact case of their IDs. Read each FSH source and compared the input/output signatures with the prior Publisher build's generated JSON. No formal operation definition, parameter, default, resource, or page narrative was changed.

| Operation ID | Context added |
| --- | --- |
| `cpg-plandefinition-apply` | Plan evaluation, subject-specific Bundle output, selectors, data sources, optional RequestGroup structure, and the transient result/receiving-workflow boundary. |
| `cpg-activitydefinition-apply` | Single-activity instantiation, one declared resource output, dynamic-value evaluation, invocation ambiguity, and downstream workflow. |
| `cpg-planDefinition-questionnaire` | Plan-wide collection, nested data requirements, non-adaptive scope, declared selector names, minimal generation, and validation. |
| `cpg-structureDefinition-questionnaire` | Profile-based form generation, declared selector names, minimal generation, item/extraction semantics, and response testing. |
| `cpg-common-patient-summary` | Patient-instance invocation, document Bundle result, agreed document conventions, and the distinction from a guideline case summary. |

## Existing contract issues surfaced without changing artifacts

- ActivityDefinition apply: `url`/`version` descriptions establish an alternative to `activityDefinition`, while the `activityDefinition` description calls the inline resource required at type level. Notes expose the inconsistency rather than choosing a new formal rule.
- Both questionnaire operations: comments mention a `profile` selector, but the declared inline input is `resource`. Notes name the actual inputs and retain the stated server discretion over direct resource submission.
- Four operations repeat artifact-routing prose whose rank-order description reverses the prefix relationship used in its matching description. The notes point to artifact-resolution configuration without introducing a replacement routing algorithm. A future formal-artifact change can resolve that issue separately.
- Patient summary: its comment describes a summary document following agreed conventions; its output is typed only as Bundle, without a target profile. Notes do not turn IPS into an additional conformance requirement.
- The operations do not declare `affectsState`. No new claim about HTTP GET availability, idempotence, or persistence is inferred from that omission. Transience is stated only for the two apply operations, whose comments explicitly establish it.
- The ActivityDefinition apply return uses `Any` in FSH/SUSHI output and is normalized to `Resource` in the published OperationDefinition. The notes use the published type and retain its `1..1` cardinality. Independent review checked all ten operation fragments against their signatures and comments.

Publisher placement follows the official [Intros and Usage Notes guidance](https://build.fhir.org/ig/FHIR/ig-guidance/using-templates.html). The generated parameter tables remain the source for exact wire names, types, and cardinalities.
