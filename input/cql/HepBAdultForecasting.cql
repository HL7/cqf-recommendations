/*
  This example describes the logic of the Hepatitis B (Hep B) immunization schedule for adults who are 18 years or older and have not yet been vaccinated for Hep B.
  It is provided for demonstration purposes and not intended to be a complete representation of all of the Hep B immunization schedule logic.
  See accompanying documentation for additional details and references.
*/
library HepBAdultForecasting version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1' called FHIRHelpers

codesystem CVX: 'http://hl7.org/fhir/sid/cvx'
codesystem "Immunization Evaluation Dose Status codes": 'http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status'

// Valuesets
valueset "All Hep B Vaccines": 'http://example.org/fhir/uv/cpg/ValueSet/all-hepb-vaccines'


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

// Concept
concept "Hep B Vaccine, Adjuvanted": { "Hep B Vaccine Code, Adjuvanted" }


context Patient

define "Patient Hep B Immunization History should be Evaluated in Adult Series":
  "Patient is 18 Years Minus 4 Days or Older" and "No Hep B Shots were Administered before 18 Years minus 4 Days of Age"
  or
  "There Exists a Valid First Hep B Adjuvanted Dose"
  or
  "There Exists a Valid Second Hep B Adjuvanted Dose"

define "Patient is 18 Years Minus 4 Days or Older":
  AgeInDays() >= "Age in Days when Patient is 18 Years minus 4 Days"

define "No Hep B Shots were Administered before 18 Years minus 4 Days of Age":
  not exists([Immunization: vaccineCode in "All Hep B Vaccines"] NI
    where NI.occurrence is date and AgeInDaysAt(NI.occurrence.value) < "Age in Days when Patient is 18 Years minus 4 Days"
  )

////////////////////////////////////////////////////////
// Recommendation/Forecast
////////////////////////////////////////////////////////
define "Get Recommendation Overview":
  'Immunization Forecast of Hepatitis B, Adjuvanted Vaccine for Adults 18 Years of Age or Older'

define "Get Recommendation Detail":
  case
    when "A Forecast for Hep B Adult Dose 1 Should be Made"
      then 'Dose 1 of the Hepatitus B, adjuvanted vaccine (CVX 189) is recommended to be administered on ' + ToString(PatientBirthDate + 18 years) + '.'
    when "A Forecast for Hep B Adult Dose 2 Should be Made"
      then 'Dose 2 of the Hepatitis B, adjuvanted vaccine (CVX 189) is recommended to be administered on ' + ToString("Most Recent Hep B Adjuvanted Administration Date" + 28 days) + '.'
    when "Patient has Completed the Hep B Adult Series"
      then 'The patient has already received 2 doses of the Hepatitis B, adjuvanted vaccine (CVX 189), and has completed the series. No additional doses are recommeneded at this time.'
    else
      'A forecast could not be determined at this time.'
  end

define "A Forecast for Hep B Adult Dose 1 Should be Made":
  if
    "Patient Hep B Immunization History should be Evaluated in Adult Series" and "There Exists a Valid First Hep B Adjuvanted Dose" = false
  then
    true
  else
    false

define "A Forecast for Hep B Adult Dose 2 Should be Made":
  "There Exists a Valid First Hep B Adjuvanted Dose" = true and "There Exists a Valid Second Hep B Adjuvanted Dose" = false

define "Patient has Completed the Hep B Adult Series":
  "There Exists a Valid First Hep B Adjuvanted Dose" = true and "There Exists a Valid Second Hep B Adjuvanted Dose" = true


////////////////////////////////////////////////////////
// Evaluation
////////////////////////////////////////////////////////
define "Hep B Vaccine, Adjuvanted Immunization":
  [Immunization: vaccineCode in "Hep B Vaccine, Adjuvanted"]

define "Most Recent Hep B Adjuvanted Administration Date":
  First(
    "Hep B Vaccine, Adjuvanted Immunization" I
      without "Hep B Vaccine, Adjuvanted Immunization" NI
        such that I.occurrence.value is DateTime and NI.occurrence.value is DateTime and NI.occurrence.value after I.occurrence.value
      where I.occurrence.value is DateTime
      return I.occurrence.value
  )

define "There Exists a Valid First Hep B Adjuvanted Dose":
  if "First Valid Hep B Adjuvanted Adult Dose" != null
    then
      true
  else
    false

define "First Valid Hep B Adjuvanted Adult Dose":
  First(
    "Hep B Vaccine, Adjuvanted Immunization" I
      without "Hep B Vaccine, Adjuvanted Immunization" NI
        such that I.occurrence.value is DateTime and AgeInDaysAt(I.occurrence.value) >= "Age in Days when Patient is 18 Years minus 4 Days"
          and NI.occurrence.value is DateTime and NI.occurrence.value before I.occurrence.value
      where I.occurrence.value is DateTime
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
         "Hep B Vaccine, Adjuvanted Immunization" I
          let firstDoseDate: "First Valid Hep B Adjuvanted Adult Dose".occurrence
          without "Hep B Vaccine, Adjuvanted Immunization" NI
            // where the date is at least 24 days after the most recent shot of Hep B Adjuvant
            such that NI.occurrence.value is DateTime and NI.occurrence.value after firstDoseDate.value and NI.occurrence.value before I.occurrence.value
          where I.occurrence.value is DateTime and I.occurrence.value 24 days or more after firstDoseDate.value
        )
    else
      null

define PatientBirthDate:
  Patient.birthDate.value

define "Age in Days when Patient is 18 Years minus 4 Days":
  CalculateAgeInDaysAt(PatientBirthDate, PatientBirthDate + 18 years - 4 days)
