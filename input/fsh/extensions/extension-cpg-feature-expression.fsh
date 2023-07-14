Extension: CPGFeatureExpression
Id: cpg-featureExpression
Title: "CPG Feature Expression"
Description: "Defines formal computational semantics for the feature, combining the inference and assertion expressions. This is typically only required if the feature is of a different type than the profile (e.g. a boolean feature)."
* insert DefinitionMetadata(cpg-featureExpression, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "StructureDefinition"
* . 0..1
  * ^short = "How the feature is expression"
  * ^definition = "Defines formal computational semantics for the feature, combining the inference and assertion expressions. This is typically only required if the feature is of a different type than the profile (e.g. a boolean feature)."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-featureExpression" (exactly)
* value[x] only Expression