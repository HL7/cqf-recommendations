library OpioidCQM_STU3 version '0.1.0'

using FHIR version '3.0.0'

include OMTKData version '0.0.0' called OMTKData
include OMTKLogic version '0.0.1' called OMTKLogic

parameter "Measurement Period" Interval<DateTime>

context Patient

/*
  Opioid Management Quality Measure
  All patients with an MME > 90 mg during the measurement period
  The measure uses dispense data
*/

define Prescriptions:
  [MedicationDispense] O
    let
      // NOTE: Assuming medication is specified as a CodeableConcept with a single RxNorm code
      rxNormCode: ToCode(O.medication.coding[0]),
      medicationName: OMTKLogic.GetMedicationName(rxNormCode),
      // NOTE: Assuming a single dosage instruction element
      dosageInstruction: O.dosageInstruction[0],
      repeat: dosageInstruction.timing.repeat,
      frequency: Coalesce(repeat.frequencyMax.value, repeat.frequency.value),
      period: System.Quantity { value: repeat.period.value, unit: repeat.periodUnit.value },
      periodDescription:
        ToString(repeat.period.value) +
          Coalesce(
            '-' + ToString(repeat.periodMax.value),
            ''
          ) + repeat.periodUnit.value,
      doseDescription: 
        Coalesce(
          // There should be a conversion from FHIR.SimpleQuantity to System.Quantity
          ToString(ToQuantity(dosageInstruction.dose)),
          ToString(ToQuantity(dosageInstruction.dose.low))
            + '-' + ToString(ToQuantity(dosageInstruction.dose.high))
            + dosageInstruction.dose.high.unit.value
        ),
      frequencyDescription:
        ToString(dosageInstruction.timing.repeat.frequency.value) +
          Coalesce(
            '-' + ToString(dosageInstruction.timing.repeat.frequencyMax.value),
            ''
          ),
      effectivePeriod: Interval[O.whenHandedOver.value, O.whenHandedOver.value + System.Quantity { value: O.daysSupply.value.value, unit: 'd' }]
    where O.status.value = 'completed'
      and effectivePeriod overlaps "Measurement Period"
      //and O.whenHandedOver during "Measurement Period"
    return {
      rxNormCode: rxNormCode,
      effectivePeriod: Interval[Max({ start of effectivePeriod, start of "Measurement Period" }), 
        Min({ end of effectivePeriod, end of "Measurement Period" })],
      whenHandedOver: O.whenHandedOver.value,
      daysSupply: O.daysSupply.value,
      // NOTE: Assuming asNeeded is expressed as a boolean
      isPRN: dosageInstruction.asNeeded.value,
      prescription:
        if dosageInstruction.text is not null then
          medicationName + ' ' + dosageInstruction.text.value
        else
          // TODO: Shouldn't need the .value here on asNeededBoolean
          medicationName + ' ' + doseDescription + ' q' + frequencyDescription + (if dosageInstruction.asNeeded.value then ' PRN' else ''),
      // TODO: Shouldn't need the ToQuantity here...
      dose: ToQuantity(Coalesce(dosageInstruction.dose, dosageInstruction.dose.high)),
      dosesPerDay: Coalesce(OMTKLogic.ToDaily(frequency, period), 1.0)
    }

// Prescriptions during the measurement period together with the MME for that prescription
define PrescriptionsWithMME:
  Prescriptions P
    let mme: SingletonFrom(OMTKLogic.CalculateMMEs({ { rxNormCode: P.rxNormCode, doseQuantity: P.dose, dosesPerDay: P.dosesPerDay } }))
    return {
      rxNormCode: P.rxNormCode,
      whenHandedOver: P.whenHandedOver,
      daysSupply: P.daysSupply,
      effectivePeriod: P.effectivePeriod,
      isPRN: P.isPRN,
      prescription: P.prescription,
      dailyDose: mme.dailyDoseDescription,
      conversionFactor: mme.conversionFactor,
      mme: mme.mme
    }
    
// A very simple approach would be to compute the average mme for each RxNormCode and then
// return the sum of the average mmes. This wouldn't always be accurate (it would produce
// false positives), but it wouldn't miss any true positives.

/*
define PrescriptionRanges:
  PrescriptionsWithMME P
    return {
      rxNormCode: P.rxNormCode,
      firstPrescription: First(PrescriptionsWithMME F1 sort by whenHandedOver),
      lastPrescrpition: Last(PrescriptionsWithMME L1 sort by whenHandedOver)
    }
    
define AverageEquivalents:
  PrescriptionRanges R
    return {
      rxNormCode: R.rxNormCode,
      effectivePeriod: Interval[R.firstPrescription.whenHandedOver, R.lastPrescription.whenHandedOver + R.lastPrescription.daysSupply],
      averageMme: firstPrescription.mme + lastPrescription.mme / 2
    }
*/

// A more accurate, but calculation-intensive approach would be to calculate the
// mme for every prescription for every day, sum the values by day, and then
// collapse the days back to the covering intervals.

// This approach would give you a much more accurate result, but it is based on the 
// assumption that the prescription period (and dosing during it) is
// accurate.

define PrescriptionPeriods:
  PrescriptionsWithMME P
    return {
      rxNormCode: P.rxNormCode,
      periods: collapse ( PrescriptionsWithMME R where R.rxNormCode = P.rxNormCode return R.effectivePeriod ),
      mme: P.mme
    }

// { rxNormCode, periods, mme }

define PrescriptionDays:
  PrescriptionPeriods R
    return {
      rxNormCode: R.rxNormCode,
      ds: flatten (R.periods I return OMTKData.DaysInPeriod(I)), // DaysInPeriod returns a list of Dates in the interval
      mme: R.mme
    }

// { rxNormCode, ds, mme }
  
define MMEDays:
  flatten (
    PrescriptionDays R
      return all (R.ds D return { rxNormCode: R.rxNormCode, d: D, mme: R.mme })
  )
  
// { rxNormCode, d, mme }

define MMESum:
  MMEDays D
    return { d: D.d, totalMME: Sum(MMEDays X where X.d = D.d return all X.mme) }
    
// { d, mme }

define MMEPeriods:
  MMESum S
    return { periods: collapse (MMESum X where X.totalMME = S.totalMME return Interval[X.d, X.d]), mme: S.totalMME  }
    
// { periods, mme }

/*
Returns the intervals during which the patient had opioid or opioid-containing
prescriptions, and the daily mme during that interval.
*/

define MMEIntervals:
  flatten (
    MMEPeriods S
      return all S.periods P return { period: P,  mme: S.mme }
  )

// NOTE: These functions have been moved here from the FHIRHelpers STU3 library to boost performance
define function ToCode(coding FHIR.Coding):
    System.Code {
      code: coding.code.value,
      system: coding.system.value,
      version: coding.version.value,
      display: coding.display.value
    }

define function ToQuantity(quantity FHIR.Quantity):
    System.Quantity { value: quantity.value.value, unit: quantity.unit.value }

