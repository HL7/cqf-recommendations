Extension: CPGImpressionFor
Id: cpg-impressionFor
Title: "CPG Impression For Extension"
Description: "Specifies a case (episode of care) which this clinical impression is for."
* insert DefinitionMetadata(cpg-impressionFor, StructureDefinition)
* insert ExtensionContext(ClinicalImpression)
// * value[x] only Reference($cpg-case)