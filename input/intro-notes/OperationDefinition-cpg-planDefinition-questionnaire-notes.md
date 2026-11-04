<div id="cpg-planDefinition-questionnaire-usage"></div>

- Select the PlanDefinition through an instance invocation or a supported type-level selector. The parameter table declares `identifier`, `resource`, and `url`; the comment's reference to a `profile` input does not name a declared parameter. Direct submission through `resource` depends on server support.
- Review the `action.input` references and nested plans before generation. Their case-feature StructureDefinitions supply the groups, questions, and extraction mappings. This plan-wide generation is non-adaptive; an application can select currently relevant features and generate forms for them during an adaptive evaluation cycle.
- Choose `minimalOnly` explicitly when minimal generation is wanted. Its processing includes differential elements or required snapshot elements, handles required children, and omits questions constrained by fixed or pattern values. The operation advises against combining `supportedOnly` with `minimalOnly`.
- Check the generated Questionnaire, population/extraction mappings, and any reported errors or warnings. Test the resulting answers and extracted resources against the intended data profiles.

See the [generation semantics](interactive-cds.html#questionnaire-generation-processing-semantics) and [CPG Case Feature Definition](StructureDefinition-cpg-casefeaturedefinition.html).
