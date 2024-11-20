Profile: CHFJVP
Parent: Observation
Id: chf-jvp
Title: "CHF Jugular Venous Pressure"
Description: "This profile defines how to represent jugular venous pressure observations in FHIR using a CHF code and UCUM units of measure (in cmH2O)."
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-hypervolemia)
* insert CaseFeatureOfExtension(chf-jvp-pd)
* insert CaseFeatureMetadata(chf-jvp)
* code ^short = "JVP"
  * ^definition = "Jugular venous pressure, measured in cmH2O."
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * coding contains JVPCode 1..1
  * coding[JVPCode]
    * system 1..1
    * system only uri
    * system = Canonical(chf-example-codes) (exactly)
    * code 1..1
    * code only code
    * code = #jvp (exactly)
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
  * code = #cm[H2O] (exactly)
    * ^short = "cmH2O"
    * ^definition = "Centimeters of H2O"