Instance: cpg-common-patient-summary
InstanceOf: OperationDefinition
Usage: #definition
Title: "CPG Common Patient Summary"
Description: "The summary operation generates a patient summary for a patient"
* insert OperationDefinitionMetadata(cpg-common-patient-summary)
* insert OperationExtensions
* name = "CPGCommonPatientSummary"
* code = #summary
* comment = "The result of this operation is a patient summary document, constructed according to agreed conventions such as the International Patient Summary."
* resource = #Patient
* system = false
* type = false
* instance = true
* parameter
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "The document Bundle that is the current patient summary document"
  * type = #Bundle