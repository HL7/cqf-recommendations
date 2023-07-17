Profile: CPGShareableActivityDefinition
Parent: $shareableactivitydefinition
Id: cpg-shareableactivitydefinition
Title: "CPG Shareable Activity Definition"
Description: "Defines the minimum expectations for a shareable activity definition for use with computable guideline content. This profile derives from the ShareableActivityDefinition profile defined in the base FHIR specification, and adds support for declaring knowledge representation level and knowledge artifact capabilities."
* insert DefinitionMetadata(cpg-shareableactivitydefinition, StructureDefinition)
* extension contains
    $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
    $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS