Profile: CPGEncounter
Parent: Encounter
Id: cpg-encounter
Title: "CPG Encounter"
Description: "CPG encounter represents the minimum expectations for communicating encounter information as part of a CPG case"
* insert StructureDefinitionMetadata(cpg-encounter)
* status MS
* class MS
* type 1..* MS
* subject only Reference(CPGPatient)
* subject MS
* episodeOfCare only Reference(CPGCase)
* episodeOfCare MS
* participant MS
* participant
  * type MS
  * period MS
  * individual only Reference(CPGPractitioner or CPGPractitionerRole)
  * individual MS
* period MS
* reasonCode MS
* location MS
* location
  * location only Reference($cpg-location)
  * location MS