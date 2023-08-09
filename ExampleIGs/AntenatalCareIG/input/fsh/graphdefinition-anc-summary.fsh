Instance: anc-summary
InstanceOf: GraphDefinition
Usage: #definition
* description = "Example of a Graph Definition based on ANC guidleines"
* name = "ANCSummary"
* status = #draft
* experimental = true
* start = #Patient
* profile = $anc-patient
* version = "1.0.0"
* link[+]
  * min = 0
  * max = "*"
  * description = "Encounters"
  * target
    * type = #Encounter
    * params = "patient={ref}"
    * profile = $anc-encounter
* link[+]
  * min = 0
  * max = "*"
  * description = "LMP"
  * target
    * type = #Observation
    * params = "patient={ref}"
    * profile = $anc-lmpobservation