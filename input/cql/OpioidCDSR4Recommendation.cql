library OpioidCDSR4Recommendation05 version '0.1.0'

using FHIR version '4.0.0'

include OpioidCDSR4Common version '0.1.0' called Common

/*
**
** Recommendation #5
**
*/

/*
  Plan Definition:
	http://build.fhir.org/ig/cqframework/opioid-cds/PlanDefinition-opioidcds-r4-recommendation-05.html
*/

parameter ContextPrescriptions List<MedicationRequest>

context Patient

define "Inclusion Criteria":
  AgeInYears() >= 18
    and not "Exclusion Criteria"
    and "Total MME" >= 50 'mg/d'

define "Exclusion Criteria":
  Common."End of Life Assessment"

define "Total MME":
  Common.TotalMME(ContextPrescriptions union Common."Active Ambulatory Opioid Rx")

define "Taper Now": "Total MME".value >= 90

define "Consider Tapering": "Total MME".value < 90

define "Get Indicator":
  if "Inclusion Criteria"
    then 'warning'
  else null

define "Get Summary":
  if "Inclusion Criteria"
    then
      'High risk for opioid overdose - '
        + case when "Taper Now"
           then 'taper now'
           else 'consider tapering'
         end
  else null

define "Get Detail":
  if "Inclusion Criteria"
    then'Total morphine milligram equivalent (MME) is ' + ToString("Total MME") + '. Taper to less than 50.'
  else null
