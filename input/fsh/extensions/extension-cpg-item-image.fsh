Extension: CPGItemImage
Id: cpg-itemImage
Title: "CPG Item Image"
Description: "An image to display as a visual accompaniment to the question being asked."
* insert DefinitionMetadata(cpg-itemImage, StructureDefinition)
* ^date = "2019-06-06"
* ^purpose = "Need to be able to provide a visual representation of the question being asked."
* ^context.type = #element
* ^context.expression = "Questionnaire.item"
* . 0..1
  * ^short = "Image to display"
  * ^definition = "An image to display as a visual accompaniment to the question being asked."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-itemImage" (exactly)
* value[x] only Attachment