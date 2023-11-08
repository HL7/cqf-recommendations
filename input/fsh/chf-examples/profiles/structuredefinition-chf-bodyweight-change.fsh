Profile: CHFBodyWeightChange
Parent: Observation
Id: chf-bodyweight-change
Title: "CHF Body Weight Change"
Description: "This profile defines how to represent body weight change observations in FHIR using a CHF code and UCUM units of measure (in kg)."
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-daily-management)
* insert CaseFeatureOfExtension(chf-bodyweight-change-pd)
* insert CPGExpressionExtensions
* insert CaseFeatureMetadata(chf-bodyweight-change)
* code ^short = "Body Weight Change"
  * ^definition = "Body Weight Change."
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
    * system = Canonical(chf-codes) (exactly)
    * code 1..1
    * code only code
    * code = #body-weight-change (exactly)
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
  * code = #kg/d (exactly)
    * ^short = "kg/d"
    * ^definition = "Kilograms per day"