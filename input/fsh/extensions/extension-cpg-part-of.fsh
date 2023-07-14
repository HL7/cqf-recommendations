Extension: CPGPartOf
Id: cpg-partOf
Title: "CPG Part Of"
Description: "Specifies the canonical URL of a Pathway or Strategy that this definition is part of."
* insert ExtensionMetadata(cpg-partOf, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "PlanDefinition"
* . 0..1
  * ^short = "Part of pathway"
  * ^definition = "Specifies the canonical URL of a Pathway or Strategy that this definition is part of."
  * ^comment = "For enrollment checking, if the computable PlanDefinition is not a Pathway or Strategy, then this extension is followed to attempt to determine a Pathway or Strategy to use for the enrollment check, recursively."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-partOf" (exactly)
* value[x] only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/PlanDefinition"