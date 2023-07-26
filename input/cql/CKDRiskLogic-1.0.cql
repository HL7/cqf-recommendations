library CKDRiskLogic version '1.0'

using FHIR version '4.0.0'

include FHIRHelpers version '4.0.0' called FHIRHelpers

codesystem "SNOMEDCT": 'http://snomed.info/sct'
codesystem "LOINC": 'http://loinc.org'
codesystem "RxNorm": 'http://www.nlm.nih.gov/research/umls/rxnorm'

valueset "Chronic Kidney Disease": 'ckd-valueset-ckd'
valueset "Diabetes mellitus": 'ckd-valueset-diabetes'

valueset "eGFR Labs": 'ckd-valueset-egfr'
valueset "UACR Labs": 'ckd-valueset-uacr'
valueset "Creatinine Labs": 'ckd-valueset-creatinine'

code "Blood pressure systolic and diastolic": '55284-4' from "LOINC"

context Patient

// Conditions
//
define "Has CKD or Diabetes":
  "Has CKD" or "Has Diabetes"

define "Has CKD":
  exists( "Chronic Kidney Disease Dx" )

define "No CKD Dx":
  not exists( "Chronic Kidney Disease Dx" )

define "Has Diabetes":
  exists( "Diabetes Dx" )

define "CKD or Diabetes Dx":
  "Chronic Kidney Disease Dx" union "Diabetes Dx"

define "Chronic Kidney Disease Dx":
  [Condition: code in "Chronic Kidney Disease"] condition
    where condition.clinicalStatus.value in { 'active', 'recurrence' }

define "Diabetes Dx":
  [Condition: code in "Diabetes mellitus"] condition
    where condition.clinicalStatus.value in { 'active', 'recurrence' }

// Laboratory observations
//
define "Has eGFR or UACR Lab":
  "Last eGFR Lab Result" is not null
	or "Last UACR Lab Result" is not null

define "Last eGFR Lab Result":
  Last( [Observation: code in "eGFR Labs"] )

define "Last eGFR Quantity":
  "Last eGFR Lab Result" Result
    return ToQuantity(Result.value as Quantity)

define "Has Abnormal eGFR":
  "Last eGFR Quantity".value < 60

define "Last UACR Lab Result":
  Last( [Observation: code in "UACR Labs"] )

define "Last UACR Quantity":
  "Last UACR Lab Result" Result
    return ToQuantity(Result.value as Quantity)

define "Has Abnormal UACR":
  "Last UACR Quantity" uacr
    return UACRtoMetric(uacr).value > 30

define "Last Creatinine Lab Result":
  Last( [Observation: code in "Creatinine Labs"] )

define "Last Creatinine Quantity":
  "Last Creatinine Lab Result" Result
    return ToQuantity(Result.value as Quantity)

define "Needs eGFR Lab":
	"eGFR Lab is Overdue"
		or ("eGFR Lab Frequency" is not null and "Last eGFR Lab Result" is null)

define "eGFR Lab Frequency":
	case
		when "CKD Stage" >= 4
			then 3 months
		when "CKD Stage" >= 3
			then 6 months
		when "Has CKD or Diabetes"
			then 12 months
		else null
	end

define "eGFR Lab is Overdue":
  "Last eGFR Lab Result" Result
    return
      case
        when Result.effective is null
          then true
        when Result.effective is dateTime
          then (Result.effective.value + "eGFR Lab Frequency") < Today()
        when Result.effective is Period
          then (end of PeriodToInterval(Result.effective) + "eGFR Lab Frequency") < Today()
        else false
      end

define NeedsGFRSummary: 'Order Renal Lab Panel'

define NeedsGFRDetail:
	case
		when "CKD Stage" >= 1
			then 'eGFR lab recommended every ' + ToString("eGFR Lab Frequency") + ' for Stage ' + ToString("CKD Stage") + ' CKD.'
		when "Has CKD or Diabetes"
			then 'eGFR lab recommended every ' + ToString("eGFR Lab Frequency") + ' for CKD or Diabetes.'
		else null
	end

define NeedsGFRSeverity: 'info'

define "CKD Stage":
  "Last eGFR Quantity" egfr
  	return case
      when egfr.value < 15
    		then 5
    	when egfr.value < 30
    		then 4
    	when egfr.value < 60
    		then 3
    	when egfr.value < 90
    		then 2
    	when egfr.value >= 90
        // TODO this does not parse
        //case  when UACRtoMetric("Get UACR Quantity").value > 20
  		  //  then 1
        //else 0
        //end
        then 0
      else 0
  	end

// Referrals
//
define "Recommend Nephrology Referral":
	"5-Year Risk Level" = 'High'

define NephrologyReferralDetail: 'Referral to a nephrologist is recommended when 5-year risk is High'

define NephrologyReferralSeverity: 'info'

//
// Tangri CKD risk model
//
// 4 variable
// 1 – 0.9750 ^ exp (-0.2201 × (age/10 – 7.036) + 0.2467 × (male – 0.5642) – 0.5567 × (eGFR/5 – 7.222) + 0.4510 × (logACR – 5.137))
// 5 year factor =  0.9240
//
// 8 variable
// 1 – 0.9780 ^ exp (-0.1992 × (age/10 – 7.036) + 0.1602 × (male – 0.5642) – 0.4919 × (eGFR/5 – 7.222) + 0.3364 × (logACR – 5.137)
//		– 0.3441 × (albumin – 3.997) + 0.2604 × (phosphorous – 3.916) – 0.07354 × (bicarbonate – 25.57) – 0.2228 × (calcium – 9.355))
// 5 year factor = 0.9301

define "2-YearRiskDetail":
	'2-year kidney failure risk of ' + ToString("2-Year CKD Risk Percent") + '% is considered to be ' + "2-Year Risk Level" + ' risk.'

define "5-YearRiskDetail":
	'5-year kidney failure risk of ' + ToString("5-Year CKD Risk Percent") + '% is considered to be ' + "5-Year Risk Level" + ' risk.'

define "2-YearRiskSeverity": if "2-Year Risk Level" = 'High' then 'warning' else 'info'

define "5-YearRiskSeverity": if "5-Year Risk Level" = 'High' then 'warning' else 'info'

define "2-Year CKD Risk Percent":
  "2-Year CKD Risk" risk
    return Round(risk * 100, 2)

define "5-Year CKD Risk Percent":
  "5-Year CKD Risk" risk
    return Round(risk * 100, 2)

define "2-Year CKD Risk":
  "Last eGFR Quantity" egfr
    return calculateCkdRisk(0.9750, 0, AgeInYears(), egfr, UACRtoMetric("Last UACR Quantity"))

define "5-Year CKD Risk":
  "Last eGFR Quantity" egfr
    return calculateCkdRisk(0.9240, 0, AgeInYears(), egfr, UACRtoMetric("Last UACR Quantity"))

// The ckdFactor is a variable determined by (Non-) North American location and whether calculation is 2 or 5 year prediction
define function calculateCkdRisk(ckdFactor Decimal, sex Integer, age Integer, egfr System.Quantity, acr System.Quantity):
  1.0 - Power(ckdFactor, Exp(-0.2201 * (age / 10 - 7.036) + 0.2467 * (sex - 0.5642) - 0.5567 * (egfr.value / 5 - 7.222) + 0.4510 * (Ln(acr.value) - 5.137)))

define "2-Year Risk Level":
  "2-Year CKD Risk Percent" riskPercent
  	return case
      when riskPercent < 5
    		then 'Low'
    	when riskPercent < 15
    		then 'Intermediate'
    	when riskPercent > 15
    		then 'High'
      else null
  	end

define "5-Year Risk Level":
  "5-Year CKD Risk Percent" riskPercent
  	return case
      when riskPercent < 5
    		then 'Low'
    	when riskPercent < 15
    		then 'Intermediate'
    	when riskPercent > 15
    		then 'High'
      else null
  	end

// Conversion functions

define function PeriodToInterval(value FHIR.Period):
	Interval[value."start".value, value."end".value]

define function CodingToCode(coding FHIR.Coding):
	System.Code {
		code: coding.code.value,
		system: coding.system.value,
		version: coding.version.value,
		display: coding.display.value
	}

define function ToConcept(concept FHIR.CodeableConcept):
    System.Concept {
        codes: concept.coding C return CodingToCode(C),
        display: concept.text.value
    }

define function ToQuantity(quantity FHIR.Quantity):
    System.Quantity {
        value: quantity.value.value,
        unit: quantity.unit.value
    }

define function UACRtoMetric(qty System.Quantity):
	case when qty.unit = 'mg/mmol creatinine' then
		System.Quantity { value: qty.value * 8.84, unit: 'mg/g' }
	when qty.unit = 'mg/g' then
    qty
	else
    // unknown units, ignore this quantity in calculation
		null
	end

define function ToMetric(qty System.Quantity):
	case when qty.unit = 'lb' then
		System.Quantity { value: qty.value * 0.454, unit: 'kg' }
	when qty.unit = 'in' then
		System.Quantity { value: qty.value * 0.0254, unit: 'm' }
	else
		qty
	end
