Profile: CHFPotassium
Parent: observation-vitalsigns
Id: chf-potassium
Title: "CHF Potassium"
Description: "This profile defines how to represent potassium observations in FHIR using a standard LOINC code and UCUM units of measure (in meq/L)."
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-hypervolemia)
* insert CaseFeatureOfExtension(chf-potassium-pd)
* insert CaseFeatureMetadataWithPublisher(chf-potassium)
* code ^short = "Potassium"
  * ^definition = "Potassium (in meq/L)."
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * coding contains PotassiumCode 1..1
  * coding[PotassiumCode]
    * system 1..1
    * system only uri
    * system = $loinc (exactly)
    * code 1..1
    * code only code
    * code = #86919-8 (exactly)
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
  * code = #meq/L (exactly)
    * ^short = "%"
    * ^definition = "Percent saturation"