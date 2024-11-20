Profile: CHFEGFR
Parent: Observation
Id: chf-egfr
Title: "CHF eGFR"
Description: "This profile defines how to represent eGFR in FHIR using a CHF code and UCUM units of measure (in mol/mm/m2)."
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-hypervolemia)
* insert CaseFeatureOfExtension(chf-egfr-pd)
* insert CaseFeatureMetadata(chf-egfr)
* code ^short = "eGFR"
  * ^definition = "eGFR, measured in mol/mm/m2."
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * coding contains eGFRCode 1..1
  * coding[eGFRCode]
    * system 1..1
    * system only uri
    * system = Canonical(chf-example-codes) (exactly)
    * code 1..1
    * code only code
    * code = #egfr (exactly)
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
  * code = #mol/mm/m2 (exactly)
    * ^short = "mol/mm/m2"
    * ^definition = "Moles per millimeter per meter squared"