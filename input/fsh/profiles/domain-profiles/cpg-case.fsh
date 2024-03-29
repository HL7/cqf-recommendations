Profile: CPGCase
Parent: EpisodeOfCare
Id: cpg-case
Title: "CPG Case"
Description: "CPG case represents a specific case of a patient enrolled in a particular pathway. The enrollment may have been automatic, prompted, or manual."
* insert StructureDefinitionMetadata(cpg-case)
* extension contains $cpg-enrolledIn named enrolledIn 0..* MS
* type from $episodeofcare-type (preferred)
  * ^binding.description = "Expresses the type of an episode of care"
* diagnosis 1..*
  * condition only Reference(CPGCondition)
* patient only Reference(CPGPatient)
* period MS