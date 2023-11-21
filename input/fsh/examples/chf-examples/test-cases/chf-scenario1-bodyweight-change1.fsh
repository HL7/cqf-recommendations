Instance: chf-scenario1-bodyweight-change1
InstanceOf: MeasureReport
Usage: #example
Description: "CHF Scenario One"
* status = #complete
* type = #individual
* measure = Canonical(chf-bodyweight-change-measure)
* subject = Reference(chf-scenario1-patient)
* date = "2019-02-01"
* period
  * start = "2019-01-31"
  * end = "2019-02-01"
* improvementNotation = $measure-improvement-notation#decrease
* group
  * population
    * code = $measure-population#measure-observation
    * count = 1
  * measureScore = -1.4 'kg/d' "kg/d"
* evaluatedResource[+] = Reference(chf-scenario1-bodyweight1-observation)
* evaluatedResource[+] = Reference(chf-scenario1-bodyweight2-observation)
* evaluatedResource[+] = Reference(chf-scenario1-bodyweight-change1-observation)