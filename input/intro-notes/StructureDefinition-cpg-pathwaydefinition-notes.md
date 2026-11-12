<div id="cpg-pathwaydefinition-usage"></div>

- The plan type includes `clinical-protocol`. Each action requires title, description, and one code with the extensible common-process binding.
- Action definition references are restricted to CPGStrategyDefinition or CPGWorkflowDefinition. Action input, output, relatedAction, type, grouping, selection, required, precheck, and cardinality behaviors, transform, and dynamicValue are prohibited.
- The definition neither creates a CPGCase nor authorizes patient activities merely by being referenced or evaluated.

Related guidance: [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html); [CPGWorkflowDefinition](StructureDefinition-cpg-workflowdefinition.html); [plan hierarchy](approach-model.html#plan).
