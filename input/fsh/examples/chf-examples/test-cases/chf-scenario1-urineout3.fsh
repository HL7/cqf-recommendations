Instance: chf-scenario1-urineout3
InstanceOf: MeasureReport
Usage: #example
Description: "CHF Scenario One"
* status = #complete
* type = #individual
* measure = Canonical(chf-urine-out-measure)
* subject = Reference(chf-scenario1-patient)
* date = "2019-02-03"
* period
  * start = "2019-02-02"
  * end = "2019-02-03"
* improvementNotation = $measure-improvement-notation#decrease
* group
  * population
    * code = $measure-population#measure-observation
    * count = 1
  * measureScore = 3.8 'L/d' "L/day"
* evaluatedResource = Reference(chf-scenario1-urineout3-observation)