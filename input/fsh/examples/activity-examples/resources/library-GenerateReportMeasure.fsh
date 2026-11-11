Instance: GenerateReportMeasure
InstanceOf: Library
Usage: #example
Title: "Generate Report Example Measure Logic"
* insert ExampleLibraryMetadata(GenerateReportMeasure)
* version = "1.0.0"
* name = "GenerateReportMeasure"
* type = $library-type#logic-library
* description = "Scoring logic for the Generate Report example measure"
* parameter[+]
  * name = #"Report Score"
  * use = #out
  * min = 0
  * max = "1"
  * type = #integer
* content.id = "ig-loader-GenerateReportMeasure.cql"
