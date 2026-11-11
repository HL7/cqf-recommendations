<div id="cpg-workflowdefinition-usage"></div>

- The plan type includes `workflow-definition`; each action requires title and description. Code is optional, limited to one, and uses the extensible common-process binding.
- Inputs, outputs, related actions, and definition references are supported. Action participants can include a participantCapabilityStatement extension.
- Unlike CPGStrategyDefinition, this profile retains base definition[x] choices. Action type, grouping/selection/required/precheck/cardinality behaviors, transform, and dynamicValue are prohibited.

Related guidance: [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html); [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html); [workflow model](approach-implementation.html#patient-flow).
