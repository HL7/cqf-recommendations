Extension: CPGItemImage
Id: cpg-itemImage
Title: "CPG Item Image Extension"
Description: "An image to display as a visual accompaniment to the question being asked."
* insert DefinitionMetadata(cpg-itemImage, StructureDefinition)
* insert ExtensionContext(Questionnaire.item)
* . 0..1
* value[x] only Attachment