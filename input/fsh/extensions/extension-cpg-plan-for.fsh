Extension: CPGPlanFor
Id: cpg-planFor
Title: "CPG Plan For Extension"
Description: "Specifies a case (episode of care) which this care plan is managing."
* insert DefinitionMetadata(cpg-planFor, StructureDefinition)
* insert ExtensionContext(CarePlan)
* .
  * ^comment = "The enrollment may be automatic, prompted, or manual."
// * value[x] only Reference($cpg-case)