library ANCRecommendationA2 version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include ANCCommon version '0.1.0' called Common

code "Hb": '165395AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' from Common.OpenMRSEntity display 'Haemoglobin measured from haemoglobinometer (g/dl)'
code "Iron Intake Compliance": '165272AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' from Common.OpenMRSEntity display 'Iron intake compliance'
code "Iron Side Effects": '165273AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' from Common.OpenMRSEntity display 'Iron side effects' // NOTE: OpenMRS concept is just side effects from medication

// TODO: How do parameters like this get configured for local/site usage
//parameter "Anaemia Prevalence" System.Quantity default 40 '%'

context Patient

// TODO: Configuring in-line directly for now
define "Anaemia Prevalence": 40 '%'

/*
IAF - Iron and Folic Acid Supplements

RECOMMENDATION A.2.1: Daily oral iron and folic acid supplementation with 30 mg to
60 mg of elemental iron and 400 μg (0.4 mg) folic acid is recommended for pregnant
women to prevent maternal anaemia, puerperal sepsis, low birth weight, and preterm birth.
(Recommended)

RECOMMENDATION A.2.2: Intermittent oral iron and folic acid supplementation with 120 mg
of elemental iron and 2800 μg (2.8 mg) of folic acid once weekly is recommended for pregnant
women to improve maternal and neonatal outcomes if daily iron is not acceptable due to sideeffects,
and in populations with an anaemia prevalence among pregnant women of less than
20%. (Context-specific recommendation)

On every contact,
  if anaemia detected
    recommend 120 mg of elemental iron daily (Recommendation A.2.1)
  else if population anaemia prevalence >= 40%
    recommend 60 mg of elemental iron and 400 ug of folic acid, daily (Recommendation A.2.1)
  else if population anaemia prevalence < 20% or daily iron not acceptable due to side-effects
    recommend intermittent oral iron: 120 mg of oral iron, and 2.8 ug of folic acid, weekly (Recommendation A.2.2)
  else
    recommend 30 to 60 mg of elemental iron and 400 ug of folic acid, daily (Recommendation A.2.1)
  check iron-intake compliance;
  check iron-side effects;

Has Anaemia
  Hb Concentration < 11 g/dL and Gestational Age < 12 weeks or Gestational Age > 28 weeks
  Hb Concentration < 10.5 g/dL and Gestational Age between 13 weeks and 27 weeks
*/

define "Has Anaemia":
  if Common."Gestational Age in Weeks" between 13 weeks and 27 weeks then
    "Hb Concentration" < 10.5 'g/dL'
  else
    "Hb Concentration" < 11 'g/dL'

define "Hb Concentration":
  First(
    ["Observation": "Hb"] O
		  where O.status = 'final'
			  and O.effective after Common."Start of Current Pregnancy"
      sort by FHIRHelpers.ToDateTime(effective as FHIR.dateTime) descending
  ).value as Quantity

define "Has Iron Side-Effects":
  exists (
    ["Condition": "Iron Side Effects"] C
		  where C.onset on or after Common."Start of Current Pregnancy"
			  and C.clinicalStatus in Common."Active Condition"
  )
