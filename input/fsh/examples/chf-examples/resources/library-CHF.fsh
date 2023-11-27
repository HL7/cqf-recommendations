Instance: CHF
InstanceOf: Library
Usage: #example
Title: "Congestive Heart Failure Logic"
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-executablelibrary)
* insert CHFLibraryMetaData(CHF)
* insert RelatedFHIRLibraries
* name = "CHF"
* type = $library-type#logic-library
* description = "Logic for an example congestive heart failure pathway"
* relatedArtifact[+]
  * type = #depends-on
  * resource = $sct
* relatedArtifact[+]
  * type = #depends-on
  * resource = $loinc
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(chf-codes)
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(condition-clinical)
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(condition-ver-status)
* parameter[+]
  * name = #Encounter
  * use = #in
  * min = 0
  * max = "1"
  * type = #Encounter
* parameter[+]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #"Body Weight"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Body Weight Change Assertion"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Daily Body Weight"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Any
* parameter[+]
  * name = #"Daily Body Weight Change"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Any
* parameter[+]
  * name = #"Body Weight Change"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Current Body Weight"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Observation
* parameter[+]
  * name = #"Previous Body Weight"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Observation
* parameter[+]
  * name = #"Current Body Weight Change"
  * use = #out
  * min = 0
  * max = "1"
  * type = #integer
* parameter[+]
  * name = #"Urine Output"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Current Urine Output"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Observation
* parameter[+]
  * name = #"Net Intake/Output"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Current Net Intake/Output"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Observation
* parameter[+]
  * name = #"Jugular Venous Pressure"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Oxygen Saturation"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #Potassium
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #Creatinine
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #eGFR
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Eligibility Criteria"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Condition
* dataRequirement[+]
  * type = #Observation
  * profile = Canonical(Observation)
  * codeFilter
    * path = "code"
    * code = $loinc#29463-7
* dataRequirement[+]
  * type = #Observation
  * profile = Canonical(Observation)
  * codeFilter
    * path = "code"
    * code = CHFCodes#body-weight-change
* dataRequirement[+]
  * type = #Observation
  * profile = Canonical(Observation)
  * codeFilter
    * path = "code"
    * code = $loinc#9192-6
* dataRequirement[+]
  * type = #Observation
  * profile = Canonical(Observation)
  * codeFilter
    * path = "code"
    * code = CHFCodes#net-intake-output
* dataRequirement[+]
  * type = #Observation
  * profile = Canonical(Observation)
  * codeFilter
    * path = "code"
    * code = CHFCodes#jvp
* dataRequirement[+]
  * type = #Observation
  * profile = Canonical(Observation)
  * codeFilter
    * path = "code"
    * code = $loinc#2708-6
* dataRequirement[+]
  * type = #Observation
  * profile = Canonical(Observation)
  * codeFilter
    * path = "code"
    * code = $loinc#86919-8 "Potassium goal [Moles/volume] Serum or Plasma"
* dataRequirement[+]
  * type = #Observation
  * profile = Canonical(Observation)
  * codeFilter
    * path = "code"
    * code = $loinc#39802-4 "Creatinine in dialysis fluid/Creatinine in serum or plasma"
* dataRequirement[+]
  * type = #Observation
  * profile = Canonical(Observation)
  * codeFilter
    * path = "code"
    * code = CHFCodes#egfr
* dataRequirement[+]
  * type = #Condition
  * profile = Canonical(Condition)
* content.id = "ig-loader-CHF.cql"