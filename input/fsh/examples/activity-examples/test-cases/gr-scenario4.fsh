Instance: gr-scenario4
InstanceOf: MeasureReport
Usage: #example
Description: "Example test case"
* status = #complete
* type = #individual
* measure = Canonical(activity-example-generatereport-measure)
* subject = Reference(gr-scenario4-patient)
* date = "2020-01-15"
* period
  * start = "2020-01-15"
  * end = "2020-01-15"
* improvementNotation = $measure-improvement-notation#increase
* group
  * population
    * code = $measure-population#measure-observation
    * count = 1
  * measureScore.value = 100