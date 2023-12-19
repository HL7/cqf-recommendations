Instance: dispensemedication-library
InstanceOf: Library
Usage: #example
* title = "Dispense Medication Library"
* insert ExampleLibraryMetadata(dispensemedication-library)
* insert RelatedFHIRLibraries
* description = "Logic for an example recommendation to dispense a medication"
* name = "DispenseMedicationLibrary"
* type = $library-type#logic-library
* relatedArtifact[+]
  * type = #depends-on
  * resource = $cpg-activity-type-cs
* parameter[+]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #"Medication Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationRequest
* parameter[+]
  * name = #"Medication Not Proposed"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationRequest
* parameter[+]
  * name = #"Inclusion Criteria"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Active or Completed Medication Dispense"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationDispense
* parameter[+]
  * name = #"Medication Dispense Not Done"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationDispense
* parameter[+]
  * name = #"Dispense Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Dispense Proposal Rejected"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Is Recommendation Applicable"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* dataRequirement[+]
  * type = #MedicationRequest
  * profile = Canonical(MedicationRequest)
* dataRequirement[+]
  * type = #MedicationRequest
  * profile = Canonical(MedicationRequest)
* dataRequirement[+]
  * type = #MedicationDispense
  * profile = Canonical(MedicationDispense)
* dataRequirement[+]
  * type = #MedicationDispense
  * profile = Canonical(MedicationDispense)
* dataRequirement[+]
  * type = #Task
  * profile = Canonical(Task)
* dataRequirement[+]
  * type = #Task
  * profile = Canonical(Task)
* content
  * id = "ig-loader-DispenseMedication.cql"