Extension: CPGAnswerValueSetSource
Id: cpg-answerValueSetSource
Title: "CPG Answer Value Set Source"
Description: "The canonical URL for the source value set for the answer options, when those options are provided directly in the questionnaire."
* insert DefinitionMetadata(cpg-answerValueSetSource, StructureDefinition)
* ^purpose = "Need to be able to identify the source value set for the answer options."
* ^context.type = #element
* ^context.expression = "Questionnaire.item"
* . 0..1
  * ^short = "Source value set"
  * ^definition = "The canonical URL for the source value set for the answer options, when those options are provided directly in the questionnaire."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-answerValueSetSource" (exactly)
* value[x] only canonical