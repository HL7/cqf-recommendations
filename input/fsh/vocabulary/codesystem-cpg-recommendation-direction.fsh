CodeSystem: CPG_Recommendation_Direction
Id: cpg-recommendation-direction
Title: "CPG Recommendation Direction Codes"
Description: "The direction of a recommendation, either for or against a particular action, taking into account the balance between desirable and undersirable outcomes; the confidence in the magnitude of estimates of effect; the confidence in values and preferences and their variability; and resource use."
* insert CodeSystemMetadata(cpg-recommendation-direction, CodeSystem)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/codesystem-sourceReference"
* ^extension[=].valueUri = "https://www.ncbi.nlm.nih.gov/pubmed/23570745"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/codesystem-sourceReference"
* ^extension[=].valueUri = "https://gdt.gradepro.org/app/handbook/handbook.html#h.1yd7iwhn8pxp"
* #for "For" "The recommendation is for a particular action, taking into account the balance between desirable and undersirable outcomes; the confidence in the magnitude of estimates of effect; the confidence in values and preferences and their variability; and resource use."
* #against "Against" "The recommendation is against a particular action, taking into account the balance between desirable and undersirable outcomes; the confidence in the magnitude of estimates of effect; the confidence in values and preferences and their variability; and resource use."