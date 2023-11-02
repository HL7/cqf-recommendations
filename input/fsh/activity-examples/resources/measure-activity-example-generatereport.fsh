Instance: activity-example-generatereport-measure
InstanceOf: CPGPublishableMetric
Usage: #example
* insert Profile(cpg-computablemetric)
* insert Profile(cpg-shareablemetric)
* insert Profile(cpg-publishablemetric)
* insert Profile(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(activity-example-generatereport-measure, Measure)
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