<div id="cpg-condition-usage"></div>

- Code and at least one category are required. Subject references CPGPatient; encounter, when supplied, references CPGEncounter.
- Onset and abatement are limited to dateTime, Age, Period, or Range. Clinical status, verification status, and evidence remain relevant to interpreting the record.
- Case-feature type and pertinence describe the information's role. A missing Condition is not an explicit negative finding.

Related guidance: [Case features](documentation-approach-12-04-cpg-case.html); [CPGCase](StructureDefinition-cpg-case.html).
