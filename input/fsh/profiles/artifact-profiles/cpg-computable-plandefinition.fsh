Profile: CPGComputablePlanDefinition
Parent: PlanDefinition
Id: cpg-computableplandefinition
Title: "CPG Computable Plan Definition"
Description: "Defines the minimum expectations and behavior for a computable plan definition"
* insert StructureDefinitionMetadata(cpg-computableplandefinition)
* extension contains
  $cpg-enabled named enabled 0..1 MS and
  $cpg-partOf named partOf 0..1 MS
* type 1..1 MS
* subject[x] MS
* library 0..1 MS
* action 1..* MS
* action
  * extension contains
    $cqf-strengthOfRecommendation named strengthOfRecommendation 0..1 MS and
    $cpg-directionOfRecommendation named directionOfRecommendation 0..1 MS and
    $cqf-qualityOfEvidence named qualityOfEvidence 0..1 MS and
    $cpg-rating named rating 0..1 MS and
    $cqf-applicabilityBehavior named applicabilityBehavior 0..1 MS
  * extension[applicabilityBehavior] ^comment = "For an action with child actions, indicates whether the child actions are evaluated independently (all), or evaluated in order with the first applicable action being performed (any)."
  * prefix MS
  * title MS
  * description MS
  * code MS
  * reason MS
  * documentation MS
  * trigger MS
  * condition MS
  * timing[x] MS
  * participant MS
    * role MS
    * role from CPGCommonPersonaVS (preferred)
      * ^binding.description = "Personas used in identifying participants and their roles in computable content"
  * type MS
  * definition[x] MS
  * dynamicValue MS
  * dynamicValue
    * path MS
    * expression MS
  * action MS