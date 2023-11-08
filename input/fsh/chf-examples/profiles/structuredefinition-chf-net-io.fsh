Profile: CHFNetIO
Parent: Observation
Id: chf-net-io
Title: "CHF Net Intake/Output"
Description: "This profile defines how to represent net intake/output observations in FHIR using a CHF code and UCUM units of measure (in L/day)."
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-daily-management)
* insert CaseFeatureOfExtension(chf-net-io-pd)
* insert CaseFeatureMetadata(chf-net-io)
* code ^short = "Intake/output"
  * ^definition = "Intake/output over 24 hours, measured in L/day."
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * coding contains NetIOCode 1..1
  * coding[NetIOCode]
    * system 1..1
    * system only uri
    * system = Canonical(chf-codes) (exactly)
    * code 1..1
    * code only code
    * code = #net-intake-output (exactly)
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