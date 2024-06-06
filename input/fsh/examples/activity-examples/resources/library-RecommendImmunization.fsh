Instance: recommendimmunization-library
InstanceOf: Library
Usage: #example
* title = "Recommend Immunization"
* insert ExampleLibraryMetadata(recommendimmunization-library)
* insert RelatedFHIRLibraries
* description = "Logic for an example recommendation to recommend an immunization"
* name = "RecommendImmunization"
* type = $library-type#logic-library
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(ImmunizationRecommendationStatusCodes)
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
  * profile = Canonical(Immunization)
* dataRequirement[+]
  * type = #Immunization
  * profile = Canonical(Immunization)
* dataRequirement[+]
  * type = #ImmunizationRecommendation
  * profile = Canonical(ImmunizationRecommendation)
* dataRequirement[+]
  * type = #ImmunizationRecommendation
  * profile = Canonical(ImmunizationRecommendation)
* content
  * id = "ig-loader-RecommendImmunization.cql"
