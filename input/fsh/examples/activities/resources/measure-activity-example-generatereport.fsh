Instance: activity-example-generatereport-measure
InstanceOf: Measure
Usage: #example
Title: "Activity Example Generate Report Measure"
* description = "Example measure for the activity example to generate a report"
* insert KnowledgeArtifactMetadata(activity-example-generatereport-measure, Measure)
* name = "ActivityExampleGenerateReportMeasure"
* description = "Example measure for the activity example to generate a report"
* scoring = $measure-scoring#continuous-variable
* improvementNotation = $measure-improvement-notation#increase
* group
  * population
    * code = $measure-population#measure-observation
    * criteria
      * language = #text/cql
      * description = "Example expression returns 100"
      * expression = "100"