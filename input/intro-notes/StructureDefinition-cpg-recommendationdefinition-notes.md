<div id="cpg-recommendationdefinition-usage"></div>

- The plan type includes `eca-rule`. Action definition references are restricted to CPGComputableActivityDefinition or CPGOrderSetDefinition.
- Action input describes pertinent positive/negative information used for applicability; output describes relevant patient information to accompany the recommendation instance.
- Application evaluates the definition in context. The receiving workflow handles persistence, acceptance, authorization, and fulfillment under its supported contract.

Related guidance: [CPGComputableActivityDefinition](StructureDefinition-cpg-computableactivity.html); [supporting information](methodology.html#guideline-supporting-information); [processing semantics](documentation-approach-09-methods-of-implementation.html).
