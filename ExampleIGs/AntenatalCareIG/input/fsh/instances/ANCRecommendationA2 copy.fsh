Instance: ANCRecommendationA2
InstanceOf: Library
Usage: #example
* url = "http://fhir.org/guides/who/anc/Library/ANCRecommendationA2"
* identifier
  * use = #official
  * value = "ANCRecommendationA2"
* version = "0.1.0"
* name = "ANCRecommendationA2"
* title = "WHO Antenatal Care Guidelines Logic for recommendation #A2"
* status = #active
* experimental = true
* type = $library-type#logic-library "Logic Library"
* date = "2019-07-28"
* publisher = "World Health Organization (WHO)"
* description = "Decision Support Logic for use in "
* useContext
  * code = $usage-context-type#focus
  * valueCodeableConcept = $sct#77386006 "Pregnant (finding)"
* purpose = "..."
* usage = "..."
* copyright = "© WHO 2019+."
* topic.text = "Pregnancy"
* relatedArtifact[0]
  * type = #documentation
  * display = "WHO guideline for a positive pregnancy experience"
  * url = "https://www.who.int/reproductivehealth/publications/maternal_perinatal_health/anc-positive-pregnancy-experience/en/"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://fhir.org/guides/who/anc/Library/ANCCommon"
* content.id = "ig-loader-ANCRecommendationA2.cql"