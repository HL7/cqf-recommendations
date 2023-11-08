Profile: CHFBodyWeight
Parent: observation-vitalsigns
Id: chf-bodyweight
Title: "CHF Body Weight"
Description: "This profile defines how to represent body weight observations in FHIR using a standard LOINC code and UCUM units of measure (in kg)."
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-daily-management)
* insert CaseFeatureOfExtension(chf-bodyweight-pd)
* insert CaseFeatureMetadataWithPublisher(chf-bodyweight)
* code ^short = "Body Weight"
  * ^definition = "Body Weight."
  * ^comment = "additional codes that translate or map to this code are allowed.  For example a more granular LOINC code or code that is used locally in a system."
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * coding contains BodyWeightCode 1..1
  * coding[BodyWeightCode]
    * system 1..1
    * system only uri
    * system = $loinc (exactly)
    * code 1..1
    * code only code
    * code = #29463-7 (exactly)
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
  * code = #kg (exactly)
    * ^short = "kg"
    * ^definition = "Kilograms"