Profile: CPGShareableCodeSystem
Parent: $shareablecodesystem
Id: cpg-shareablecodesystem
Title: "CPG Shareable Code System"
Description: "Defines the minimum expectations for a shareable code systems described for use with computable content. This profile derives from the ShareableCodeSystem profile defined in the base FHIR specification, and adds support declaring knowledge representation level and knowledge artifact capabilities."
* insert DefinitionMetadata(cpg-shareablecodesystem, StructureDefinition)
* extension contains
    $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
    $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS