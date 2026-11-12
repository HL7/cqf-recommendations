<div id="cpg-strategydefinition-usage"></div>

- The plan type includes `workflow-definition`. Each action requires title, description, and one code with the extensible common-process binding.
- Action definition references target only CPGRecommendationDefinition. Inputs, outputs, related actions, and selection behavior are supported; action type, grouping/required/precheck/cardinality behaviors, transform, and dynamicValue are prohibited.
- Review related-action timing and selection semantics with the intended runtime rather than inferring execution order from array position.

Related guidance: [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html); [CPGStrategy](StructureDefinition-cpg-strategy.html); [plan hierarchy](approach-model.html#plan).
