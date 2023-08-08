Instance: anc-summary
InstanceOf: GraphDefinition
Usage: #definition
* name = "ANCSummary"
* status = #draft
* experimental = true
* start = #Patient
* profile = "http://http://fhir.org/guides/who/anc-cds/ancpatient"
* link[0]
  * min = 0
  * max = "*"
  * description = "Encounters"
  * target
    * type = #Encounter
    * params = "patient={ref}"
    * profile = "http://fhir.org/guides/who/anc-cds/ancencounter"
* link[+]
  * min = 0
  * max = "*"
  * description = "LMP"
  * target
    * type = #Observation
    * params = "patient={ref}"
    * profile = "http://fhir.org/guides/who/anc-cds/StructureDefinition/lmpobservation"