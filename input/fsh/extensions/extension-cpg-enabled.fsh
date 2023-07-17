Extension: CPGEnabled
Id: cpg-enabled
Title: "CPG Enabled Extension"
Description: "Determines whether the artifact on which it appears is Enabled, as opposed to just Known."
* insert DefinitionMetadata(cpg-enabled, StructureDefinition)
* . 0..1
  * ^comment = "Systems that are capable of storing and retrieving knowledge artifacts SHALL use this element to distinguish between a Known and an actively Enabled artifact. Behavior described by the artifact should only be implemented if this element is present and has a value of true."
* value[x] only boolean