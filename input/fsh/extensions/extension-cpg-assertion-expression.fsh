Extension: CPGAssertionExpression
Id: cpg-assertionExpression
Title: "CPG Assertion Expression Extension"
Description: "Defines formal computational semantics for the feature if it is asserted. This is typically only required if the case feature is of a different type than the profile (e.g. a boolean feature)."
* insert DefinitionMetadata(cpg-assertionExpression, StructureDefinition)
* insert ExtensionContext(StructureDefinition)
* . 0..1
* value[x] only Expression