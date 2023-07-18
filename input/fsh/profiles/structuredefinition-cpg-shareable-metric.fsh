Profile: CPGShareableMetric
Parent: $shareablemeasure
Id: cpg-shareablemetric
Title: "CPG Shareable Metric"
Description: "Defines the minimum expectations for a shareable metric definition described for use with computable content. This profile derives from the ShareableMeasure profile defined in the base FHIR specification, and adds support declaring knowledge representation level and knowledge artifact capabilities."
* insert StructureDefinitionMetadata(cpg-shareablemetric)
* extension contains
  $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
  $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS