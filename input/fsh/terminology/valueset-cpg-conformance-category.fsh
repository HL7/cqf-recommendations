ValueSet: CPGConformanceCategoryVS
Id: cpg-conformance-category-vs
Title: "CPG Conformance Category Value Set"
Description: "Categories used to group the conformance statements of this implementation guide."
* insert ValueSetMetadata(cpg-conformance-category-vs)
* ^extension[+].url = $structuredefinition-fmm
* ^extension[=].valueInteger = 2
* include codes from system CPGConformanceCategoryCS
