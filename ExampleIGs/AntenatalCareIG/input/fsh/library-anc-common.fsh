Instance: ANCCommon
InstanceOf: Library
Usage: #example
Title: "WHO Antenatal Care Guidelines Common Logic"
* insert LibraryMetaData(ANCCommon)
* description = "Decision Support Logic for use in WHO Antenatal Care Guidelines"
* useContext
  * code = $usage-context-type#focus
  * valueCodeableConcept = $sct#77386006 "Pregnancy (finding)"
* topic.text = "Pregnancy"
* relatedArtifact
  * type = #documentation
  * display = "WHO guideline for a positive pregnancy experience"
  * url = $anc-positive-pregnancy-experience
* content.id = "ig-loader-ANCCommon.cql"