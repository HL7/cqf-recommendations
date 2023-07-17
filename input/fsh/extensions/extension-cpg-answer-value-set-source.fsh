Extension: CPGAnswerValueSetSource
Id: cpg-answerValueSetSource
Title: "CPG Answer Value Set Source Extension"
Description: "The canonical URL for the source value set for the answer options, when those options are provided directly in the questionnaire."
* insert DefinitionMetadata(cpg-answerValueSetSource, StructureDefinition)
* insert ExtensionContext(Questionnaire.item)
* . 0..1
* value[x] only canonical