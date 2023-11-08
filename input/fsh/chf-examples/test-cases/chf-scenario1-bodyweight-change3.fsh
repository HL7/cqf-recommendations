Instance: chf-scenario1-bodyweight-change3
InstanceOf: MeasureReport
Usage: #example
Description: "CHF Scenario One"
* status = #complete
* type = #individual
* measure = Canonical(chf-bodyweight-change-measure)
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
  * measureScore = -1.2 'kg/d' "kg/d"
* evaluatedResource[+] = Reference(chf-scenario1-bodyweight3-observation)
* evaluatedResource[+] = Reference(chf-scenario1-bodyweight4-observation)
* evaluatedResource[+] = Reference(chf-scenario1-bodyweight-change3-observation)