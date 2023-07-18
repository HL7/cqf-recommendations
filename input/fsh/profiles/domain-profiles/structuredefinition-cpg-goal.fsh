Profile: CPGGoal
Parent: Goal
Id: cpg-goal
Title: "CPG Goal"
Description: "Defines the expectations for the representation of goals used in computable guidelines"
* insert StructureDefinitionMetadata(cpg-goal)
* extension contains $cpg-goalFor named goalFor 0..* MS
* identifier MS
* lifecycleStatus MS
* achievementStatus MS
* category MS
* priority MS
* description MS
* subject MS
* start[x] MS
* target MS
  * measure MS
  * detail[x] MS