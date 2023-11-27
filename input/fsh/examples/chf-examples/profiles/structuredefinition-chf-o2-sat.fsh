Profile: CHFO2Sat
Parent: observation-vitalsigns
Id: chf-o2-sat
Title: "CHF Oxygen Saturation"
Description: "This profile defines how to represent oxygen saturation observations in FHIR using a standard LOINC code and UCUM units of measure."
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-hypervolemia)
* insert CaseFeatureOfExtension(chf-o2-sat-pd)
* insert CaseFeatureMetadata(chf-o2-sat)
* code ^short = "O2 Sat"
  * ^definition = "Oxygen Saturation."
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * coding contains O2SatCode 1..1
  * coding[O2SatCode]
    * system 1..1
    * system only uri
    * system = $loinc (exactly)
    * code 1..1
    * code only code
    * code = #2708-6 (exactly)
* valueQuantity
  * value 1..1 MS
  * value only decimal
  * unit 1..1 MS
  * unit only string
  * system 1..1 MS
  * system only uri
  * system = $unitsofmeasure (exactly)
  * code 1..1
  * code only code
  * code = #% (exactly)
    * ^short = "%"
    * ^definition = "Percent saturation"