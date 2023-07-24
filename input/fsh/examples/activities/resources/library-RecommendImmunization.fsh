Instance: RecommendImmunization
InstanceOf: Library
Usage: #example
Description: "Logic for an example recommendation to recommend an immunization"
* insert ProfileMeta(cpg-computablelibrary)
* insert ProfileMeta(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata()
* name = "RecommendImmunization"
* title = "Recommend Immunization"
* type = $library-type#logic-library
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIRHelpers|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status"
* parameter[+]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #"Inclusion Criteria"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Active or Completed Immunization"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Immunization
* parameter[+]
  * name = #"Immunization Not Done"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Immunization
* parameter[+]
  * name = #"Immunization Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #ImmunizationRecommendation
* parameter[+]
  * name = #"Immunization Not Proposed"
  * use = #out
  * min = 0
  * max = "*"
  * type = #ImmunizationRecommendation
* parameter[+]
  * name = #"Is Recommendation Applicable"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* dataRequirement[+]
  * type = #Immunization
  * profile = "http://hl7.org/fhir/StructureDefinition/Immunization"
* dataRequirement[+]
  * type = #Immunization
  * profile = "http://hl7.org/fhir/StructureDefinition/Immunization"
* dataRequirement[+]
  * type = #ImmunizationRecommendation
  * profile = "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation"
* dataRequirement[+]
  * type = #ImmunizationRecommendation
  * profile = "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation"
* content
  * id = "ig-loader-RecommendImmunization.cql"
