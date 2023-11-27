Profile: CHFLASIXPORequest
Parent: CPGMedicationRequest
Id: chf-lasix-po-request
Title: "CHF LASIX PO Request"
Description: "Request to administer LASIX PO as part of a congestive heart failure pathway"
* insert CaseFeatureMetadata(chf-lasix-po-request)
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-hypervolemia)
* insert CaseFeatureOfExtension(chf-lasix)
* medication[x] MS