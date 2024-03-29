Extension: CPGCollectWith
Id: cpg-collectWith
Title: "CPG Collect With Extension"
Description: "The URL of the questionnaire to be used to collect the information. If this information is not supplied as part of the activity definition, it is expected to be determined dynamically as part of realizing the activity."
* insert StructureDefinitionMetadata(cpg-collectWith)
* insert ExtensionContext(ActivityDefinition)
* value[x] only Canonical(CPGComputableQuestionnaire)