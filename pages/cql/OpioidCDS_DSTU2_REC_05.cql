library OpioidCDS_DSTU2_REC_05 version '0.1.0'

using FHIR version '1.0.2'

include OpioidCDSCommonDSTU2 version '0.1.0' called Common

/*
**
** Recommendation #5
**
*/

parameter UserID String
parameter ContextPrescriptions List<MedicationOrder>

context Patient

define "Inclusion Criteria":
  not "Exclusion Criteria"
  and "Total MME" >= 50 'mg/d'

define "Exclusion Criteria":
  Common."End of Life Assessment"
    or Common."Is Context Prescription End of Life Opioid?"(ContextPrescriptions)

define "Total MME":
  Common.TotalMME(ContextPrescriptions union Common."Active Ambulatory Opioid Rx")

define "Get Indicator":
  'warning'

define "Get Summary":
  'High risk for opioid overdose - '
    + case when "Total MME".value >= 90
       then 'taper now'
       else 'consider tapering'
     end

define "Get Detail":
  'Total morphine milligram equivalent (MME) is ' + ToString("Total MME") + '. Taper to less than 50.'
