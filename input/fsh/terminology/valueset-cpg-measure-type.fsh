ValueSet: CPGMeasureTypeVS
Id: cpg-measure-type-vs
Title: "CPG Measure Type Value Set"
Description: "The type of a metric defined as part of a computable clinical practice guideline: the base measure types, plus the compliance and adherence types defined by this implementation guide."
* insert ValueSetMetadata(cpg-measure-type-vs)
* ^extension[+].url = $structuredefinition-fmm
* ^extension[=].valueInteger = 2
* include codes from system $measure-type|4.0.0
* include codes from system CPGMeasureTypeCS
