Instance: chf-urine-out-measure
InstanceOf: CPGComputableMetric
Usage: #example
* title = "CHF Urine Out Metric"
* insert ExampleMeasureMetadata(chf-urine-out-measure)
* name = "CHFUrineOut"
* description = "Urine output metric as a feature of a congestive heart failure pathway"
* library = Canonical(CHF)
* scoring = $measure-scoring#continuous-variable
* improvementNotation = $measure-improvement-notation#decrease
* group.population
  * code = $measure-population#measure-observation
  * criteria
    * language = #text/cql-identifier
    * expression = "Current Urine Output"