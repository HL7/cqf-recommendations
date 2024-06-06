Instance: activity-example-generatereport-measure
InstanceOf: CPGComputableMetric
Usage: #example
* insert Profile(cpg-computablemetric)
* insert ExampleMeasureMetadata(activity-example-generatereport-measure)
* description = "Example measure for the activity example to generate a report"
* title = "Activity Example Generate Report Measure"
* name = "ActivityExampleGenerateReportMeasure"
* scoring = $measure-scoring#continuous-variable
* improvementNotation = $measure-improvement-notation#increase
* date = "2023-10-19"
* group
  * population
    * code = $measure-population#measure-observation
    * criteria
      * language = #text/cql
      * description = "Example expression returns 100"
      * expression = "100"