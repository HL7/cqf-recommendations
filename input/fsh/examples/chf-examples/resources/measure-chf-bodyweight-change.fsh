Instance: chf-bodyweight-change-measure
InstanceOf: CPGComputableMetric
Usage: #example
* title = "CHF Body Weight Change Metric"
* insert CHFMeasureMetadata(chf-bodyweight-change-measure)
* name = "CHFBodyWeightChange"
* description = "Body weight change metric as a feature of a congestive heart failure pathway"
* library = Canonical(CHF)
* scoring = $measure-scoring#continuous-variable
* improvementNotation = $measure-improvement-notation#decrease
* group.population
  * code = $measure-population#measure-observation
  * criteria
    * language = #text/cql-identifier
    * expression = "Current Body Weight Change"