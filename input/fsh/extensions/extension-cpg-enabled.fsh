Extension: CPGEnabled
Id: cpg-enabled
Title: "CPG Enabled"
Description: "Determines whether the artifact on which it appears is Enabled, as opposed to just Known."
* insert ExtensionMetadata(cpg-enabled, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..1
  * ^short = "Enabled?"
  * ^definition = "Determines whether the artifact on which it appears is Enabled, as opposed to just Known."
  * ^comment = "Systems that are capable of storing and retrieving knowledge artifacts SHALL use this element to distinguish between a Known and an actively Enabled artifact. Behavior described by the artifact should only be implemented if this element is present and has a value of true."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enabled" (exactly)
* value[x] only boolean