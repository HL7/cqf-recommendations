<div id="cpg-case-usage"></div>

- The patient references CPGPatient. At least one diagnosis is required, with each diagnosis condition referencing CPGCondition.
- `enrolledIn` is optional and repeatable (`0..*`); its values are canonicals. The formal profile does not require exactly one enrollment even though its description discusses a particular pathway.
- Episode status and period describe this care context. Enrollment eligibility, authorization, and recording remain distinct implementation decisions.

Related guidance: [Case model](approach-model.html#case); [enrollment processing](approach-implementation.html#enrollment); [CPGCarePlan](StructureDefinition-cpg-careplan.html).
