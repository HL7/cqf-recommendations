Instance: chf-bodyweight-measure
InstanceOf: CPGComputableMetric
Usage: #example
* title = "CHF Body Weight Metric"
* insert ExampleMeasureMetadata(chf-bodyweight-measure)
* name = "CHFBodyWeight"
* description = "Body weight metric as a feature of a congestive heart failure pathway"
* library = Canonical(CHF)
* scoring = $measure-scoring#continuous-variable
* improvementNotation = $measure-improvement-notation#decrease
* group.population
  * code = $measure-population#measure-observation
  * criteria
    * language = #text/cql-identifier
    * expression = "Current Body Weight"