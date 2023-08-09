Instance: anc-summary
InstanceOf: GraphDefinition
Usage: #definition
* insert GraphDefinitionMetadata(anc-summary)
* description = "Example of a Graph Definition based on ANC guidleines"
* name = "ANCSummary"
* start = #Patient
* profile = $anc-patient
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