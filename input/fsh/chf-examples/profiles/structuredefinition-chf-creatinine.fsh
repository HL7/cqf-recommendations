Profile: CHFCreatinine
Parent: Observation
Id: chf-creatinine
Title: "CHF Creatinine"
Description: "This profile defines how to represent creatinine observations in FHIR using a LOINC code and UCUM units of measure (in mg/dL)."
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-daily-management)
* insert CaseFeatureOfExtension(chf-creatinine-pd)
* insert CaseFeatureMetadataWithPublisher(chf-creatinine)
* code ^short = "Intake/output"
  * ^definition = "Creatinine, measured in mg/dL."
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * coding contains CreatinineCode 1..1
  * coding[CreatinineCode]
    * system 1..1
    * system only uri
    * system = $loinc (exactly)
    * code 1..1
    * code only code
    * code = #39802-4 (exactly)
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
  * code = #mg/dL (exactly)
    * ^short = "mg/dL"
    * ^definition = "Milligrams per deciliter"