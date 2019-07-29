library ANCCommon version '0.0.0'

using FHIR version '4.0.0'

include FHIRHelpers version '4.0.0'

codesystem OpenMRSEntity: 'http://openmrs.org/concepts'

valueset "Active Condition": 'http://hl7.org/fhir/uv/cpg/ValueSet/cpg-active-condition'

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
  
	