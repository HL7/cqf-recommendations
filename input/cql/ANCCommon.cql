library ANCCommon version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

codesystem OpenMRSEntity: 'httcp://openmrs.org/concepts'

valueset "Active Condition": 'http://hl7.org/fhir/uv/cpg/ValueSet/cpg-active-condition-vs'

code LMP: '1427AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' from OpenMRSEntity display 'Date of last menstrual period'
code UltrasoundGA: '165220AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' from OpenMRSEntity display 'Gestational age in weeks from ultrasound'
code FundalHeight: '1439AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' from OpenMRSEntity display 'FUNDAL HEIGHT'
code "Weeks of gestational age": '1438AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' from OpenMRSEntity display 'Weeks of gestational age'

context Patient

//define GestationalAgeFromLMP:
  // Calculate from LMP if known
  // Observation from Ultrasound
  // Observation from SFH or abdominal palpitation
  // If Gestational Age and Estimated Due Date are calculated from different values, health worker should select gestational age

define "Gestational Age in Weeks":
  First(
    ["Observation": "Weeks of gestational age"] O
		  where O.status in { 'final', 'amended' }
      sort by FHIRHelpers.ToDateTime(effective as FHIR.dateTime) descending
  ).value as Quantity

define "Up to 12 Weeks":
  "Gestational Age in Weeks" <= 12

define "20 weeks gestation":
  "Gestational Age in Weeks" = 20

define "26 weeks gestation":
	"Gestational Age in Weeks" = 26

define "30 weeks gestation":
	"Gestational Age in Weeks" = 30

define "34 weeks gestation":
	"Gestational Age in Weeks" = 34

define "36 weeks gestation":
	"Gestational Age in Weeks" = 36

define "38 weeks gestation":
	"Gestational Age in Weeks" = 38

define "40 weeks gestation":
	"Gestational Age in Weeks" = 40