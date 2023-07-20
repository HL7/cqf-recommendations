Profile: CPGCarePlan
Parent: CarePlan
Id: cpg-careplan
Title: "CPG Care Plan"
Description: "CPG care plan represents the care plan for a specific patient. The care plan may be associated with management of a specific condition, and instantiated based on a particular pathway or strategy, or it may be a combined care plan, focused on the patient, and managing treatment for multiple conditions, instantiated based on multiple pathways and strategies"
* insert StructureDefinitionMetadata(cpg-careplan)
* extension contains $cpg-planFor named planFor 0..* MS
* identifier MS
* instantiatesCanonical MS
* status MS
* intent MS
* category 1..* MS
* title 1..1 MS
* description MS
* subject only Reference(CPGPatient)
* subject MS
* encounter only Reference(CPGEncounter)
* encounter MS
* period MS
* created MS
* careTeam only Reference(CPGCareTeam)
* careTeam MS
* addresses only Reference(CPGCondition)
* addresses MS
* goal MS
* activity MS
  * outcomeReference MS
  * reference only Reference(Appointment or CPGCommunicationRequest or CPGMedicationRequest or CPGTask or CPGServiceRequest or CPGStrategy)
* activity
  * reference MS
  * detail MS
    * kind 1..1 MS
    * instantiatesCanonical MS
    * code 1..1 MS
    * reasonCode MS
    * status MS
    * doNotPerform MS
    * scheduled[x] only Timing or Period
    * scheduled[x] MS
    * location only Reference($cpg-location)
    * location MS
    * performer only Reference(CPGPractitioner or CPGPractitionerRole or CPGOrganization or CPGRelatedPerson or CPGPatient or CPGCareTeam)
    * performer MS
    * description 1..1 MS