Profile: CHFUrineOut
Parent: Observation
Id: chf-urine-out
Title: "CHF Urine Out"
Description: "This profile defines how to represent urine output observations in FHIR using a LOINC code and UCUM units of measure (in L/day)."
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-daily-management)
* insert CaseFeatureOfExtension(chf-urine-out-pd)
* insert CaseFeatureMetadataWithPublisher(chf-urine-out)
* code ^short = "Urine output"
  * ^definition = "Urine output over 24 hours, measured in L/day."
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * coding contains UrineOutputCode 1..1
  * coding[UrineOutputCode]
    * system 1..1
    * system only uri
    * system = $loinc (exactly)
    * code 1..1
    * code only code
    * code = #9192-6 (exactly)
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
  * code = #L/d (exactly)
    * ^short = "L/d"
    * ^definition = "Liters per day"