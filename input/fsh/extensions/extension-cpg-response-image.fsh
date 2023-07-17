
Extension: CPGResponseImage
Id: cpg-responseImage
Title: "CPG Response Image Extension"
Description: "An image to display as a visual accompaniment to the response."
* insert DefinitionMetadata(cpg-responseImage, StructureDefinition)
* insert ExtensionContext(Questionnaire.item.answerOption)
* . 0..1
* value[x] only Attachment