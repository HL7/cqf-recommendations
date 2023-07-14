Extension: CPGAssertionExpression
Id: cpg-assertionExpression
Title: "CPG Assertion Expression"
Description: "Defines formal computational semantics for the feature if it is asserted. This is typically only required if the case feature is of a different type than the profile (e.g. a boolean feature)."
* insert ExtensionMetadata(cpg-assertionExpression, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "StructureDefinition"
* . 0..1
  * ^short = "How the feature is asserted"
  * ^definition = "Defines formal computational semantics for the feature if it is asserted. This is typically only required if the case feature is of a different type than the profile (e.g. a boolean feature)."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-assertionExpression" (exactly)
* value[x] only Expression