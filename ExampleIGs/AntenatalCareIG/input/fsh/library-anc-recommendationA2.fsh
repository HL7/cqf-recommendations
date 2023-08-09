Instance: ANCRecommendationA2
InstanceOf: Library
Usage: #example
Title: "WHO Antenatal Care Guidelines Logic for recommendation #A2"
* insert LibraryMetaData(ANCRecommendationA2)
* description = "Decision Support Logic for use in ANC Recommendation A2"
* useContext
  * code = $usage-context-type#focus
  * valueCodeableConcept = $sct#77386006 "Pregnancy (finding)"
* topic.text = "Pregnancy"
* relatedArtifact[+]
  * type = #documentation
  * display = "WHO guideline for a positive pregnancy experience"
  * url = $anc-positive-pregnancy-experience
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(ANCCommon)
* content.id = "ig-loader-ANCRecommendationA2.cql"