Extension: CPGGoalFor
Id: cpg-goalFor
Title: "CPG Goal For Extension"
Description: "The URL of the PlanDefinition (recommendation, strategy, or pathway) that the goal is related to, or defined in support of."
* insert StructureDefinitionMetadata(cpg-goalFor)
* insert ExtensionContext(Goal)
* value[x] only Canonical(CPGShareablePlanDefinition)