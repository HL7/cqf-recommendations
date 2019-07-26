library HepBAdultForecasting version '0.1.0'

using FHIR version '4.0.0'

include FHIRHelpers version '4.0.0' called FHIRHelpers

codesystem CVX: 'http://hl7.org/fhir/sid/cvx'
codesystem "Immunization Evaluation Dose Status codes": 'http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status'

// Valuesets
valueset "All Hep B Vaccines": 'http://fhir.org/guides/cdc/cqlf-recommendations/ValueSet/all-hepb-vaccines'


// Hep B Vaccine Codes
code "DTaP-IPV-Hib-Hep B, historical": '132' from "CVX"
code "DTaP, IPV, Hib, Hep B": '146' from "CVX"
code "DTaP-Hep B-IPV": '110' from "CVX"
code "DTP-Hib-Hep B": '102' from "CVX"
code "Hep A-Hep B": '104' from "CVX"
code "Hep B, adolescent/high risk infant": '42' from "CVX"
code "Hep B, adult": '43' from "CVX"
code "Hep B, dialysis": '44' from "CVX"
code "Hep B, unspecified formulation": '45' from "CVX"
code "Hep B Vaccine Code, Adjuvanted": '189' from "CVX"
code "Hib-Hep B": '51' from "CVX"

// Evaluation Status Code
code "Valid Evaluation Status": 'valid' from "Immunization Evaluation Dose Status codes"

// Concepts
//concept "All Hep B Vaccines": { "Hep B Vaccine Code, Adjuvanted", "Hep B, adolescent/high risk infant", "Hep B, adult", "Hep B, dialysis", "Hep B, unspecified formulation",
//  "Hib-Hep B", "DTaP-Hep B-IPV", "Hep A-Hep B", "DTP-Hib-Hep B", "DTaP-IPV-Hib-Hep B, historical", "DTaP, IPV, Hib, Hep B"  } display 'Hep B Vaccine'
concept "Hep B Vaccine, Adjuvanted": { "Hep B Vaccine Code, Adjuvanted" }


context Patient

define "Patient Immunization History should be Evaluated in Adult Series":
  "Patient is 18 Years Minus 4 Days or Older" and "No Hep B Shots were Administered before 18 Years minus 4 Days of Age"
  or
  "There Exists a Valid First Hep B Adjuvanted Dose"
  or
  "There Exists a Valid Second Hep B Adjuvanted Dose"

define "Patient is 18 Years Minus 4 Days or Older":
  exists([Patient] p
    where AgeInDays() >= "Age in Days when Patient is 18 Years minus 4 Days")

define "No Hep B Shots were Administered before 18 Years minus 4 Days of Age":
  not exists([Immunization: vaccineCode in "All Hep B Vaccines"] NI
    where NI.occurrence is date and AgeInDaysAt(NI.occurrence.value) < "Age in Days when Patient is 18 Years minus 4 Days"
  )

//////////////
// Recommendation/Forecast
//////////////
define "Recommendation Tuple":
  Tuple { Status: 'Recommended', Vaccine: 'Hep B, Adjuvanted', Date: ConvertsToString(@2019-01-01) }

define "Is there a Hep B Adult Recommendation?":
  "A Forecast for Hep B Adult Dose 1 Should be Made" or "A Forecast for Hep B Adult Dose 2 Should be Made"

define "A Forecast for Hep B Adult Dose 1 Should be Made":
  if
    "Patient Immunization History should be Evaluated in Adult Series" and "There Exists a Valid First Hep B Adjuvanted Dose" = false
  then
    true
  else
    false

define "A Forecast for Hep B Adult Dose 2 Should be Made":
  "There Exists a Valid First Hep B Adjuvanted Dose" = true and "There Exists a Valid Second Hep B Adjuvanted Dose" = false

define "Patient has Completed the Hep B Adult Series":
  "There Exists a Valid First Hep B Adjuvanted Dose" = true and "There Exists a Valid Second Hep B Adjuvanted Dose" = true

//////////////
// Evaluation
//////////////
define "There Exists a Valid First Hep B Adjuvanted Dose":
  if "First Valid Hep B Adjuvanted Adult Dose" != null
    then
      true
  else
    false

define "First Valid Hep B Adjuvanted Adult Dose":
  First(
    [Immunization: vaccineCode in "Hep B Vaccine, Adjuvanted"] I
      without [Immunization: vaccineCode in "Hep B Vaccine, Adjuvanted"] NI
        such that I.occurrence is date and AgeInDaysAt(I.occurrence.value) >= "Age in Days when Patient is 18 Years minus 4 Days"
          and NI.occurrence is date and NI.occurrence.value before I.occurrence.value
  )

define "There Exists a Valid Second Hep B Adjuvanted Dose":
  if "There Exists a Valid First Hep B Adjuvanted Dose"
    then
      true
  else
    false

define "Second Valid Hep B Adjuvanted Adult Dose":
  if "There Exists a Valid First Hep B Adjuvanted Dose"
    then
      First(
        [Immunization: vaccineCode in "Hep B Vaccine, Adjuvanted"] I
          let firstDoseDate: "First Valid Hep B Adjuvanted Adult Dose".occurrence
          without [Immunization: vaccineCode in "Hep B Vaccine, Adjuvanted"] NI
            // where the date is at least 24 days after the most recent shot of Hep B Adjuvant
            such that NI.occurrence is date and NI.occurrence.value after firstDoseDate.value and NI.occurrence.value before I.occurrence.value
          where I.occurrence is date and I.occurrence.value 24 days or more after firstDoseDate.value
        )
    else
      null

define "Age in Days when Patient is 18 Years minus 4 Days":
  First([Patient] p
    return
      CalculateAgeInDaysAt(p.birthDate.value, p.birthDate.value + 18 years - 4 days)
  )
