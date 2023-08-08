Instance: ANCCommon
InstanceOf: Library
Usage: #example
* url = "http://fhir.org/guides/who/anc/Library/ANCCommon"
* identifier
  * use = #official
  * value = "ANCCommon"
* version = "0.1.0"
* name = "ANCCommon"
* title = "WHO Antenatal Care Guidelines Common Logic"
* status = #active
* experimental = true
* type = $library-type#logic-library "Logic Library"
* date = "2019-05-15"
* publisher = "World Health Organization (WHO)"
* description = "Decision Support Logic for use in "
* useContext
  * code = $usage-context-type#focus
  * valueCodeableConcept = $sct#77386006 "Pregnant (finding)"
* purpose = "..."
* usage = "..."
* copyright = "© WHO 2019+."
* topic.text = "Pregnancy"
* relatedArtifact
  * type = #documentation
  * display = "WHO guideline for a positive pregnancy experience"
  * url = "https://www.who.int/reproductivehealth/publications/maternal_perinatal_health/anc-positive-pregnancy-experience/en/"
* content.id = "ig-loader-ANCCommon.cql"