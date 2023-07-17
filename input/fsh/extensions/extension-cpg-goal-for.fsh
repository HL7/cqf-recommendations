Extension: CPGGoalFor
Id: cpg-goalFor
Title: "CPG Goal For Extension"
Description: "The URL of the PlanDefinition (recommendation, strategy, or pathway) that the goal is related to, or defined in support of."
* insert DefinitionMetadata(cpg-goalFor, StructureDefinition)
* insert ExtensionContext(Goal)
* value[x] only canonical
  * ^type.targetProfile = $cpg-shareableplandefinition