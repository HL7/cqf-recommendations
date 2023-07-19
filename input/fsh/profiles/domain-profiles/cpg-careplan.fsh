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
* subject only Reference($cpg-patient)
* subject MS
* encounter only Reference($cpg-encounter)
* encounter MS
* period MS
* created MS
* careTeam only Reference($cpg-careteam)
* careTeam MS
* addresses only Reference($cpg-condition)
* addresses MS
* goal MS
* activity MS
  * outcomeReference MS
//  * reference only Reference(Appointment or $cpg-communicationrequest or $cpg-medicationrequest or $cpg-task or $cpg-servicerequest or $cpg-strategy)
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
    * performer only Reference($cpg-practitioner or $cpg-practitionerrole or $cpg-organization or $cpg-relatedperson or $cpg-patient or $cpg-careteam)
    * performer MS
    * description 1..1 MS