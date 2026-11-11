<div class="new-content" markdown="1">

Interactive clinical decision support collects information needed to evaluate a guideline and reevaluates when that information changes. Use this pattern when existing patient data is incomplete or needs confirmation.

The inputs are a PlanDefinition, its referenced [case-feature definitions](StructureDefinition-cpg-casefeaturedefinition.html), and the patient context. The outputs are a questionnaire interaction, any extracted resources, and revised proposed activities. Evaluation, data persistence, and clinical action remain separate responsibilities.

Read the [CPG $apply operation](OperationDefinition-cpg-plandefinition-apply.html) and [SDC population and extraction guidance](https://hl7.org/fhir/uv/sdc/) before implementing this cycle.

### PlanDefinition $apply with questionnaire

Case-feature definitions referenced in `PlanDefinition.action.input` describe the information to collect. The application coordinates these steps:

1. Select the questionnaire-generation approach below and generate the relevant Questionnaire.
2. Use [SDC Questionnaire $populate](https://hl7.org/fhir/uv/sdc/OperationDefinition-Questionnaire-populate.html) to prepare a QuestionnaireResponse associated with that Questionnaire, using available context and [expression-based population](https://hl7.org/fhir/uv/sdc/populate.html#exp-pop).
3. Present the questions, available answers, and results from CPG PlanDefinition $apply. The user can confirm or change answers, or proceed with the relevant proposals.
4. When answers change, use [SDC QuestionnaireResponse $extract](https://hl7.org/fhir/uv/sdc/OperationDefinition-QuestionnaireResponse-extract.html) and [definition-based extraction](https://hl7.org/fhir/uv/sdc/extraction.html#definition-extract) to produce resources.
5. Inspect extraction results and messages, reconcile them with the evaluation context, and call CPG $apply again with the updated data. Repeat as needed.

{% include cpg-diagram.html src="cpg-runtime-interactive.svg" ratio="1200 / 706" alt="Patient context feeds parallel questionnaire preparation and guideline evaluation. The application shows answers and proposals. Changed answers are extracted, validated, and reconciled before reevaluation; selected proposals go to the receiving workflow." %}

*Figure 1. The application coordinates collection and reevaluation. Extracted data and returned proposals require their own validation and persistence decisions.*

A RequestGroup can organize returned proposals, but CPG $apply does not require every result to use one. Its result is a Bundle for each subject and may contain individual requests, RequestGroups, or CarePlans. Render and process the result according to the operation contract.

#### Interactive CDS as an Adaptive Process

| Pattern | Generation scope | Appropriate use |
| --- | --- | --- |
| [PlanDefinition/$questionnaire](#plandefinitionquestionnaire) | Case features across the plan and referenced nested plans | Collect a comprehensive set of information up front; generation is non-adaptive |
| [StructureDefinition/$questionnaire](#structuredefinitionquestionnaire) during an apply cycle | Currently relevant case-feature definitions selected by the application | Collect questions for the applicable branches and reevaluate as context changes |
{:.grid}

The second pattern is adaptive because evaluation and application orchestration choose the next relevant features. It is conceptually related to [SDC adaptive forms](https://hl7.org/fhir/uv/sdc/adaptive.html), but does not make the CPG operation an implementation of SDC `$next-question`. Select the interface the participating systems support.

Missing information is distinct from a negative finding. Preserve unknown answers, explicit negatives, and data that could not be retrieved or evaluated. Confirm populated answers where the workflow requires it; a populated value may need review for relevance or freshness.

#### Extracted Resource Conformance

Validate extracted resources against their intended profiles and inspect warnings or errors before using or persisting them. An engine may produce a result when only part of the data is valid; a result alone is not evidence that extraction or clinical interpretation succeeded.

The CQF message extension can communicate evaluation or item-related issues. Messages may identify missing extraction values, profile nonconformance, or data excluded from CQL evaluation. A warning does not necessarily mean operation failure, but the consumer needs a defined way to inspect it, inform the user where appropriate, and determine what can proceed.

Extraction creates a representation of answers; it does not by itself guarantee correct provenance, reconciliation with existing records, or authorized persistence. The application owns those decisions and the updated context supplied to reevaluation.

### Questionnaire Generation Processing Semantics

The CPG questionnaire operations generate forms from StructureDefinitions, directly or through a PlanDefinition's input requirements. Their formal parameter lists and result types are defined by the linked OperationDefinitions. The processing guidance below explains the intended mappings.

#### StructureDefinition/$questionnaire

Use [CPG StructureDefinition $questionnaire](OperationDefinition-cpg-structureDefinition-questionnaire.html). Its `minimalOnly` parameter limits generation to relevant elements. In minimal mode, process elements in the differential, or required snapshot elements (`min > 0`), including required children of required parents; exclude elements constrained by `fixed[x]` or `pattern[x]` from questions. The operation guidance does not recommend combining `supportedOnly` with `minimalOnly`.

Verify the generated form against the source profile, including cardinalities, prohibited elements, fixed values, slices, and extraction behavior. Minimal generation is a form-construction rule, not a guarantee that every resulting response is profile-valid.

| Source | Generated Questionnaire item or behavior |
| --- | --- |
| SDC definition-extract-value extension | Carry the extension to the extraction group rather than creating a question for the value |
| CPG featureExpression | Establish item population context and derive child initial expressions as described below |
| `ElementDefinition.defaultValue[x]` | Item `initial[x]` |
| StructureDefinition canonical and element path | Item `definition`, combining the canonical, `#`, and element path |
| Short description, label, or readable path | Item `text`, in that order of preference |
| Element type | Item `type` using the mappings below |
| `min > 0` | Item `required` |
| `max > 1` or `max = *` | Item `repeats` |
| `maxLength` for a string | Item `maxLength` |
| Bound value set | Expanded `answerOption` values with an appropriate choice item |
| Item identity | Generate a unique `linkId` within the Questionnaire |
{:.grid}

For `definition`, use the full element path. A choice path can replace `[x]` with the concrete type, such as `Observation.effectiveDateTime`; a sliced element includes its slice name after a colon. Preserve enough information to map the answer back to the intended element during extraction.

Determine type from the differential when specified, otherwise from the snapshot. A code is collected as a choice with a Coding answer and mapped back to a code during extraction. This mapping does not populate item `code` or `prefix`, and does not define an automatic `readOnly` mapping. Complex data types are represented using groups and child items.

##### Conformance with expression based population and definition based extraction

The [population](https://hl7.org/fhir/uv/sdc/populate.html#exp-pop) and [extraction](https://hl7.org/fhir/uv/sdc/extraction.html#definition-extract) guidance supplies the SDC details. To connect generated items to that processing:

1. Include [launchContext](https://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-launchContext.html) for the subject and other required context at the Questionnaire root.
2. On the root group item, include [definitionExtract](https://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-definitionExtract.html), with its definition canonical identifying the StructureDefinition.
3. Carry relevant [definitionExtractValue](https://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-definitionExtractValue.html) extensions from the source elements to that group.
4. If the source StructureDefinition has a [CPG featureExpression](StructureDefinition-cpg-featureExpression.html), use it as the group's [itemPopulationContext](https://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-itemPopulationContext.html).
5. For each populated child item, set [initialExpression](https://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-initialExpression.html) to the relevant path in that population context.

The direction of these mappings is from source profile and expressions to questionnaire items. Extraction then uses the item definitions and extraction extensions to construct the data representation.

##### Mapping ElementDefinition data types to Questionnaire Items

Questionnaire answers support a smaller set of types than ElementDefinition. Check both the displayed item type and the type reconstructed by extraction.

| FHIR source type | `Questionnaire.item.type` | QuestionnaireResponse answer type | Extraction consideration |
| --- | --- | --- | --- |
| `boolean` | `boolean` | `boolean` | Preserve an absent answer separately from false |
| `date` | `date` | `date` | Preserve date precision |
| `dateTime`, `instant` | `dateTime` | `dateTime` | Respect the source type's precision/timezone constraints |
| `decimal` | `decimal` | `decimal` | Preserve numeric precision |
| `integer`, `positiveInt`, `unsignedInt` | `integer` | `integer` | Reapply source range constraints |
| `time` | `time` | `time` | Preserve time semantics |
| `canonical`, `oid`, `uri`, `url`, `uuid` | `url` | `uri` | Reconstruct the intended source type |
| `base64Binary`, `id`, `markdown`, `string` | `string` | `string` | Validate the source type and encoding |
| `code` | `choice` | `Coding` | Convert the selected Coding back to the source code |
| `Coding` | `choice` | `Coding` | Retain system, code, and version as needed |
| `CodeableConcept` | Group of choice and text items | Coding and string answers | Reconstruct coding and text in the concept |
| `Quantity` | `quantity` | `Quantity` | Preserve units and the applicable unit constraints |
| `Reference` | `reference` | `Reference` | Check target type and resolution |
| `Attachment` | `attachment` | `Attachment` | Check supported content and access |
{:.grid}

For other complex types, generate a group from the data type's StructureDefinition. For example, a Range can be represented by a group with Quantity items for its low and high values. The following illustrative structure shows the nesting; the source profile and SDC extraction rules determine the final definitions and constraints.

```json
{
  "linkId": "Range",
  "definition": "http://example.org/StructureDefinition/ExampleObservation#Observation.value[x]:valueRange",
  "text": "Actual result",
  "type": "group",
  "item": [
    {
      "linkId": "Range.low",
      "definition": "http://example.org/StructureDefinition/ExampleObservation#Observation.value[x]:valueRange.low",
      "text": "Low limit",
      "type": "quantity"
    },
    {
      "linkId": "Range.high",
      "definition": "http://example.org/StructureDefinition/ExampleObservation#Observation.value[x]:valueRange.high",
      "text": "High limit",
      "type": "quantity"
    }
  ]
}
```

#### PlanDefinition/$questionnaire

Use [CPG PlanDefinition $questionnaire](OperationDefinition-cpg-planDefinition-questionnaire.html) to generate a non-adaptive questionnaire from the case-feature inputs of a plan.

1. Find the case-feature definitions referenced by `PlanDefinition.action.input`.
2. Follow referenced nested PlanDefinitions and include their case-feature inputs.
3. Apply the StructureDefinition generation semantics to each identified case feature.
4. Either add the resulting groups to one Questionnaire, or generate separate questionnaires and combine them using [SDC $assemble](https://hl7.org/fhir/uv/sdc/OperationDefinition-Questionnaire-assemble.html).

The result should conform to [SDC Populatable Questionnaire — Expression](https://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-pop-exp.html) and [SDC Extractable Questionnaire — Definition](https://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-extr-defn.html), and align with the expected output of assembly. See [modular questionnaires](https://hl7.org/fhir/uv/sdc/modular.html#modular) for that composition pattern.

### Verify the cycle

Test initial population, changed and cleared answers, repeated evaluation, unavailable data, extraction messages, and user selection of proposals. Check that extracted facts retain their source and patient context and that stale proposals are not committed after the context changes. Use [Conformance](documentation-conformance.html) for the formal requirements and [Activity Flow](activityflow.html) for what happens after a proposal is selected.

</div>
