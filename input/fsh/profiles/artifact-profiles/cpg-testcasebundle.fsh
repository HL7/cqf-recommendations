Profile: CPGTestCaseBundle
Parent: Bundle
Id: cpg-testcasebundle
Title: "CPG Test Case Bundle"
Description: "The CPG Test Case Bundle Profile describes a shareable, published test case for a specific artifact"
* insert StructureDefinitionMetadata(cpg-testcasebundle)
* type only code
* type = #collection (exactly)
* type MS
  * ^short = "The bundle is a collection of artifacts for distribution"
* entry 1..* MS
  * ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains
    expectedGuidanceResponse 0..1 MS and
    expectedMeasureReport 0..1 MS
* entry[expectedGuidanceResponse]
  ^short = "Expected guidance response or measure result"
  * resource 1..1 MS
  * resource only GuidanceResponse
* entry[expectedMeasureReport]
  ^short = "Expected guidance response or measure result"
  * resource 1..1 MS
  * resource only MeasureReport