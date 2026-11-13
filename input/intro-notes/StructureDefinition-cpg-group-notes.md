<div id="cpg-group-usage"></div>

- `type` is fixed to `person`, `actual` to `true`, and a name is required. Characteristics are prohibited.
- Each included member entity references CPGPatient. Member periods and inactive flags describe membership context; the profile does not require at least one member.
- Where enrollment is needed, retain the separate patient case/enrollment record rather than inferring it from group membership.

Related guidance: [CPGGroupDefinition](StructureDefinition-cpg-groupdefinition.html); [CPGCase](StructureDefinition-cpg-case.html).
