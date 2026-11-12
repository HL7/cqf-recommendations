<div id="cpg-medicationstatement-usage"></div>

- `informationSource` and `derivedFrom` help explain the statement’s origin. `basedOn` can connect it to a related request; it is not an administration-fulfillment field.

- `status` and `statusReason` describe medication use as reported by this statement, independently of any documentation Task.

- `medication[x]`, `subject` and `context` identify its clinical meaning. Case-feature and pertinent-information extensions support reuse without making a reported statement proof of a particular administered dose.

Related: [documentation Task](StructureDefinition-cpg-documentmedicationtask.html); [administration record](StructureDefinition-cpg-medicationadministration.html); [case features](documentation-approach-12-04-cpg-case.html).
