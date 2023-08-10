Instance: ordermedication-library
InstanceOf: Library
Usage: #example
Title: "Order Medication Library"
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(ordermedication-library, Library)
* insert RelatedFHIRLibraries
* description = "Logic for an example recommendation to order a medication"
* name = "OrderMedication"
* type = $library-type#logic-library
* parameter[+]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #"Inclusion Criteria"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Active or Completed Medication Administration"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationAdministration
* parameter[+]
  * name = #"Medication Administration Not Done"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationAdministration
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
  * name = #"Is Recommendation Applicable"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* dataRequirement[+]
  * type = #MedicationAdministration
  * profile = Canonical(MedicationAdministration)
* dataRequirement[+]
  * type = #MedicationAdministration
  * profile = Canonical(MedicationAdministration)
* dataRequirement[+]
  * type = #MedicationDispense
  * profile = Canonical(MedicationDispense)
* dataRequirement[+]
  * type = #MedicationDispense
  * profile = Canonical(MedicationDispense)
* dataRequirement[+]
  * type = #MedicationRequest
  * profile = Canonical(MedicationRequest)
* dataRequirement[+]
  * type = #MedicationRequest
  * profile = Canonical(MedicationRequest)
* content
  * id = "ig-loader-OrderMedication.cql"