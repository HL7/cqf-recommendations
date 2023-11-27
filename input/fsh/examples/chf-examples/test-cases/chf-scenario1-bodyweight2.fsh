Instance: chf-scenario1-bodyweight2
InstanceOf: MeasureReport
Usage: #example
Description: "CHF Scenario One"
* status = #complete
* type = #individual
* measure = Canonical(chf-bodyweight-measure)
* subject = Reference(chf-scenario1-patient)
* date = "2019-02-01"
* period
  * start = "2019-02-01"
  * end = "2019-02-01"
* improvementNotation = $measure-improvement-notation#decrease
* group
  * population
    * code = $measure-population#measure-observation
    * count = 1
  * measureScore = 95.4 'kg' "kg"
* evaluatedResource = Reference(chf-scenario1-bodyweight2-observation)