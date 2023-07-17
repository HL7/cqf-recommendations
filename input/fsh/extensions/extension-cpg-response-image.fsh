
Extension: CPGResponseImage
Id: cpg-responseImage
Title: "CPG Response Image"
Description: "An image to display as a visual accompaniment to the response."
* insert DefinitionMetadata(cpg-responseImage, StructureDefinition)
* ^purpose = "Need to be able to provide a visual representation of the response to the question being asked."
* ^context.type = #element
* ^context.expression = "Questionnaire.item.answerOption"
* . 0..1
  * ^short = "Image to display"
  * ^definition = "An image to display as a visual accompaniment to the response."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-responseImage" (exactly)
* value[x] only Attachment