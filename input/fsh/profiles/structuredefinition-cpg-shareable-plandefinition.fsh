Profile: CPGShareablePlanDefinition
Parent: $shareableplandefinition
Id: cpg-shareableplandefinition
Description: "Defines the minimum expectations for a shareable plan definition for use with computable guideline content. This profile derives from the ShareablePlanDefinition profile defined in the base FHIR specification, and adds support for declaring knowledge representation level and knowledge artifact capabilities."
* insert DefinitionMetadata(cpg-shareableplandefinition, StructureDefinition)
* extension contains
    $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
    $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS