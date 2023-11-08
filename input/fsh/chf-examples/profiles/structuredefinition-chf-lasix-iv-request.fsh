Profile: CHFLASIXIVRequest
Parent: CPGMedicationRequest
Id: chf-lasix-iv-request
Title: "CHF LASIX IV Request"
Description: "Request to administer LASIX IV as part of a congestive heart failure pathway"
* insert CaseFeatureOfExtension(chf-pathway)
* insert CaseFeatureOfExtension(chf-hypervolemia)
* insert CaseFeatureOfExtension(chf-lasix)
* insert CaseFeatureMetadata(chf-lasix-iv-request)
* medication[x] MS